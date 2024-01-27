clc
clear

%% Add dependencies
addpath(".\functions\");

%% Load data
GraphsSim = load("..\graph_learning\graph_data\303_graph_SimWindowWeighted.mat");
GraphsSmooth = load("..\graph_learning\graph_data\303_graph_SmoothWindowWeighted.mat");
GraphsSpar = load("..\graph_learning\graph_data\303_graph_SparWindowWeighted.mat");
GraphsPear = load("..\graph_learning\graph_data\303_graph_PearWindowWeighted.mat");

node = load("..\extract_data\nodeLabels.mat").nodes;
layout = load("..\extract_data\nodeLayouts.mat").locs;

%% Average adjacency over time
W_Sim = sum(GraphsSim.Graphs_W,3);
W_Smooth = sum(GraphsSmooth.Graphs_W,3);
W_Spar = sum(GraphsSpar.Graphs_W,3);
W_Pear = sum(GraphsPear.Graphs_W,3);

N = size(W_Sim);
N = N(1);

%% Similarity
A = W_Sim;
[W,topSim] = thres1(A,N,5);
W = normAdj(W);

W_Sim = W;

%% Smoothness
A = W_Smooth;
[W,topSmooth] = thres1(A,N,5);
W = normAdj(W);

W_Smooth = W;

%% Sparsity
A = W_Spar;
[W,topSpar] = thres1(A,N,5);
W = normAdj(W);

W_Spar = W;

%% Pearson
A = W_Pear;
[W,topPear] = thres1(A,N,5);
W = normAdj(W);

W_Pear = W;

%% Plotting
figure()

subplot(1,4,1)
plotting(layout(:,1:2),W_Sim,topSim,node);
title('Similarity','FontSize',25);
set(gca,'XColor', 'none','YColor','none')
subplot(1,4,2)
plotting(layout(:,1:2),W_Spar,topSpar,node);
title('Sparsity','FontSize',25);
set(gca,'XColor', 'none','YColor','none')
subplot(1,4,3)
plotting(layout(:,1:2),W_Pear,topPear,node);
title('Pearson','FontSize',25);
set(gca,'XColor', 'none','YColor','none')
subplot(1,4,4)
plotting(layout(:,1:2),W_Smooth,topSmooth,node);
title('Smoothness','FontSize',25);
set(gca,'XColor', 'none','YColor','none')

sgtitle('Weighted Learning using Methods','FontSize',25);