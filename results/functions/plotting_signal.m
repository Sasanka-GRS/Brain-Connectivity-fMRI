function plotting_signal(Layout,W,top,node,signal)

N = size(Layout);
N = N(1);

scatter(Layout(:,1),Layout(:,2),40,signal,'o','filled'); % Plot nodes
for i = 1:N
    text(Layout(i,1)+1,Layout(i,2)+1,node(i),'FontSize',10);
end
hold on

for i=1:N
    for j=1:N
        if top(i,j)~=0
            x=[Layout(i,1),Layout(j,1)];
            y=[Layout(i,2),Layout(j,2)]';
            plot(x,y,'r-',LineWidth=1.5);
        else
            if W(i,j)~=0
                x=[Layout(i,1),Layout(j,1)];
                y=[Layout(i,2),Layout(j,2)]';
                plot(x,y,'black-');
            end
        end
    end
end

hold off

colorbar;

end