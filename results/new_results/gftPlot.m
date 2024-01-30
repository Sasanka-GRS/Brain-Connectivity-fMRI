clc
clear

%% Load data

% Layout
Layout = load('nodeLayout.mat').locs;

% Labels
Labels = load('nodeLabels.mat').numbers;

% Graphs to be plotted
Graph303Sim = load('..\..\graph_learning\graph_data\303_graph_SimWindowWeighted.mat').Graphs_W;
Graph303Spar = load('..\..\graph_learning\graph_data\303_graph_SparWindowWeighted.mat').Graphs_W;
Graph303Pear = load('..\..\graph_learning\graph_data\303_graph_PearWindowWeighted.mat').Graphs_W;
Graph303Smooth = load('..\..\graph_learning\graph_data\303_graph_SmoothWindowWeighted.mat').Graphs_W;

% The graph signal to be plotted
gft303 = load('./gft/303_GFTFiltered.mat');

% The 3 bands of interest
Sim303 = gft303.Sim;
Spar303 = gft303.Spar;
Pear303 = gft303.Pear;
Smooth303 = gft303.Smooth;

LPFSim = Sim303.LPF;
BPFSim = Sim303.BPF;
HPFSim = Sim303.HPF;

LPFSpar = Spar303.LPF;
BPFSpar = Spar303.BPF;
HPFSpar = Spar303.HPF;

LPFPear = Pear303.LPF;
BPFPear = Pear303.BPF;
HPFPear = Pear303.HPF;

LPFSmooth = Smooth303.LPF;
BPFSmooth = Smooth303.BPF;
HPFSmooth = Smooth303.HPF;

% Size parameters
S = size(LPFSim);
N = S(1);
T = S(2);

% Indices for empathy high and low
idxLow = 73;
idxHigh = 242;

% Window size
Num = 8;

%% Thesholding

% Similarity
A = Graph303Sim(:,:,idxLow);
[W,topSimLow] = thres1(A,N,3);
W = normAdj(W);

W_SimLow = W;

A = Graph303Sim(:,:,idxHigh);
[W,topSimHigh] = thres1(A,N,3);
W = normAdj(W);

W_SimHigh = W;

% Sparsity
A = Graph303Spar(:,:,idxLow);
[W,topSparLow] = thres1(A,N,3);
W = normAdj(W);

W_SparLow = W;

A = Graph303Spar(:,:,idxHigh);
[W,topSparHigh] = thres1(A,N,3);
W = normAdj(W);

W_SparHigh = W;

% Pearson
A = Graph303Pear(:,:,idxLow);
[W,topPearLow] = thres1(A,N,3);
W = normAdj(W);

W_PearLow = W;

A = Graph303Pear(:,:,idxHigh);
[W,topPearHigh] = thres1(A,N,3);
W = normAdj(W);

W_PearHigh = W;

% Smoothness
A = Graph303Smooth(:,:,idxLow);
[W,topSmoothLow] = thres1(A,N,3);
W = normAdj(W);

W_SmoothLow = W;

A = Graph303Smooth(:,:,idxHigh);
[W,topSmoothHigh] = thres1(A,N,3);
W = normAdj(W);

W_SmoothHigh = W;

%% Extracting signal

% Similarity
LPFSimLow = LPFSim(:,idxLow+floor(Num/2));
BPFSimLow = BPFSim(:,idxLow+floor(Num/2));
HPFSimLow = HPFSim(:,idxLow+floor(Num/2));
LPFSimHigh = LPFSim(:,idxHigh+floor(Num/2));
BPFSimHigh = BPFSim(:,idxHigh+floor(Num/2));
HPFSimHigh = HPFSim(:,idxHigh+floor(Num/2));

% Sparsity
LPFSparLow = LPFSpar(:,idxLow+floor(Num/2));
BPFSparLow = BPFSpar(:,idxLow+floor(Num/2));
HPFSparLow = HPFSpar(:,idxLow+floor(Num/2));
LPFSparHigh = LPFSpar(:,idxHigh+floor(Num/2));
BPFSparHigh = BPFSpar(:,idxHigh+floor(Num/2));
HPFSparHigh = HPFSpar(:,idxHigh+floor(Num/2));

% Pearson
LPFPearLow = LPFPear(:,idxLow+floor(Num/2));
BPFPearLow = BPFPear(:,idxLow+floor(Num/2));
HPFPearLow = HPFPear(:,idxLow+floor(Num/2));
LPFPearHigh = LPFPear(:,idxHigh+floor(Num/2));
BPFPearHigh = BPFPear(:,idxHigh+floor(Num/2));
HPFPearHigh = HPFPear(:,idxHigh+floor(Num/2));

