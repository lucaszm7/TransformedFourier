clear all;
time = 0:0.1:2*pi;
nSamples = numel(time);
figHandle = figure(1);
for i=1:nSamples
  plot(time,sin(time + time(i)),'Color','blue');
  drawnow;
  MakeGif(figHandle, 'test.gif');
endfor

% Uncomment the 'clear' command below to clear the MakeGif persistent
% memory, which will trigger the green sine wave to overwrite the blue.
% Default behavior is to APPEND a green sine wave because the filename
% is the same.
%clear MakeGif;

for i=1:nSamples
  plot(time,sin(time + time(i)),'Color','green');
  drawnow;
  MakeGif(figHandle, 'test.gif');
endfor
