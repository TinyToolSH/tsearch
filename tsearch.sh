#!/bin/bash 

CONFIG=~/Scripts/pytools/tsearch/list.config

CONFIG=~/Scripts/pytools/tsearch/list.config

# DEFAULT SEARCH PARAMS
PROGRAM=$(awk '/^default/ && $2=="program" {print $3}' $CONFIG)
ENGINE=$(awk '/^default/ && $2=="engine" {print $3}' $CONFIG)
LANG="en"

while getopts p:e:t:l option
do
<<<<<<< found
case "${option}"
in
p) PROGRAM=${OPTARG};;
e) ENGINE=${OPTARG};;
t) RAW_TERM=${OPTARG};;
l) LANG=${OPTARG}
esac
done

TERM=${RAW_TERM// /+}

create_query(){
    QUERY=$(awk -v selected_engine="$1" '/^engine/ && $2==selected_engine {print $3}' $CONFIG)
    echo "${QUERY/TERM/$TERM}"
||||||| expected

create_query(){
    case "$1" in
        duckduckgo) QUERY="https://www.duckduckgo.com/?q=$TERM" ;;
        google) QUERY="https://www.google.com/search?q=$TERM" ;;
        youtube) QUERY="https://www.youtube.com/results?search_query=$TERM" ;;
        pacman) QUERY="sudo pacman -S $RAW_TERM" ;;
        apt) QUERY="sudo apt-get $RAW_TERM" ;;
        aur) QUERY="yaourt $RAW_TERM" ;;
        translate) QUERY="https://translate.google.com/?sl=auto&tl=$LANG&text=$TERM" ;;
        # wikipedia) to be implemented
        *) echo "ENGINE NOT SUPPORTED" ;;
    esac
    echo "$QUERY"
=======

create_query(){
    QUERY=$(awk -v selected_engine="$1" '/^engine/ && $2==selected_engine {print $3}' $CONFIG)
    echo "${QUERY/TERM/$TERM}"
>>>>>>> replacement
}

case "$ENGINE" in
    pacman | apt | aur) $(create_query $ENGINE) ;;
    *) $PROGRAM $(create_query $ENGINE) ;;
esac
