%% Load region locations file

LOC = load("RegionLocations.mat").LOC;

%% Extract center locations for regions

fNames = fieldnames(LOC);
L = length(fieldnames(LOC));

locs = zeros(2*L,3);

for i = 1:L
    Ri = LOC.(fNames{i});
    RiLeft = Ri.L_XYZ;
    RiRight = Ri.R_XYZ;
    locs(2*i-1,:) = RiRight;
    locs(2*i,:) = RiLeft;
end

%% Save layout

save("nodeLayouts.mat","locs");