[data, freq] = audioread('StarWars60.wav');

limit = length(data) / freq;
sample_data = linspace(0, limit, length(data));

#figure();
#plot(sample_data, data);
#title('Dominio do Tempo');
#xlabel('Tempo (s)');
#ylabel('Amplitude');

new_limit = (int32)(0.05 * length(data)) / limit;

figHandle = figure(1);

for i = 15 : 100
  i
  # subplot(3,5,i);
  new_data = data(i * new_limit: (i + 1) * new_limit);
  dtft(new_data, freq, figHandle);
endfor



