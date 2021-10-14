
file = 'captureDataEvt.cpp';
mex('-v','-I/opt/EVT/eSDK/include', '-L/opt/EVT/eSDK/lib/', '-lEmergentCamera', '-lEmergentCameraC', '-lEmergentGenICam', '-lEmergentGigEVision', '-lmva',file)
clearvars;
fprintf("Compilado con éxito \n")