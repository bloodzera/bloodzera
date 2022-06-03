#/bin/sh

case $1 in
    --icon)
        printf "%s" ""
        ;;
    --click)
        nUpds=$(checkupdates -n | wc -l)

        off="SHUTDOWN"
        reb="REBOOT"
        lock="LOCK"
        ups="UPDATES AVAILABLE: $nUpds"

        options="$off\n$reb\n$lock\n$ups"
        choose=$(echo -e $options | rofi -dmenu -no-fixed-num-lines -location 7 -yoffset -25 -i -p "MENU")
        case $choose in
            $off) $(shutdown now) ;;
            $reb) $(reboot) ;;
            $lock) $(betterlockscreen -l --blur 0.7) ;;
            $ups) $(kitty --hold sh -c "sudo pacman -Syyuu") ;;
        esac
        ;;
    *)  ;;
esac
