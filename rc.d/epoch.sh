# usage: epoch 0
epoch() { 
    date -d @$@ -u 
}

# usage: toepoch '1/1/1970'
toepoch() { 
    date -d $@ +'%s' -u
}
