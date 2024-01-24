function plotting_signal(Layout,signal,node)

N = size(Layout);
N = N(1);

for i = 1:N
    %scatter(Layout(i,1),Layout(i,2),20,'o','filled');
    text(Layout(i,1)+1,Layout(i,2)+1,node(i),'FontSize',10);
end
hold on

% Create a colormap based on signal values
colormapValues = jet(length(signal));

% Normalize signal values to the colormap range
normalizedValues = (signal - min(signal)) / (max(signal) - min(signal));

% Map normalized values to colormap indices
colormapIndices = round(normalizedValues * (length(colormapValues) - 1)) + 1;

% Assign colors to the array based on the colormap
arrayColors = colormapValues(colormapIndices, :);

L = length(arrayColors);

for i=1:L
    scatter(Layout(:,1),Layout(:,2),arrayColors(i),80,'o','filled'); % Plot nodes
end

hold off

end