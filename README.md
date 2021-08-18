# FFmpeg-QuQi-H265-FLV-RTMP-switch

<img src="doc_quqi/cylanalyzer@400x400.png" width="500" height="400" >

<br><br>

--------------------------------

LICENSE: 
- <a href="LICENSE.md">LICENSE(1) "Anti 996" License Version 1.0 (Draft)</a>
- <a href="FFMPEG_LICENSE.md">LICENSE(2)</a>
---------------------------------

* Support encode flv with hevc(h265) codec.

* Support decode flv with hevc(h265) codec.

* Support push rtmp stream with hevc(h265) codec.

Examples:

#### RTMP with H.265

```bash
ffmpeg -re -i video40.MP4 -vcodec libx265 -acodec aac -f flv rtmp://127.0.0.1/live/stream
```

#### FLV BOX (VOD)

```bash
ffmpeg -i video40.MP4 -t 10 -vcodec libx265 -acodec aac -f flv -y test.flv
```

#### Play

> Use ffplay address

#### overlay switch

1. ffmpeg -re -i 1st_url  -vf "movie=2nd_url,scale=480x320[test]; [in][test] overlay [out]" -vcodec libx264 out_url
the 1st_url, 2nd_url, scale, vcodec and out_url are parameter by yours.
2. in other terminal, get the pid of ffmpeg (ps aux | grep ffmpeg)
3. send switch command with kill -USR1 pid_ffmpeg to switch overlay state.
4. if ffmpeg terminal display "received signal ,switch overlay from 0/1 to 1/0", that's ok.
-----------------------------------

