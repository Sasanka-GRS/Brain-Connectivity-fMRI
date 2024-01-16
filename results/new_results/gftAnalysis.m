clc
clear

%% Load data

Sim303 = load("graph_data\303_graph_SimWindowWeighted.mat").Graphs_W;
Spar303 = load("graph_data\303_graph_SparWindowWeighted.mat").Graphs_W;
Pear303 = load("graph_data\303_graph_PearWindowWeighted.mat").Graphs_W;
Smooth303 = load("graph_data\303_graph_SmoothWindowWeighted.mat").Graphs_W;

Data303 = load("combined_data\303_data_combined.mat").data;
Data303 = Data303';

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
    LPFSim303 = [LPFSim303, graphSpectralFilter(Data303(:,start:last),Sim303(:,:,start),cutoff1,cutoff2)];
    LPFSpar303 = [LPFSpar303, graphSpectralFilter(Data303(:,start:last),Spar303(:,:,start),cutoff1,cutoff2)];
    LPFPear303 = [LPFPear303, graphSpectralFilter(Data303(:,start:last),Pear303(:,:,start),cutoff1,cutoff2)];
    LPFSmooth303 = [LPFSmooth303, graphSpectralFilter(Data303(:,start:last),Smooth303(:,:,start),cutoff1,cutoff2)];
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
    BPFSim303 = [BPFSim303, graphSpectralFilter(Data303(:,start:last),Sim303(:,:,start),cutoff1,cutoff2)];
    BPFSpar303 = [BPFSpar303, graphSpectralFilter(Data303(:,start:last),Spar303(:,:,start),cutoff1,cutoff2)];
    BPFPear303 = [BPFPear303, graphSpectralFilter(Data303(:,start:last),Pear303(:,:,start),cutoff1,cutoff2)];
    BPFSmooth303 = [BPFSmooth303, graphSpectralFilter(Data303(:,start:last),Smooth303(:,:,start),cutoff1,cutoff2)];
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
    HPFSim303 = [HPFSim303, graphSpectralFilter(Data303(:,start:last),Sim303(:,:,start),cutoff1,cutoff2),option];
    HPFSpar303 = [HPFSpar303, graphSpectralFilter(Data303(:,start:last),Spar303(:,:,start),cutoff1,cutoff2),option];
    HPFPear303 = [HPFPear303, graphSpectralFilter(Data303(:,start:last),Pear303(:,:,start),cutoff1,cutoff2),option];
    HPFSmooth303 = [HPFSmooth303, graphSpectralFilter(Data303(:,start:last),Smooth303(:,:,start),cutoff1,cutoff2),option];
    start = start + 1;
    last = last + 1;
end

%% Save

save("gft\Sim303_Filtered.mat","LPFSim303","BPFSim303","HPFSim303");
save("gft\Spar303_Filtered.mat","LPFSpar303","BPFSpar303","HPFSpar303");
save("gft\Pear303_Filtered.mat","LPFPear303","BPFPear303","HPFPear303");
save("gft\Smooth303_Filtered.mat","LPFSmooth303","BPFSmooth303","HPFSmooth303");