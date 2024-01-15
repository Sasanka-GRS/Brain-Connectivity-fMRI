%% Load region locations file

LOC = load("RegionLocations.mat").LOC;

%% Extract labels for regions

fNames = fieldnames(LOC);
L = length(fieldnames(LOC));

nodes = [];

for i = 1:L
    Ri = string(fNames{i});
    RiLeft = Ri+"L";
    RiRight = Ri+"R";
    nodes = [nodes,RiRight];
    nodes = [nodes,RiLeft];
end

%% Save layout

save("nodeLabels.mat","nodes");