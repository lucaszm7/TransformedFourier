[data, freq] = audioread('StarWars60.wav');

limit = length(data) / freq;
sample_data = linspace(0, limit, length(data));

figure();
plot(sample_data, data);
title('Dominio do Tempo');
xlabel('Tempo (s)');
ylabel('Amplitude');

dtft(data, freq);

#data = [];
#sample_data = 0:0.1:60;
#for i = 1 : length(sample_data)
#  data(i) = 0.8^sample_data(i);
#endfor

#figure();
#plot(sample_data, data);
#title('Dominio do Tempo');
#xlabel('Tempo (s)');
#ylabel('Amplitude');

#dtft(data, 30);


