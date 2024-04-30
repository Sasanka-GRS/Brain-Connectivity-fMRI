clc
clear

%% Compare Combination with others

dataCom = load('..\combination\combined_data\303_data_combined.mat').data;

timeseriesACC = dataCom(:,1);
timeseriesAmygdala = dataCom(:,3);
timeseriesAngular = dataCom(:,5);
timeseriesTri = dataCom(:,11);
timeseriesInsula = dataCom(:,29);

S = size(dataCom);
T = S(1);
time = 1:2:2*T;
%{
figure()
subplot(5,1,1)
plot(time,timeseriesRaw,'r',LineWidth=1.5)
xlabel('Time (s)')
ylabel('BOLD')
title('Raw Combined ACC\_L')
subplot(5,1,2)
plot(time,timeseriesNorm,'g',LineWidth=1.5)
xlabel('Time (s)')
ylabel('BOLD')
title('Normalized Combined ACC\_L')
subplot(5,1,3)
plot(time,timeseriesHPF,'b',LineWidth=1.5)
xlabel('Time (s)')
ylabel('BOLD')
title('HPF Combined ACC\_L')
subplot(5,1,4)
plot(time,timeseriesClu,'black',LineWidth=1.5)
xlabel('Time (s)')
ylabel('BOLD')
title('Clustered Combined ACC\_L')
subplot(5,1,5)
plot(time,timeseriesCom,'black',LineWidth=1.5)
xlabel('Time (s)')
ylabel('BOLD')
title('Final ACC\_L')
sgtitle('Progress in each step')
%}

fig = figure;
subplot(3,1,1)
plot(time,timeseriesACC,'black',LineWidth=1.5)
xticklabels('')
xlim([0,512])
ylim([-30,40])
xL=xlim;
yL=ylim;
text(0.999*xL(2),0.999*yL(2),'ACC\_L','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
subplot(3,1,2)
plot(time,timeseriesAmygdala,'b',LineWidth=1.5)
xticklabels('')
xlim([0,512])
ylim([-30,40])
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'Amygdala\_L','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
subplot(3,1,3)
plot(time,timeseriesInsula,'r',LineWidth=1.5)
xlim([0,512])
ylim([-30,40])
xlabel('Time (s)','FontSize',15);
xL=xlim;
yL=ylim;
text(0.99*xL(2),0.99*yL(2),'Insula\_L','HorizontalAlignment','right','VerticalAlignment','top','FontSize',12,'FontWeight','bold')
han=axes(fig,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
ylabel(han,'Clustered and Combined', 'FontSize', 15);
fontsize(fig,15,"points")
%sgtitle('ACC\_L')
tightfig
print('clustering','-dpdf','-bestfit')