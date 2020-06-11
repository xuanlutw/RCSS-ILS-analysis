function [amp1, amp2, SR] = time_specturm(filename, interval, width, freq1, freq2)

y = loadFile(filename);
num = size(y, 1);

data = [];
for i = 1:(size(y, 1) / interval)
    seg = y((interval * (i - 1) + 1):(interval * i)); 
    data = [data time_slice_specturm(seg, width)];
end

time = 10 / (size(y, 1) / interval) * (1:(size(y, 1) / interval));
plot(time, 20*log(data))
regular_fig
xlabel('Time (t)');
ylabel('Intensity (dB)');

L = size(data, 2);
Y = fft(data);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = (0:(L/2)) /10;
plot(f,20*log(P1))
regular_fig
xlabel('Freqency (MHz)');
ylabel('Intensity (dB)');
xlim([0, 1000])
ylim([0, 200])

amp1 = 20 * log(max(P1(1, (freq1 * 10 -5):(freq1 * 10 +5))));
amp2 = 20 * log(max(P1(1, (freq2 * 10 -5):(freq2 * 10 +5))));
amp_base = 20 * log(mean(P1(1, (freq1 * 10 - 5):(freq2 * 10 + 5))));
SR = amp1 + amp2 - amp_base * 2;

end

