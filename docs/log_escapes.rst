
NAME
*****
    strftime - convert date and time to a string

SYNOPSIS
*********

    #include <time.h>

    size_t strftime(char \*restrict s, size_t maxsize,
           const char \*restrict format, const struct tm \*restrict timeptr);

DESCRIPTION
************

    [CX] [Option Start] The functionality described on this reference page is aligned with the ISO C standard. Any conflict between the requirements described here and the ISO C standard is unintentional. This volume of IEEE Std 1003.1-2001 defers to the ISO C standard. [Option End]

    The strftime() function shall place bytes into the array pointed to by s as controlled by the string pointed to by format. The format is a character string, beginning and ending in its initial shift state, if any. The format string consists of zero or more conversion specifications and ordinary characters. A conversion specification consists of a '%' character, possibly followed by an E or O modifier, and a terminating conversion specifier character that determines the conversion specification's behavior. All ordinary characters (including the terminating null byte) are copied unchanged into the array. If copying takes place between objects that overlap, the behavior is undefined. No more than maxsize bytes are placed into the array. Each conversion specifier is replaced by appropriate characters as described in the following list. The appropriate characters are determined using the LC_TIME category of the current locale and by the values of zero or more members of the broken-down time structure pointed to by timeptr, as specified in brackets in the description. If any of the specified values are outside the normal range, the characters stored are unspecified.

    [CX] [Option Start] Local timezone information is used as though strftime() called tzset(). [Option End]

    The following conversion specifications are supported:

    %a
        Replaced by the locale's abbreviated weekday name. [ tm_wday]

    %A
        Replaced by the locale's full weekday name. [ tm_wday]

    %b
        Replaced by the locale's abbreviated month name. [ tm_mon]

    %B
        Replaced by the locale's full month name. [ tm_mon]

    %c
        Replaced by the locale's appropriate date and time representation. (See the Base Definitions volume of IEEE Std 1003.1-2001, <time.h>.)

    %C
        Replaced by the year divided by 100 and truncated to an integer, as a decimal number [00,99]. [ tm_year]

    %d
        Replaced by the day of the month as a decimal number [01,31]. [ tm_mday]

    %D
        Equivalent to %m / %d / %y. [ tm_mon, tm_mday, tm_year]

    %e
        Replaced by the day of the month as a decimal number [1,31]; a single digit is preceded by a space. [ tm_mday]

    %F
        Equivalent to %Y - %m - %d (the ISO 8601:2000 standard date format). [ tm_year, tm_mon, tm_mday]

    %g
        Replaced by the last 2 digits of the week-based year (see below) as a decimal number [00,99]. [ tm_year, tm_wday, tm_yday]

    %G
        Replaced by the week-based year (see below) as a decimal number (for example, 1977). [ tm_year, tm_wday, tm_yday]

    %h
        Equivalent to %b. [ tm_mon]

    %H
        Replaced by the hour (24-hour clock) as a decimal number [00,23]. [ tm_hour]

    %I
        Replaced by the hour (12-hour clock) as a decimal number [01,12]. [ tm_hour]

    %j
        Replaced by the day of the year as a decimal number [001,366]. [ tm_yday]

    %m
        Replaced by the month as a decimal number [01,12]. [ tm_mon]

    %M
        Replaced by the minute as a decimal number [00,59]. [ tm_min]

    %n
        Replaced by a <newline>.

    %p
        Replaced by the locale's equivalent of either a.m. or p.m. [ tm_hour]

    %r
        Replaced by the time in a.m. and p.m. notation; [CX] [Option Start]  in the POSIX locale this shall be equivalent to %I : %M : %S %p. [Option End] [ tm_hour, tm_min, tm_sec]

    %R
        Replaced by the time in 24-hour notation ( %H : %M ). [ tm_hour, tm_min]

    %S
        Replaced by the second as a decimal number [00,60]. [ tm_sec]

    %t
        Replaced by a <tab>.

    %T
        Replaced by the time ( %H : %M : %S ). [ tm_hour, tm_min, tm_sec]

    %u
        Replaced by the weekday as a decimal number [1,7], with 1 representing Monday. [ tm_wday]

    %U
        Replaced by the week number of the year as a decimal number [00,53]. The first Sunday of January is the first day of week 1; days in the new year before this are in week 0. [ tm_year, tm_wday, tm_yday]

    %V
        Replaced by the week number of the year (Monday as the first day of the week) as a decimal number [01,53]. If the week containing 1 January has four or more days in the new year, then it is considered week 1. Otherwise, it is the last week of the previous year, and the next week is week 1. Both January 4th and the first Thursday of January are always in week 1. [ tm_year, tm_wday, tm_yday]

    %w
        Replaced by the weekday as a decimal number [0,6], with 0 representing Sunday. [ tm_wday]

    %W
        Replaced by the week number of the year as a decimal number [00,53]. The first Monday of January is the first day of week 1; days in the new year before this are in week 0. [ tm_year, tm_wday, tm_yday]

    %x
        Replaced by the locale's appropriate date representation. (See the Base Definitions volume of IEEE Std 1003.1-2001, <time.h>.)

    %X
        Replaced by the locale's appropriate time representation. (See the Base Definitions volume of IEEE Std 1003.1-2001, <time.h>.)

    %y
        Replaced by the last two digits of the year as a decimal number [00,99]. [ tm_year]

    %Y
        Replaced by the year as a decimal number (for example, 1997). [ tm_year]

    %z
        Replaced by the offset from UTC in the ISO 8601:2000 standard format ( +hhmm or -hhmm ), or by no characters if no timezone is determinable. For example, "-0430" means 4 hours 30 minutes behind UTC (west of Greenwich). [CX] [Option Start]  If tm_isdst is zero, the standard time offset is used. If tm_isdst is greater than zero, the daylight savings time offset is used. If tm_isdst is negative, no characters are returned. [Option End] [ tm_isdst]

    %Z
        Replaced by the timezone name or abbreviation, or by no bytes if no timezone information exists. [ tm_isdst]

    %%
        Replaced by %.

    If a conversion specification does not correspond to any of the above, the behavior is undefined.

    [CX] [Option Start] If a struct tm broken-down time structure is created by localtime() or localtime_r(), or modified by mktime(), and the value of TZ is subsequently modified, the results of the %Z and %z strftime() conversion specifiers are undefined, when strftime() is called with such a broken-down time structure.

    If a struct tm broken-down time structure is created or modified by gmtime() or gmtime_r(), it is unspecified whether the result of the %Z and %z conversion specifiers shall refer to UTC or the current local timezone, when strftime() is called with such a broken-down time structure. [Option End]
