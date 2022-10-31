[data, freq] = audioread('StarWars60.wav');

#data = [];

#for i=1 : 30
#  data(i) = 0.8**(i-1)
#endfor

figure;
plot(data);

dtft = [];

for w=1 : 10
  dtft(w) = 0;
  for n=1 : 10
    dtft(w) += data(n) * exp(-i*w*n);
  endfor
endfor

figure;
plot(dtft);

