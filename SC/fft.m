
[data sr nbits]=wavread('melody.wav')

Y = fft(data);
plot(abs(Y))
N = sr % number of FFT points
transform = fft(Y,N)/N;
magTransform = abs(transform);
figure
faxis = linspace(-sr/2,sr/2,N);
plot(faxis,fftshift(magTransform));
xlabel('Frequency (Hz)')
% view frequency content up to half the sampling rate:
axis([0 length(faxis)/2, 0 max(magTransform)]) 

% change the tick labels of the graph from scientific notation to floating point: 
xt = get(gca,'XTick');  
set(gca,'XTickLabel', sprintf('%.0f|',xt))

