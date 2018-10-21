fs = 44100; % tan so lay mau (Hz)
  t = 0 : 1/fs : 0.125; % truc thoi gian (s)
  f1 = 440; % tan so f1 (Hz)
  f2 = 2 * f1
  f3 = 3 * f1;
  f4 = 4 * f1;
  A1 = 0.1; A2 = A1/2; A3 = A1; A4 = A1/2; % bien do
  w = 0 %pha
 
  y1 = A1 * sin( 2 * pi * f1 * t  );
  y2 = A2 * sin( 2 * pi * f2 * t  );
  y3 = A3 * sin( 2 * pi * f3 * t  );
  y4 = A4 * sin( 2 * pi * f4 * t  );

  y=[y1  y2  y3  y4];
  Z=[y y y y y y y y y y y y y y y y];
  sound( Z,fs);
  plot(Z);
  audiowrite('melo.wav',Z,fs);