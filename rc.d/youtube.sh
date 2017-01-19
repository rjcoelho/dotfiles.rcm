# see https://github.com/mps-youtube/mps-youtube
# to install/upgrade: [sudo] pip3 install mps-youtube --upgrade
export YOUTUBE_MUSIC="https://www.youtube.com/playlist\?list=PLuOtXP9DKvRIJzPbBOS52rKrKhEbywjwr"
[ -x "$(command -v mpsyt)" ] && \
    alias youtube_music="mpsyt pl $YOUTUBE_MUSIC, all repeat"

# see http://askubuntu.com/questions/178481/how-to-download-an-mp3-track-from-a-youtube-video
# to install/upgrade: [sudo] pip3 install youtube-dl --upgrade
[ -x "$(command -v youtube-dl)" ] && \
    alias youtube_mp3="youtube-dl --extract-audio --audio-format mp3 $YOUTUBE_MUSIC"
