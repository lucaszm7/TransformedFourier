function [data_dtft, freq_dtft] = dtft (data, freq_data)

  n_amostras = length(data);
  aux = 0 : n_amostras-1;
  segundos = n_amostras / freq_data;
  freq_dtft = aux / segundos;

  data_dtft = fft(data);

  figure();
  plot(freq_dtft, abs(data_dtft));
  title('FFTN - Dominio das Frequencias');
  xlabel('Frequencia (Hz)');
  ylabel('Energia');

  for w = 1 : n_amostras;
    data_dtft(w) = 0;
    for n=1 : n_amostras
      data_dtft(w) += data(n) * exp(-j*w*n);
    endfor
  endfor

  fc = ceil(n_amostras / 2);
  data_dtft = data_dtft(1:fc);

  figure();
  plot(freq_dtft(1:fc), abs(data_dtft));
  title('DTFT - Dominio das Frequencias');
  xlabel('Frequencia (Hz)');
  ylabel('Energia');



endfunction
