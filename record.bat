FOR /F "tokens=1-3 delims=/ " %%I IN ('DATE /t') DO SET mydate=%%K_%%J_%%I

FOR /F "tokens=1-4 delims=: " %%M IN ('TIME /t') DO SET mytime=%%M_%%N


start C:\"Program Files (x86)"\VideoLAN\VLC\vlc.exe screen:// -V dummy --intf=dummy --dummy-quiet  --no-audio --run-time=500 --sout=#transcode{vcodec=h264,acodec=mp4a,vb=1500,ab=250,width=1024,height=768}:duplicate{dst=standard{access=file,mux=ps,dst="c:\Test\%mydate%_%mytime%_%random%.mp4"}}  :screen-fps=20.000000 :live-caching=300 vlc://quit


