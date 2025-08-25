#!/bin/bash

# Получаем название активного окна
active_window=$(xdotool getactivewindow getwindowclassname 2>/dev/null)

# В зависимости от названия окна выводим иконку
case "$active_window" in
    "firefox" )
        echo "%{F#7899FA} %{F-}" ;;
    "Code" | "code-oss" )
        echo "%{F#7899FA} %{F-}" ;;
    "TelegramDesktop" )
        echo "%{F#7899FA} %{F-}" ;;
    "Alacritty" )
        echo "%{F#7899FA} %{F-}" ;;
    * )
        echo "%{F#7899FA} %{F-}" ;;
esac
