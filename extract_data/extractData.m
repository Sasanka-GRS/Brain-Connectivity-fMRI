function extractData(subject)

data = [];
nodes = [];

s1 = "..\data\";
s2 = "Data.mat";
sub = s1+subject+s2;

Y = load(sub).extractedData;

y = Y.R9.R;
data.R9_R = y(4:end-3,:);
nodes = [nodes,"9_R"];

y = Y.R9.L;
data.R9_L = y(4:end-3,:);
nodes = [nodes,"9_L"];

y = Y.R10.R;
data.R10_R = y(4:end-3,:);
nodes = [nodes,"10_R"];

y = Y.R10.L;
data.R10_L = y(4:end-3,:);
nodes = [nodes,"10_L"];

y = Y.R11.R;
data.R11_R = y(4:end-3,:);
nodes = [nodes,"11_R"];

y = Y.R11.L;
data.R11_L = y(4:end-3,:);
nodes = [nodes,"11_L"];

y = Y.R45.R;
data.R45_R = y(4:end-3,:);
nodes = [nodes,"45_R"];

y = Y.R45.L;
data.R45_L = y(4:end-3,:);
nodes = [nodes,"45_L"];

y = Y.R44.R;
data.R44_R = y(4:end-3,:);
nodes = [nodes,"44_R"];

y = Y.R44.L;
data.R44_L = y(4:end-3,:);
nodes = [nodes,"44_L"];

y = Y.R22.R;
data.R22_R = y(4:end-3,:);
nodes = [nodes,"22_R"];

y = Y.R22.L;
data.R22_L = y(4:end-3,:);
nodes = [nodes,"22_L"];

y = Y.R24.R;
data.R24_R = y(4:end-3,:);
nodes = [nodes,"24_R"];

y = Y.R24.L;
data.R24_L = y(4:end-3,:);
nodes = [nodes,"24_L"];

y = Y.R46.R;
data.R46_R = y(4:end-3,:);
nodes = [nodes,"46_R"];

y = Y.R46.L;
data.R46_L = y(4:end-3,:);
nodes = [nodes,"46_L"];

y = Y.R47.R;
data.R47_R = y(4:end-3,:);
nodes = [nodes,"47_R"];

y = Y.R47.L;
data.R47_L = y(4:end-3,:);
nodes = [nodes,"47_L"];

y = Y.R13.R;
data.R13_R = y(4:end-3,:);
nodes = [nodes,"13_R"];

y = Y.R13.L;
data.R13_L = y(4:end-3,:);
nodes = [nodes,"13_L"];

y = Y.R32.R;
data.R32_R = y(4:end-3,:);
nodes = [nodes,"32_R"];

y = Y.R32.L;
data.R32_L = y(4:end-3,:);
nodes = [nodes,"32_L"];

y = Y.R38.R;
data.R38_R = y(4:end-3,:);
nodes = [nodes,"38_R"];

y = Y.R38.L;
data.R38_L = y(4:end-3,:);
nodes = [nodes,"38_L"];

y = Y.R40.R;
data.R40_R = y(4:end-3,:);
nodes = [nodes,"40_R"];

y = Y.R40.L;
data.R40_L = y(4:end-3,:);
nodes = [nodes,"40_L"];

s1 = ".\extracted_data\";
s2 = "_data_voxel.mat";
sub = s1+subject+s2;

save(sub,"data");

end