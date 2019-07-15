# see https://github.com/mps-youtube/mps-youtube
export YT_PLAYLIST="https://www.youtube.com/playlist\?list=PLuOtXP9DKvRIJzPbBOS52rKrKhEbywjwr"
[ -x "$(command -v mpsyt)" ] && \
    alias yt_music="mpsyt pl $YT_PLAYLIST, all repeat"

# see https://github.com/ytdl-org/youtube-dl
# see http://askubuntu.com/questions/178481/how-to-download-an-mp3-track-from-a-youtube-video
if [ ! -x "$(command -v youtube-dl)" ]; then
    return 1
fi
export YT_ARGS="--geo-bypass --playlist-reverse --no-warnings -x --audio-format mp3"
alias yt_mp3="youtube-dl $YT_ARGS $YT_PLAYLIST"
alias yt_plst="youtube-dl -j --flat-playlist $YT_PLAYLIST | jq -r '.id' | sed 's_^_https://youtu.be/_'"
alias yt_plst_mp3="yt_plst | xargs -n 1 -P 8 youtube-dl $YT_ARGS"
