%% Read the data

Sim303 = load("..\graph_learning\graph_data\303_graph_SimWindowWeighted.mat").Graphs_W;
Sim375 = load("..\graph_learning\graph_data\375_graph_SimWindowWeighted.mat").Graphs_W;
Sim378 = load("..\graph_learning\graph_data\378_graph_SimWindowWeighted.mat").Graphs_W;
Sim797 = load("..\graph_learning\graph_data\797_graph_SimWindowWeighted.mat").Graphs_W;
Sim820 = load("..\graph_learning\graph_data\820_graph_SimWindowWeighted.mat").Graphs_W;
Sim998 = load("..\graph_learning\graph_data\998_graph_SimWindowWeighted.mat").Graphs_W;
Sim1092 = load("..\graph_learning\graph_data\1092_graph_SimWindowWeighted.mat").Graphs_W;
Sim1093 = load("..\graph_learning\graph_data\1093_graph_SimWindowWeighted.mat").Graphs_W;
Sim1171 = load("..\graph_learning\graph_data\1171_graph_SimWindowWeighted.mat").Graphs_W;
Sim1271 = load("..\graph_learning\graph_data\1271_graph_SimWindowWeighted.mat").Graphs_W;
Sim1352 = load("..\graph_learning\graph_data\1352_graph_SimWindowWeighted.mat").Graphs_W;
Sim1511 = load("..\graph_learning\graph_data\1511_graph_SimWindowWeighted.mat").Graphs_W;
Sim1603 = load("..\graph_learning\graph_data\1603_graph_SimWindowWeighted.mat").Graphs_W;
Sim1629 = load("..\graph_learning\graph_data\1629_graph_SimWindowWeighted.mat").Graphs_W;

Pear303 = load("..\graph_learning\graph_data\303_graph_PearWindowWeighted.mat").Graphs_W;
Pear375 = load("..\graph_learning\graph_data\375_graph_PearWindowWeighted.mat").Graphs_W;
Pear378 = load("..\graph_learning\graph_data\378_graph_PearWindowWeighted.mat").Graphs_W;
Pear797 = load("..\graph_learning\graph_data\797_graph_PearWindowWeighted.mat").Graphs_W;
Pear820 = load("..\graph_learning\graph_data\820_graph_PearWindowWeighted.mat").Graphs_W;
Pear998 = load("..\graph_learning\graph_data\998_graph_PearWindowWeighted.mat").Graphs_W;
Pear1092 = load("..\graph_learning\graph_data\1092_graph_PearWindowWeighted.mat").Graphs_W;
Pear1093 = load("..\graph_learning\graph_data\1093_graph_PearWindowWeighted.mat").Graphs_W;
Pear1171 = load("..\graph_learning\graph_data\1171_graph_PearWindowWeighted.mat").Graphs_W;
Pear1271 = load("..\graph_learning\graph_data\1271_graph_PearWindowWeighted.mat").Graphs_W;
Pear1352 = load("..\graph_learning\graph_data\1352_graph_PearWindowWeighted.mat").Graphs_W;
Pear1511 = load("..\graph_learning\graph_data\1511_graph_PearWindowWeighted.mat").Graphs_W;
Pear1603 = load("..\graph_learning\graph_data\1603_graph_PearWindowWeighted.mat").Graphs_W;
Pear1629 = load("..\graph_learning\graph_data\1629_graph_PearWindowWeighted.mat").Graphs_W;

