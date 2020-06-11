function amp = time_slice_specturm(data, width)

interval = size(data, 1);
p=fftshift(fft(data));
z = p;
amp = mean(abs(z((interval / 2 - width):(interval / 2 + width))));

% z2 = 20 * log10(abs(p) / max(abs(p)));
% N = length(z2);
% freq = [0:N-1] * 1.25 / N + 108.9 - 1.25 / 2;
% plot(freq,z2);
% regular_fig
% xlim([108.5, 109.5])
% y1=get(gca,'ylim');
% hold on;
% plot([108.9 108.9],y1,'r-','linewidth',2);
% hold off;
% xlabel('Freqency (MHz)');
% ylabel('Intensity (dB)');

end

