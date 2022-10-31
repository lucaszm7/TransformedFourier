[data, N] = audioread('StarWars60.wav');

data = [];
sample_data = 0:1:30;
for i = 1 : length(sample_data)
  data(i) = 0.8^sample_data(i)
endfor

N = length(sample_data);
T = 1 / N;

figure;
plot(sample_data, data);

octave_fft = fft(data);

figure;
plot(abs(octave_fft));

sample_dtft = -100:0.1:100
dtft = [];

for w = 1 : length(sample_dtft);
  dtft(w) = 0;
  for n=1 : length(data)
    dtft(w) += data(n) * exp(-j*sample_dtft(w)*n);
  endfor
endfor

figure;
plot(sample_dtft, abs(dtft));