Spar303 = load("..\graph_learning\graph_data\303_graph_SparWindowWeighted.mat").Graphs_W;
Spar375 = load("..\graph_learning\graph_data\375_graph_SparWindowWeighted.mat").Graphs_W;
Spar378 = load("..\graph_learning\graph_data\378_graph_SparWindowWeighted.mat").Graphs_W;
Spar797 = load("..\graph_learning\graph_data\797_graph_SparWindowWeighted.mat").Graphs_W;
Spar820 = load("..\graph_learning\graph_data\820_graph_SparWindowWeighted.mat").Graphs_W;
Spar998 = load("..\graph_learning\graph_data\998_graph_SparWindowWeighted.mat").Graphs_W;
Spar1092 = load("..\graph_learning\graph_data\1092_graph_SparWindowWeighted.mat").Graphs_W;
Spar1093 = load("..\graph_learning\graph_data\1093_graph_SparWindowWeighted.mat").Graphs_W;
Spar1171 = load("..\graph_learning\graph_data\1171_graph_SparWindowWeighted.mat").Graphs_W;
Spar1271 = load("..\graph_learning\graph_data\1271_graph_SparWindowWeighted.mat").Graphs_W;
Spar1352 = load("..\graph_learning\graph_data\1352_graph_SparWindowWeighted.mat").Graphs_W;
Spar1511 = load("..\graph_learning\graph_data\1511_graph_SparWindowWeighted.mat").Graphs_W;
Spar1603 = load("..\graph_learning\graph_data\1603_graph_SparWindowWeighted.mat").Graphs_W;
Spar1629 = load("..\graph_learning\graph_data\1629_graph_SparWindowWeighted.mat").Graphs_W;

