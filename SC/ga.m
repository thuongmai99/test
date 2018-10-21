rec=audiorecorder(44100, 16, 1);
disp('bat dau ghi')
recordblocking(rec, 8);
disp('dung ghi')
fs=44100;
y=getaudiodata(rec);
audiowrite('orig_input.wav',y,fs);

