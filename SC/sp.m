[data sr nbits]=wavread('melody.wav')

figure
win = 128 % window length in samples
% number of samples between overlapping windows:
hop = win/2            

nfft = win % width of each frequency bin 
spectrogram(data,win,hop,nfft,sr,'yaxis')

% change the tick labels of the graph from scientific notation to floating point: 
yt = get(gca,'YTick');  
set(gca,'YTickLabel', sprintf('%.0f|',yt))