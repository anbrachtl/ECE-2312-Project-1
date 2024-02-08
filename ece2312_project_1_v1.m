clc;
% % x  = audiodevinfo
% y = audiorecorder(22050, 16,1)
% recDuration = 5;
% record(y)
% pause(y);
% p = play(y)
% resume(y);
% stop(y);
% p = play(y);
% mySpeech = getaudiodata (y, 'int16');

info = audiodevinfo
nDevices = audiodevinfo(1)
% name = audiodevinfo(1,-1)
DriverVersion = audiodevinfo(1,0,"DriverVersion")
support = audiodevinfo(1,2,44100,16,1)
%devID = audiodevinfo(1,"devName")
suppDevID = audiodevinfo(1,44100,16,1)

Fs = 44100; 
nBits = 16; 
nChannels = 1; 
ID = -1;       % default audio input device 
recObj = audiorecorder(Fs,nBits,nChannels,ID);

disp("Begin speaking.") 

recDuration = 3; % record for 3 seconds
recordblocking(recObj,recDuration);
disp("End of recording.")

play(recObj);

myRecording = getaudiodata(recObj,'int16'); 
disp(myRecording)

plot ()