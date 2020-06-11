interval = 1000;
width = 15;
[amp90(1), amp150(1), SNR(1)] = time_specturm('../sdr/1089-l1.dat', interval, width, 90, 150);
[amp90(2), amp150(2), SNR(2)] = time_specturm('../sdr/1089-l2.dat', interval, width, 90, 150);
[amp90(3), amp150(3), SNR(3)] = time_specturm('../sdr/1089-l3.dat', interval, width, 90, 150);
[amp90(4), amp150(4), SNR(4)] = time_specturm('../sdr/1089-c1.dat', interval, width, 90, 150);
[amp90(5), amp150(5), SNR(5)] = time_specturm('../sdr/1089-c2.dat', interval, width, 90, 150);
[amp90(6), amp150(6), SNR(6)] = time_specturm('../sdr/1089-c3.dat', interval, width, 90, 150);
[amp90(7), amp150(7), SNR(7)] = time_specturm('../sdr/1089-r1.dat', interval, width, 90, 150);
[amp90(8), amp150(8), SNR(8)] = time_specturm('../sdr/1089-r2.dat', interval, width, 90, 150);
[amp90(9), amp150(9), SNR(9)] = time_specturm('../sdr/1089-r3.dat', interval, width, 90, 150);

post = [-88 -88 -88 0 0 0 66 66 66];

plot(post, (amp90 - amp150), '.');
%plot(post, (amp90 - amp150) ./ (amp90 + amp150), '.');
xlim([-100 100])
ylim([-15 25])
xlabel('Distance (m)');
ylabel('Intensity Diff (dB)');
regular_fig
mean(SNR)