# return if requirements are not found.
if [ ! -x "$(command -v livetail)" ]; then
    return 1
fi

# usage: livetail-error soccer_externalevents_v8|soccer-mobile-live-v16
function livetail-error() {
    livetail "_sourceCategory=$1 AND _source=lager_error"
}
function livetail-notice() {
    livetail "_sourceCategory=$1 AND _source=lager_notice"
}
