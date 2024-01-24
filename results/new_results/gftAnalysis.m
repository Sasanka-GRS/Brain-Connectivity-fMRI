clc
clear

%% Load data

Sim303 = load("..\..\graph_learning\graph_data\303_graph_SimWindowWeighted.mat").Graphs_W;
Spar303 = load("..\..\graph_learning\graph_data\303_graph_SparWindowWeighted.mat").Graphs_W;
Pear303 = load("..\..\graph_learning\graph_data\303_graph_PearWindowWeighted.mat").Graphs_W;
Smooth303 = load("..\..\graph_learning\graph_data\303_graph_SmoothWindowWeighted.mat").Graphs_W;

Data303 = load("..\..\combination\combined_data\303_data_combined.mat").data;
Data303 = Data303';

node = load("..\..\extract_data\nodeLabels.mat").nodes;
layout = load("..\..\extract_data\nodeLayouts.mat").locs;

%% Set parameters

windowSize = 8;
cutoff1 = 0;
cutoff2 = 0;
option = 'MED'; % 'MED' for choosing the middle value and 'AVG' for averaging the window

S = size(Data303);
N = S(1);
T = S(2);

%% LPF

start = 1;
last = windowSize;

LPFSim303 = [];
LPFSpar303 = [];
LPFPear303 = [];
LPFSmooth303 = [];


cutoff1 = 0;
cutoff2 = 9;

while(last<=T)
    LPFSim303 = [LPFSim303, graphSpectralFilter(Data303(:,start:last),Sim303(:,:,start),cutoff1,cutoff2,option)];
    LPFSpar303 = [LPFSpar303, graphSpectralFilter(Data303(:,start:last),Spar303(:,:,start),cutoff1,cutoff2,option)];
    LPFPear303 = [LPFPear303, graphSpectralFilter(Data303(:,start:last),Pear303(:,:,start),cutoff1,cutoff2,option)];
    LPFSmooth303 = [LPFSmooth303, graphSpectralFilter(Data303(:,start:last),Smooth303(:,:,start),cutoff1,cutoff2,option)];
    start = start + 1;
    last = last + 1;
end

%% BPF

start = 1;
last = windowSize;

BPFSim303 = [];
BPFSpar303 = [];
BPFPear303 = [];
BPFSmooth303 = [];

cutoff1 = 10;
cutoff2 = 18;

while(last<=T)
    BPFSim303 = [BPFSim303, graphSpectralFilter(Data303(:,start:last),Sim303(:,:,start),cutoff1,cutoff2,option)];
    BPFSpar303 = [BPFSpar303, graphSpectralFilter(Data303(:,start:last),Spar303(:,:,start),cutoff1,cutoff2,option)];
    BPFPear303 = [BPFPear303, graphSpectralFilter(Data303(:,start:last),Pear303(:,:,start),cutoff1,cutoff2,option)];
    BPFSmooth303 = [BPFSmooth303, graphSpectralFilter(Data303(:,start:last),Smooth303(:,:,start),cutoff1,cutoff2,option)];
    start = start + 1;
    last = last + 1;
end

%% HPF

start = 1;
last = windowSize;

HPFSim303 = [];
HPFSpar303 = [];
HPFPear303 = [];
HPFSmooth303 = [];

cutoff1 = 19;
cutoff2 = 26;

while(last<=T)
    HPFSim303 = [HPFSim303, graphSpectralFilter(Data303(:,start:last),Sim303(:,:,start),cutoff1,cutoff2,option)];
    HPFSpar303 = [HPFSpar303, graphSpectralFilter(Data303(:,start:last),Spar303(:,:,start),cutoff1,cutoff2,option)];
    HPFPear303 = [HPFPear303, graphSpectralFilter(Data303(:,start:last),Pear303(:,:,start),cutoff1,cutoff2,option)];
    HPFSmooth303 = [HPFSmooth303, graphSpectralFilter(Data303(:,start:last),Smooth303(:,:,start),cutoff1,cutoff2,option)];
    start = start + 1;
    last = last + 1;
end

%% Save
%{
save("gft\Sim303_Filtered.mat","LPFSim303","BPFSim303","HPFSim303");
save("gft\Spar303_Filtered.mat","LPFSpar303","BPFSpar303","HPFSpar303");
save("gft\Pear303_Filtered.mat","LPFPear303","BPFPear303","HPFPear303");
save("gft\Smooth303_Filtered.mat","LPFSmooth303","BPFSmooth303","HPFSmooth303");
%}

%% Display

figure()
subplot(3,4,1)
plotting_signal(layout,LPFSim303,node);
title('Similarity LPF')
subplot(3,4,2)
plotting_signal(layout,LPFSpar303,node);
title('Sparsity LPF')
subplot(3,4,3)
plotting_signal(layout,LPFPear303,node);
title('Pearson LPF')
subplot(3,4,4)
plotting_signal(layout,LPFSmooth303,node);
title('Smoothness LPF')

subplot(3,4,5)
plotting_signal(layout,BPFSim303,node);
title('Similarity BPF')
subplot(3,4,6)
plotting_signal(layout,BPFSpar303,node);
title('Sparsity BPF')
subplot(3,4,7)
plotting_signal(layout,BPFPear303,node);
title('Pearson BPF')
subplot(3,4,8)
plotting_signal(layout,BPFSmooth303,node);
title('Smoothness BPF')

subplot(3,4,9)
plotting_signal(layout,HPFSim303,node);
title('Similarity HPF')
subplot(3,4,10)
plotting_signal(layout,HPFSpar303,node);
title('Sparsity HPF')
subplot(3,4,11)
plotting_signal(layout,HPFPear303,node);
title('Pearson HPF')
subplot(3,4,12)
plotting_signal(layout,HPFSmooth303,node);
title('Smoothness HPF')