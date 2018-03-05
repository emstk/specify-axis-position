function position = axispos(vert, horiz,leftpad, rightpad, horizpad, toppad, bottompad, vertpad)

% first create the figure
%figPos = [200 200 800 500];
%figure('Color', 'w', 'Position', figPos)

% next, determine how much padding you want on each side of the axes, and in
% between axes. I usually play around with these, and the figure size until
% the layout looks correct.

leftPadding = leftpad; %50/figPos(3); % the space at the left of the figure
rightPadding = rightpad; %25/figPos(3); % the space at the right of the figure
horizPadding = horizpad; %130/figPos(3); % the space between axes (horizontally)
topPadding = toppad; %70/figPos(4); % the space at the top of the figure
bottomPadding = bottompad; %50/figPos(4); % the space at the bottom of the figure
vertPadding = vertpad; %150/figPos(4); % the space between axes (vertically)

% set up the grid size
nHorizAxes = horiz;
nVertAxes = vert;

% figure out how big each axes should be
horizPlotSpace = 1-leftPadding-rightPadding-(nHorizAxes-1)*horizPadding;
vertPlotSpace = 1-topPadding-bottomPadding-(nVertAxes-1)*vertPadding;
width = horizPlotSpace/nHorizAxes;
height = vertPlotSpace/nVertAxes;

%myAxes = zeros(nVertAxes, nHorizAxes);

% create some sample data to plot for illustrative purposes
%x = linspace(0, 2*pi);
%y = sin(x);

for iRow = 1:nVertAxes
    for iCol = 1:nHorizAxes
        % calculate the position
        left = leftPadding+(iCol-1)*(width+horizPadding);
        bottom = 1-(topPadding+(iRow-1)*(height+vertPadding) + height );
        position{iRow}{iCol} = [left bottom width height];
        %{
        myAxes(iRow, iCol) = axes('Position', position);
        plot(x, y)
        xlabel('Test Label')
        ylabel('Test Label')
        title(sprintf('axes(%d, %d)', iRow, iCol))
        %}
    end
end