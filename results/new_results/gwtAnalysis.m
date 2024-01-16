clc
clear

%% Load data

Sim303 = load("graph_data\303_graph_SimWindowWeighted.mat").Graphs_W;
Spar303 = load("graph_data\303_graph_SparWindowWeighted.mat").Graphs_W;
Pear303 = load("graph_data\303_graph_PearWindowWeighted.mat").Graphs_W;
Smooth303 = load("graph_data\303_graph_SmoothWindowWeighted.mat").Graphs_W;

Data303 = load("combined_data\303_data_combined.mat").data;
Data303 = Data303';

%% Add dependencies

addpath('D:\SGWT\sgwt_toolbox-1.02\sgwt_toolbox\')
addpath('D:\SGWT\sgwt_toolbox-1.02\sgwt_toolbox\utils')
addpath('D:\SGWT\sgwt_toolbox-1.02\sgwt_toolbox\demo')
addpath('D:\SGWT\sgwt_toolbox-1.02\sgwt_toolbox\mex')

%% Define parameters

S = size(Sim303);
N = S(1);
T = S(3);
T_window = 8;

m = 50; % Order of polynomial approximation
Nscales = 4; % Number of scales for wavelets

designtype='abspline3'; % OR 'mexican_hat' OR 'meyer' OR 'simple_tf'

%% Iterate over time

w_lp = zeros(26,1);
w_1 = zeros(26,1);
w_2 = zeros(26,1);
w_3 = zeros(26,1);
w_4 = zeros(26,1);

for i = 1:T
    
    W = Sim303(:,:,i);
    L = diag(sum(W,1)) - W;

    %%%%%%%%%%%%%%%%%%%%%%%%% Design filters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    lmax=sgwt_rough_lmax(L); % Find largest eigenvalue and increase it by 1% to keep it robust

    [g,t] = sgwt_filter_design(lmax,Nscales,'designtype',designtype);

    arange=[0 lmax];

    %%%%%%%%%%%%%%%%%%%%% Chebyshev approximation %%%%%%%%%%%%%%%%%%%%%%%%%

    for k=1:numel(g)
        c{k}=sgwt_cheby_coeff(g{k},m,m+1,arange);
    end

    %%%%%%%%%%%%%%%%%%% Apply forward transform %%%%%%%%%%%%%%%%%%%%%%%%%%%

    wpall = sgwt_cheby_op(Data303(:,i-1+round(T_window/2)),L,c,arange);
    w_lp = w_lp + wpall{1};
    w_1 = w_1 + wpall{2};
    w_2 = w_2 + wpall{3};
    w_3 = w_3 + wpall{4};
    w_4 = w_4 + wpall{5};

end

figure()
subplot(5,1,1)
plot(w_lp,'red',LineWidth=2.0)
title('Lowpass')
subplot(5,1,2)
plot(w_1,'red',LineWidth=2.0)
title('Scale 1')
subplot(5,1,3)
plot(w_2,'red',LineWidth=2.0)
title('Scale 2')
subplot(5,1,4)
plot(w_3,'red',LineWidth=2.0)
title('Scale 3')
subplot(5,1,5)
plot(w_4,'red',LineWidth=2.0)
title('Scale 4')

%% 3D and Image

W = [w_lp';w_1';w_2';w_3';w_4'];

figure()
image(abs(W))
colorbar

scales = 0:Nscales;
nodes = 1:N;

figure()
surf(W)
xlabel('nodes')
ylabel('scales')
zlabel('Coeff')
colorbar