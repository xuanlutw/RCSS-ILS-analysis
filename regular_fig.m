hh = gcf;
hh.Color = [1 1 1];
hh.Colormap = [0 0 1];
axis square
box on
grid off

set(get(gca, 'Xlabel'), 'FontSize', 24)
set(get(gca, 'Ylabel'), 'FontSize', 24)
set(get(gca, 'title'), 'FontSize', 24)

set(gca, 'linewidth', 2)
set(get(gca, 'Children'), 'linewidth', 2)

try
set(get(gca, 'Children'), 'Markersize', 20) % only for plot
%set(get(gca, 'Children'), 'Color', 'b') % only for plot
end

hh = gca;
hh.FontSize = 24;