% Smoothness
LPFSmoothLow = LPFSmooth(:,idxLow+floor(Num/2));
BPFSmoothLow = BPFSmooth(:,idxLow+floor(Num/2));
HPFSmoothLow = HPFSmooth(:,idxLow+floor(Num/2));
LPFSmoothHigh = LPFSmooth(:,idxHigh+floor(Num/2));
BPFSmoothHigh = BPFSmooth(:,idxHigh+floor(Num/2));
HPFSmoothHigh = HPFSmooth(:,idxHigh+floor(Num/2));

%% Plotting

figure()
subplot(4,3,1)
plotting_signal(Layout,W_SimLow,topSimLow,Labels,LPFSimLow);
title('Similarity LPF')
subplot(4,3,2)
plotting_signal(Layout,W_SimLow,topSimLow,Labels,BPFSimLow);
title('Similarity BPF')
subplot(4,3,3)
plotting_signal(Layout,W_SimLow,topSimLow,Labels,HPFSimLow);
title('Similarity HPF')
subplot(4,3,4)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,LPFSparLow);
title('Sparsity LPF')
subplot(4,3,5)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,BPFSparLow);
title('Sparsity BPF')
subplot(4,3,6)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,HPFSparLow);
title('Sparsity HPF')
subplot(4,3,7)
plotting_signal(Layout,W_PearLow,topPearLow,Labels,LPFPearLow);
title('Pearson LPF')
subplot(4,3,8)
plotting_signal(Layout,W_PearLow,topPearLow,Labels,BPFPearLow);
title('Pearson BPF')
subplot(4,3,9)
plotting_signal(Layout,W_PearLow,topPearLow,Labels,HPFPearLow);
title('Pearson HPF')
subplot(4,3,10)
plotting_signal(Layout,W_SmoothLow,topSmoothLow,Labels,LPFSmoothLow);
title('Smoothness LPF')
subplot(4,3,11)
plotting_signal(Layout,W_SmoothLow,topSmoothLow,Labels,BPFSmoothLow);
title('Smoothness BPF')
subplot(4,3,12)
plotting_signal(Layout,W_SmoothLow,topSmoothLow,Labels,HPFSmoothLow);
title('Smoothness HPF')
sgtitle('Empathy Low')

figure()
subplot(4,3,1)
plotting_signal(Layout,W_SimHigh,topSimHigh,Labels,LPFSimHigh);
title('Similarity LPF')
subplot(4,3,2)
plotting_signal(Layout,W_SimHigh,topSimHigh,Labels,BPFSimHigh);
title('Similarity BPF')
subplot(4,3,3)
plotting_signal(Layout,W_SimHigh,topSimHigh,Labels,HPFSimHigh);
title('Similarity HPF')
subplot(4,3,4)
plotting_signal(Layout,W_SparHigh,topSparHigh,Labels,LPFSparHigh);
title('Sparsity LPF')
subplot(4,3,5)
plotting_signal(Layout,W_SparHigh,topSparHigh,Labels,BPFSparHigh);
title('Sparsity BPF')
subplot(4,3,6)
plotting_signal(Layout,W_SparHigh,topSparHigh,Labels,HPFSparHigh);
title('Sparsity HPF')
subplot(4,3,7)
plotting_signal(Layout,W_PearHigh,topPearHigh,Labels,LPFPearHigh);
title('Pearson LPF')
subplot(4,3,8)
plotting_signal(Layout,W_PearHigh,topPearHigh,Labels,BPFPearHigh);
title('Pearson BPF')
subplot(4,3,9)
plotting_signal(Layout,W_PearHigh,topPearHigh,Labels,HPFPearHigh);
title('Pearson HPF')
subplot(4,3,10)
plotting_signal(Layout,W_SmoothHigh,topSmoothHigh,Labels,LPFSmoothHigh);
title('Smoothness LPF')
subplot(4,3,11)
plotting_signal(Layout,W_SmoothHigh,topSmoothHigh,Labels,BPFSmoothHigh);
title('Smoothness BPF')
subplot(4,3,12)
plotting_signal(Layout,W_SmoothHigh,topSmoothHigh,Labels,HPFSmoothHigh);
title('Smoothness HPF')
sgtitle('Empathy High')

figure()
subplot(2,3,1)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,LPFSparLow);
title('LPF Empathy Low')
subplot(2,3,2)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,BPFSparLow);
title('BPF Empathy Low')
subplot(2,3,3)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,HPFSparLow);
title('HPF Empathy Low')
subplot(2,3,4)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,LPFSparHigh);
title('LPF Empathy High')
subplot(2,3,5)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,BPFSparHigh);
title('BPF Empathy High')
subplot(2,3,6)
plotting_signal(Layout,W_SparLow,topSparLow,Labels,HPFSparHigh);
title('HPF Empathy High')
sgtitle('Sparsity')