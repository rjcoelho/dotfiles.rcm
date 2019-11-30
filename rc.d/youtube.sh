export YT_PLAYLIST="https://www.youtube.com/playlist?list=PLuOtXP9DKvRIJzPbBOS52rKrKhEbywjwr"
#export YT_PLAYLIST="https://www.youtube.com/playlist?list=PLuOtXP9DKvRKzc0-_IQpYKefPFxuRKj3I"

# see https://github.com/mps-youtube/mps-youtube
[ -x "$(command -v mpsyt)" ] && \
    alias yt_music="mpsyt pl \$YT_PLAYLIST, all repeat"

# see https://github.com/ytdl-org/youtube-dl
# see http://askubuntu.com/questions/178481/how-to-download-an-mp3-track-from-a-youtube-video
if [ ! -x "$(command -v youtube-dl)" ]; then
    return 1
fi
export YT_ARGS="--geo-bypass --no-warnings --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
alias yt_mp3="youtube-dl $YT_ARGS \$YT_PLAYLIST" # download playlist
alias yt_plst="youtube-dl -j --flat-playlist \$YT_PLAYLIST | jq -r '.id' | sed 's_^_https://youtu.be/_'" # list playlist
alias yt_plst_mp3="yt_plst | xargs -n 1 -P 8 youtube-dl $YT_ARGS" # download in parallel
