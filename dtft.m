function [data_dtft, freq_dtft] = dtft (data, freq_data)

  n_amostras = length(data);
  aux = 0 : n_amostras-1;
  segundos = n_amostras / freq_data;
  freq_dtft = aux / segundos;

  data_dtft = fft(data);

  figure();
  plot(freq_dtft, abs(data_dtft));
  title('FFTN - Dominio das Frequencias');
  xlabel('Frequencia (rad/s)');
  ylabel('Magnitude');

  for w = 1 : n_amostras;
    data_dtft(w) = 0;
    for n=1 : freq_data
      data_dtft(w) += data(n) * exp(-j*w*n);
    endfor
  endfor

  figure();
  plot(freq_dtft, abs(data_dtft));
  title('DTFT - Dominio das Frequencias');
  xlabel('Frequencia (rad/s)');
  ylabel('Magnitude');

endfunction