Smooth303 = load("..\graph_learning\graph_data\303_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth375 = load("..\graph_learning\graph_data\375_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth378 = load("..\graph_learning\graph_data\378_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth797 = load("..\graph_learning\graph_data\797_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth820 = load("..\graph_learning\graph_data\820_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth998 = load("..\graph_learning\graph_data\998_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1092 = load("..\graph_learning\graph_data\1092_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1093 = load("..\graph_learning\graph_data\1093_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1171 = load("..\graph_learning\graph_data\1171_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1271 = load("..\graph_learning\graph_data\1271_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1352 = load("..\graph_learning\graph_data\1352_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1511 = load("..\graph_learning\graph_data\1511_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1603 = load("..\graph_learning\graph_data\1603_graph_SmoothWindowWeighted.mat").Graphs_W;
Smooth1629 = load("..\graph_learning\graph_data\1629_graph_SmoothWindowWeighted.mat").Graphs_W;

node = load("..\extract_data\nodeLabels.mat").nodes;

%% Important Regions

R1 = "R13R";
R2 = "R44R";

N = size(Sim375);
N = N(3);

time = 1:2:2*N;

%% Calculate Indices

indexR1 = find(node==R1);
indexR2 = find(node==R2);

%% Similarity 

Sim303Signal = squeeze(Sim303(indexR1,indexR2,:)/max(max(Sim303(indexR1,indexR2,:))));
Sim375Signal = squeeze(Sim375(indexR1,indexR2,:)/max(max(Sim375(indexR1,indexR2,:))));
Sim378Signal = squeeze(Sim378(indexR1,indexR2,:)/max(max(Sim378(indexR1,indexR2,:))));
Sim797Signal = squeeze(Sim797(indexR1,indexR2,:)/max(max(Sim797(indexR1,indexR2,:))));
Sim820Signal = squeeze(Sim820(indexR1,indexR2,:)/max(max(Sim820(indexR1,indexR2,:))));
Sim998Signal = squeeze(Sim998(indexR1,indexR2,:)/max(max(Sim998(indexR1,indexR2,:))));
Sim1092Signal = squeeze(Sim1092(indexR1,indexR2,:)/max(max(Sim1092(indexR1,indexR2,:))));
Sim1093Signal = squeeze(Sim1093(indexR1,indexR2,:)/max(max(Sim1093(indexR1,indexR2,:))));
Sim1171Signal = squeeze(Sim1171(indexR1,indexR2,:)/max(max(Sim1171(indexR1,indexR2,:))));
Sim1271Signal = squeeze(Sim1271(indexR1,indexR2,:)/max(max(Sim1271(indexR1,indexR2,:))));
Sim1352Signal = squeeze(Sim1352(indexR1,indexR2,:)/max(max(Sim1352(indexR1,indexR2,:))));
Sim1511Signal = squeeze(Sim1511(indexR1,indexR2,:)/max(max(Sim1511(indexR1,indexR2,:))));
Sim1603Signal = squeeze(Sim1603(indexR1,indexR2,:)/max(max(Sim1603(indexR1,indexR2,:))));
Sim1629Signal = squeeze(Sim1629(indexR1,indexR2,:)/max(max(Sim1629(indexR1,indexR2,:))));

%{
fig = figure;
subplot(5,1,1)
plot(time,Sim303Signal,LineWidth=1.5);
xlabel('Time (s)')
ylabel('W')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'303','HorizontalAlignment','right','VerticalAlignment','top','FontSize',14,'FontWeight','bold')
subplot(5,1,2)
plot(time,Sim375Signal,LineWidth=1.5);
xlabel('Time (s)')
ylabel('W')
title('Similarity 375 Insula (L) and Triangularis (R)');
subplot(5,1,3)
plot(time,Sim378Signal,LineWidth=1.5);
xlabel('Time (s)')
title('Similarity 378 Insula (L) and Triangularis (R)');
subplot(5,1,4)
plot(time,Sim797Signal,LineWidth=1.5);
xlabel('Time (s)')
title('Similarity 797 Insula (L) and Triangularis (R)');
subplot(5,1,5)
plot(time,Sim820Signal,LineWidth=1.5);
xlabel('Time (s)')
title('Similarity 820 Insula (L) and Triangularis (R)');
sgtitle('Variation across subjects Similarity','FontSize',20)
%}

%% Sparsity

Spar303Signal = real(squeeze(Spar303(indexR1,indexR2,:)/max(max(Spar303(indexR1,indexR2,:)))));
Spar375Signal = real(squeeze(Spar375(indexR1,indexR2,:)/max(max(Spar375(indexR1,indexR2,:)))));
Spar378Signal = real(squeeze(Spar378(indexR1,indexR2,:)/max(max(Spar378(indexR1,indexR2,:)))));
Spar797Signal = real(squeeze(Spar797(indexR1,indexR2,:)/max(max(Spar797(indexR1,indexR2,:)))));
Spar820Signal = real(squeeze(Spar820(indexR1,indexR2,:)/max(max(Spar820(indexR1,indexR2,:)))));
Spar998Signal = real(squeeze(Spar998(indexR1,indexR2,:)/max(max(Spar998(indexR1,indexR2,:)))));
Spar1092Signal = real(squeeze(Spar1092(indexR1,indexR2,:)/max(max(Spar1092(indexR1,indexR2,:)))));
Spar1093Signal = real(squeeze(Spar1093(indexR1,indexR2,:)/max(max(Spar1093(indexR1,indexR2,:)))));
Spar1171Signal = real(squeeze(Spar1171(indexR1,indexR2,:)/max(max(Spar1171(indexR1,indexR2,:)))));
Spar1271Signal = real(squeeze(Spar1271(indexR1,indexR2,:)/max(max(Spar1271(indexR1,indexR2,:)))));
Spar1352Signal = real(squeeze(Spar1352(indexR1,indexR2,:)/max(max(Spar1352(indexR1,indexR2,:)))));
Spar1511Signal = real(squeeze(Spar1511(indexR1,indexR2,:)/max(max(Spar1511(indexR1,indexR2,:)))));
Spar1603Signal = real(squeeze(Spar1603(indexR1,indexR2,:)/max(max(Spar1603(indexR1,indexR2,:)))));
Spar1629Signal = real(squeeze(Spar1629(indexR1,indexR2,:)/max(max(Spar1629(indexR1,indexR2,:)))));

%{
fig = figure();
subplot(5,1,1)
plot(time,Spar303Signal,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'303','HorizontalAlignment','right','VerticalAlignment','top','FontSize',14,'FontWeight','bold')
subplot(5,1,2)
plot(time,Spar375Signal,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'375','HorizontalAlignment','right','VerticalAlignment','top','FontSize',14,'FontWeight','bold')
subplot(5,1,3)
plot(time,Spar378Signal,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'378','HorizontalAlignment','right','VerticalAlignment','top','FontSize',14,'FontWeight','bold')
subplot(5,1,4)
plot(time,Spar797Signal,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'797','HorizontalAlignment','right','VerticalAlignment','top','FontSize',14,'FontWeight','bold')
subplot(5,1,5)
plot(time,Spar820Signal,LineWidth=1.5);
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'820','HorizontalAlignment','right','VerticalAlignment','top','FontSize',14,'FontWeight','bold')
han=axes(fig,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
xlabel(han,'Time (s)', 'FontSize', 15);
ylabel(han,'Weight','FontSize',15);
tightfig
fontsize(fig,15,"points")
print('sparsity','-dpdf','-bestfit')
%}

%% Pearson

Pear303Signal = squeeze(Pear303(indexR1,indexR2,:)/max(max(Pear303(indexR1,indexR2,:))));
Pear375Signal = squeeze(Pear375(indexR1,indexR2,:)/max(max(Pear375(indexR1,indexR2,:))));
Pear378Signal = squeeze(Pear378(indexR1,indexR2,:)/max(max(Pear378(indexR1,indexR2,:))));
Pear797Signal = squeeze(Pear797(indexR1,indexR2,:)/max(max(Pear797(indexR1,indexR2,:))));
Pear820Signal = squeeze(Pear820(indexR1,indexR2,:)/max(max(Pear820(indexR1,indexR2,:))));
Pear998Signal = squeeze(Pear998(indexR1,indexR2,:)/max(max(Pear998(indexR1,indexR2,:))));
Pear1092Signal = squeeze(Pear1092(indexR1,indexR2,:)/max(max(Pear1092(indexR1,indexR2,:))));
Pear1093Signal = squeeze(Pear1093(indexR1,indexR2,:)/max(max(Pear1093(indexR1,indexR2,:))));
Pear1171Signal = squeeze(Pear1171(indexR1,indexR2,:)/max(max(Pear1171(indexR1,indexR2,:))));
Pear1271Signal = squeeze(Pear1271(indexR1,indexR2,:)/max(max(Pear1271(indexR1,indexR2,:))));
Pear1352Signal = squeeze(Pear1352(indexR1,indexR2,:)/max(max(Pear1352(indexR1,indexR2,:))));
Pear1511Signal = squeeze(Pear1511(indexR1,indexR2,:)/max(max(Pear1511(indexR1,indexR2,:))));
Pear1603Signal = squeeze(Pear1603(indexR1,indexR2,:)/max(max(Pear1603(indexR1,indexR2,:))));
Pear1629Signal = squeeze(Pear1629(indexR1,indexR2,:)/max(max(Pear1629(indexR1,indexR2,:))));

%{
figure()
subplot(5,1,1)
plot(time,Pear303Signal);
xlabel('Time (s)')
ylabel('W')
title('Pearson 303 Insula (L) and Triangularis (R)');
subplot(5,1,2)
plot(time,Pear375Signal);
xlabel('Time (s)')
ylabel('W')
title('Pearson 375 Insula (L) and Triangularis (R)');
subplot(5,1,3)
plot(time,Pear378Signal);
xlabel('Time (s)')
ylabel('W')
title('Pearson 378 Insula (L) and Triangularis (R)');
subplot(5,1,4)
plot(time,Pear797Signal);
xlabel('Time (s)')
ylabel('W')
title('Pearson 797 Insula (L) and Triangularis (R)');
subplot(5,1,5)
plot(time,Pear820Signal);
xlabel('Time (s)')
ylabel('W')
title('Pearson 820 Insula (L) and Triangularis (R)');
sgtitle('Variation across subjects Pearson')
%}

%% Smoothness

Smooth303Signal = abs(squeeze(Smooth303(indexR1,indexR2,:)/max(max(Smooth303(indexR1,indexR2,:)))));
Smooth375Signal = abs(squeeze(Smooth375(indexR1,indexR2,:)/max(max(Smooth375(indexR1,indexR2,:)))));
Smooth378Signal = abs(squeeze(Smooth378(indexR1,indexR2,:)/max(max(Smooth378(indexR1,indexR2,:)))));
Smooth797Signal = abs(squeeze(Smooth797(indexR1,indexR2,:)/max(max(Smooth797(indexR1,indexR2,:)))));
Smooth820Signal = abs(squeeze(Smooth820(indexR1,indexR2,:)/max(max(Smooth820(indexR1,indexR2,:)))));
Smooth998Signal = abs(squeeze(Smooth998(indexR1,indexR2,:)/max(max(Smooth998(indexR1,indexR2,:)))));
Smooth1092Signal = abs(squeeze(Smooth1092(indexR1,indexR2,:)/max(max(Smooth1092(indexR1,indexR2,:)))));
Smooth1093Signal = abs(squeeze(Smooth1093(indexR1,indexR2,:)/max(max(Smooth1093(indexR1,indexR2,:)))));
Smooth1171Signal = abs(squeeze(Smooth1171(indexR1,indexR2,:)/max(max(Smooth1171(indexR1,indexR2,:)))));
Smooth1271Signal = abs(squeeze(Smooth1271(indexR1,indexR2,:)/max(max(Smooth1271(indexR1,indexR2,:)))));
Smooth1352Signal = abs(squeeze(Smooth1352(indexR1,indexR2,:)/max(max(Smooth1352(indexR1,indexR2,:)))));
Smooth1511Signal = abs(squeeze(Smooth1511(indexR1,indexR2,:)/max(max(Smooth1511(indexR1,indexR2,:)))));
Smooth1603Signal = abs(squeeze(Smooth1603(indexR1,indexR2,:)/max(max(Smooth1603(indexR1,indexR2,:)))));
Smooth1629Signal = abs(squeeze(Smooth1629(indexR1,indexR2,:)/max(max(Smooth1629(indexR1,indexR2,:)))));

%{
figure()
subplot(5,1,1)
plot(time,Smooth303Signal);
xlabel('Time (s)')
ylabel('W')
title('Smoothness 303 Insula (L) and Triangularis (R)');
subplot(5,1,2)
plot(time,Smooth375Signal);
xlabel('Time (s)')
ylabel('W')
title('Smoothness 375 Insula (L) and Triangularis (R)');
subplot(5,1,3)
plot(time,Smooth378Signal);
xlabel('Time (s)')
ylabel('W')
title('Smoothness 378 Insula (L) and Triangularis (R)');
subplot(5,1,4)
plot(time,Smooth797Signal);
xlabel('Time (s)')
ylabel('W')
title('Smoothness 797 Insula (L) and Triangularis (R)');
subplot(5,1,5)
plot(time,Smooth820Signal);
xlabel('Time (s)')
ylabel('W')
title('Smoothness 820 Insula (L) and Triangularis (R)');
sgtitle('Variation across subjects Smoothness')
%}

%% Average

Sim = (Sim303Signal + Sim375Signal + Sim378Signal + Sim797Signal + Sim820Signal + Sim998Signal + Sim1092Signal + Sim1093Signal + Sim1171Signal + Sim1271Signal + Sim1352Signal + Sim1511Signal + Sim1603Signal + Sim1629Signal)/14;
Spar = (Spar303Signal + Spar375Signal + Spar378Signal + Spar797Signal + Spar820Signal + Spar998Signal + Spar1092Signal + Spar1093Signal + Spar1171Signal + Spar1271Signal + Spar1352Signal + Spar1511Signal + Spar1603Signal + Spar1629Signal)/14;
Pear = (Pear303Signal + Pear375Signal + Pear378Signal + Pear797Signal + Pear820Signal + Pear998Signal + Pear1092Signal + Pear1093Signal + Pear1171Signal + Pear1271Signal + Pear1352Signal + Pear1511Signal + Pear1603Signal + Pear1629Signal)/14;
Smooth = (Smooth303Signal + Smooth375Signal + Smooth378Signal + Smooth797Signal + Smooth820Signal + Smooth998Signal + Smooth1092Signal + Smooth1093Signal + Smooth1171Signal + Smooth1271Signal + Smooth1352Signal + Smooth1511Signal + Smooth1603Signal + Smooth1629Signal)/14;

%% All subjects all methods

fig = figure;
subplot(4,1,1)
plot(time,Sim,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'Similarity','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
subplot(4,1,2)
plot(time,Spar,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'Sparsity','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
subplot(4,1,3)
plot(time,Pear,LineWidth=1.5);
xticklabels('')
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'Pearson','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
subplot(4,1,4)
plot(time,Smooth,LineWidth=1.5);
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'Smoothness','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
han=axes(fig,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
ylabel(han,'Weight', 'FontSize', 15);
xlabel(han,'Time (s)','FontSize',15);
fontsize(fig,15,"points")
tightfig
%print('303','-dpdf','-bestfit')