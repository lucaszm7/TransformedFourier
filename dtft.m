function [data_dtft, freq_dtft] = dtft (data, freq_data, figHandle)

  n_amostras = length(data);

  # ----------------------------------------------

  #data_dtft = fftshift(fft(data));
  #x_DTFT = linspace(-pi, pi, n_amostras);

  #subplot(1,2,1);
  #bar(x_DTFT, abs(data_dtft));
  #title('Octave - FFTN - Dominio das Frequencias');
  #xlabel('Frequencia (rad/s)');
  #ylabel('Magnitude');

  # ----------------------------------------------

  x_DTFT = linspace(-pi, pi, 200);
  sample_DTFT = length(x_DTFT);
  data_dtft = [];

  for w = 1 : sample_DTFT
    data_dtft(w) = 0;
    for n = 1 : n_amostras
      #                                |      maxW |   2 * pi
      #                           -j * | wk - ---- | * ------ * n
      #                                |       2   |    maxW
      #                         e^
      data_dtft(w) += data(n) * exp(-j*(w-(sample_DTFT/2)-1)*((2*pi)/sample_DTFT)*n);
    endfor
  endfor

  # subplot(1,2,2);
  bar(x_DTFT, abs(data_dtft));
  title('Minha - DTFT - Dominio das Frequencias');
  xlabel('Frequencia (rad/s)');
  ylabel('Magnitude');
  drawnow;
  MakeGif(figHandle, 'dtft.gif');

endfunction
