input =wavread('orig_input.wav');
mel =wavread('melo.wav');
fs=44100;
figure
a=audioinfo('orig_input.wav');
meloo=mel(1:fs*8);

hop=2*input+meloo;

sound(hop,fs);
plot(hop)
audiowrite('melody.wav',hop,fs);
  
  
  