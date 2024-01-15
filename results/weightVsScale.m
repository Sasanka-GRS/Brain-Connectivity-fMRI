%% Extract Data

Sim303 = load("..\graph_learning\graph_data\820_graph_SimWindowWeighted.mat").Graphs_W;
Pear303 = load("..\graph_learning\graph_data\820_graph_PearWindowWeighted.mat").Graphs_W;
Spar303 = load("..\graph_learning\graph_data\820_graph_SparWindowWeighted.mat").Graphs_W;
Smooth303 = load("..\graph_learning\graph_data\820_graph_SmoothWindowWeighted.mat").Graphs_W;

Sim375 = load("..\graph_learning\graph_data\378_graph_SimWindowWeighted.mat").Graphs_W;
Pear375 = load("..\graph_learning\graph_data\378_graph_PearWindowWeighted.mat").Graphs_W;
Spar375 = load("..\graph_learning\graph_data\378_graph_SparWindowWeighted.mat").Graphs_W;
Smooth375 = load("..\graph_learning\graph_data\378_graph_SmoothWindowWeighted.mat").Graphs_W;

node = load("..\extract_data\nodeLabels.mat").nodes;
scale = load("..\extract_data\rating.mat").scale;

%% Window scale

scaleD = scale(1:2:end);
L = length(scaleD);
Num = 8; % Window Length

scaleW = zeros(L-Num+1,1);

for i = 1:L-Num+1
    window = scaleD(i:i+Num-1);
    average = sum(window,1)/Num;
    scaleW(i) = average;
end

%% Important Regions

R1 = "R13R";
R2 = "R44R";

N = size(Sim375);
N = N(3);

time = (1:2:2*N)';

%% Calculate Indices

indexR1 = find(node==R1);
indexR2 = find(node==R2);

%% Similarity 

Sim303Signal = squeeze(Sim303(indexR1,indexR2,:));
Sim375Signal = squeeze(Sim375(indexR1,indexR2,:));

figure()
subplot(2,1,1)
scatter(scaleW,Sim303Signal);
title('Similarity 303 vs scale');
subplot(2,1,2)
scatter(scaleW,Sim375Signal);
title('Similarity 375 vs scale');

%% Sparsity

Spar303Signal = real(squeeze(Spar303(indexR1,indexR2,:)));
Spar375Signal = real(squeeze(Spar375(indexR1,indexR2,:)));

figure()
subplot(2,1,1)
scatter(scaleW,Spar303Signal);
title('Sparsity 303 vs scale');
subplot(2,1,2)
scatter(scaleW,Spar375Signal);
title('Sparsity 375 vs scale');

%% Pearson 

Pear303Signal = squeeze(Pear303(indexR1,indexR2,:));
Pear375Signal = squeeze(Pear375(indexR1,indexR2,:));

figure()
subplot(2,1,1)
scatter(scaleW,Pear303Signal);
title('Pearson 303 vs scale');
subplot(2,1,2)
scatter(scaleW,Pear375Signal);
title('Pearson 375 vs scale');

%% Smoothness

Smooth303Signal = real(squeeze(Smooth303(indexR1,indexR2,:)));
Smooth375Signal = real(squeeze(Smooth375(indexR1,indexR2,:)));

figure()
subplot(2,1,1)
scatter(scaleW,Smooth303Signal);
title('Smoothness 303 vs scale');
subplot(2,1,2)
scatter(scaleW,Smooth375Signal);
title('Smoothness 375 vs scale');