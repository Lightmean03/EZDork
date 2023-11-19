#!/bin/bash

while true; do
    printf "1:Add Page Title\n2:Add URL Requirement\n3:Add Filetype\n4:Add In Text Requirement\n5:Add Location\n6:Date Options\n7:Select Language\n8:Print URL\nq:Quit\n"
    read opt

    if [[ $opt == "q" ]]; then
        break
    elif [[ $opt == "1" ]]; then
        printf "Enter Page Title: "
        read title
        title="intitle:${title}"
    elif [[ $opt == "2" ]]; then
        printf "Enter URL Requirement: "
        if [[ $url == "" ]]; then
            read url
            url="allinurl:${url}"
        else
            read ur
            url="${url} allinurl:${ur}"
        fi
    elif [[ $opt == "3" ]]; then
        printf "Enter Filetype: "
        if [[ $filetype == "" ]]; then
            read filetype
            filetype="filetype:${filetype}"
        else
            read type
            filetype="${filetype} filetype:${type}"
        fi
    elif [[ $opt == "4" ]]; then
        printf "Enter Text Requirement: "
        if [[ $text == "" ]]; then
            read text
            text="allintext:${text}"
        else
            read txt
            text="${text} allintext:${txt}"
        fi
    elif [[ $opt == "5" ]]; then
        printf "Enter Location: "
        if [[ $loc == "" ]]; then
            read loc
            loc="location:${loc}"
        else
            read location
            loc="${loc} location:${location}"
        fi
    elif [[ $opt == "6" ]]; then
        printf "Select Date Option:\n1: Date\n2: Date Range\n3: Just Before Date\n4: Just After Date\n"
        read date_option

        case $date_option in
            1)
                printf "Enter Date (YYYY-MM-DD): "
                read selected_date
                date_operator="date:${selected_date}"
                ;;
            2)
                printf "Enter Start Date (YYYY-MM-DD): "
                read start_date
                printf "Enter End Date (YYYY-MM-DD): "
                read end_date
                date_operator="daterange:${start_date}..${end_date}"
                ;;
            3)
                printf "Enter Just Before Date (YYYY-MM-DD): "
                read before_date
                date_operator="before:${before_date}"
                ;;
            4)
                printf "Enter Just After Date (YYYY-MM-DD): "
                read after_date
                date_operator="after:${after_date}"
                ;;
            *)
                echo "Invalid Date Option"
                continue
                ;;
        esac
    elif [[ $opt == "7" ]]; then
        printf "Enter Language (e.g., en): "
        read language
        language="lang:${language}"


    elif [[ $opt == "8" ]]; then
        echo "google.com/search?q=\"$title $url $filetype $text $loc $date_operator $language\"" | tr -s " "  
    else
        echo "Invalid Option"
        continue
    fi
done
