function normalizeData(subject)

s1 = "..\extract_data\extracted_data\";
s2 = "_data_voxel.mat";
sub = s1+subject+s2;

%% Add dependencies

addpath(".\functions");

%% 

data = load(sub).data;
data = dataNormVoxel(data);

s1 = ".\normalized_data\";
s2 = "_data_voxel_N.mat";
sub = s1+subject+s2;

save(sub,"data");

end