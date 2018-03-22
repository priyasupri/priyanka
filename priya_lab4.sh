HEAD(1)                                                        User Commands                                                       HEAD(1)

NAME
       head - output the first part of files

SYNOPSIS
       head [OPTION]... [FILE]...

DESCRIPTION
       Print  the  first  10  lines  of each FILE to standard output.  With more than one FILE, precede each with a header giving the file
       name.

       With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.

       -c, --bytes=[-]NUM
              print the first NUM bytes of each file; with the leading '-', print all but the last NUM bytes of each file

       -n, --lines=[-]NUM
              print the first NUM lines instead of the first 10; with the leading '-', print all but the last NUM lines of each file

       -q, --quiet, --silent
              never print headers giving file names

       -v, --verbose
              always print headers giving file names

       -z, --zero-terminated
              line delimiter is NUL, not newline

       --help display this help and exit

       --version
              output version information and exit

       


TAIL(1)                                                        User Commands                                                       TAIL(1)

NAME
       tail - output the last part of files

SYNOPSIS
       tail [OPTION]... [FILE]...

DESCRIPTION
       Print the last 10 lines of each FILE to standard output.  With more than one FILE, precede each with a header giving the file name.

       With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.

       -c, --bytes=[+]NUM
              output the last NUM bytes; or use -c +NUM to output starting with byte NUM of each file

       -f, --follow[={name|descriptor}]
              output appended data as the file grows;

              an absent option argument means 'descriptor'

       -F     same as --follow=name --retry

       -n, --lines=[+]NUM
              output the last NUM lines, instead of the last 10; or use -n +NUM to output starting with line NUM

       --max-unchanged-stats=N
              with --follow=name, reopen a FILE which has not

              changed size after N (default 5) iterations to see if it has been unlinked or renamed (this is the usual case of rotated log
              files); with inotify, this option is rarely useful

       --pid=PID
              with -f, terminate after process ID, PID dies

       -q, --quiet, --silent
              never output headers giving file names

       --retry
              keep trying to open a file if it is inaccessible

       -s, --sleep-interval=N
              with -f, sleep for approximately N seconds (default 1.0) between iterations; with inotify and --pid=P, check  process  P  at
              least once every N seconds

       -v, --verbose
              always output headers giving file names

       -z, --zero-terminated
              line delimiter is NUL, not newline

       --help display this help and exit

       --version
              output version information and exit




SORT(1)                                                        User Commands                                                       SORT(1)

NAME
       sort - sort lines of text files

SYNOPSIS
       sort [OPTION]... [FILE]...
       sort [OPTION]... --files0-from=F

DESCRIPTION
       Write sorted concatenation of all FILE(s) to standard output.

       With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.  Ordering options:

       -b, --ignore-leading-blanks
              ignore leading blanks

       -d, --dictionary-order
              consider only blanks and alphanumeric characters

       -f, --ignore-case
              fold lower case to upper case characters

       -g, --general-numeric-sort
              compare according to general numerical value

       -i, --ignore-nonprinting
              consider only printable characters

       -M, --month-sort
              compare (unknown) < 'JAN' < ... < 'DEC'

       -h, --human-numeric-sort
              compare human readable numbers (e.g., 2K 1G)
       -n, --numeric-sort
              compare according to string numerical value

       -R, --random-sort
              shuffle, but group identical keys.  See shuf(1)

       --random-source=FILE
              get random bytes from FILE

       -r, --reverse
              reverse the result of comparisons

       --sort=WORD
              sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric -n, random -R, version -V

       -V, --version-sort
              natural sort of (version) numbers within text

       Other options:

       --batch-size=NMERGE
              merge at most NMERGE inputs at once; for more use temp files

       -c, --check, --check=diagnose-first
              check for sorted input; do not sort

       -C, --check=quiet, --check=silent
              like -c, but do not report first bad line

       --compress-program=PROG
              compress temporaries with PROG; decompress them with PROG -d

       --debug
              annotate the part of the line used to sort, and warn about questionable usage to stderr

       --files0-from=F
              read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input

       -k, --key=KEYDEF
              sort via a key; KEYDEF gives location and type

       -m, --merge
              merge already sorted files; do not sort

       -o, --output=FILE
              write result to FILE instead of standard output

       -s, --stable
              stabilize sort by disabling last-resort comparison

       -S, --buffer-size=SIZE
              use SIZE for main memory buffer

       -t, --field-separator=SEP
              use SEP instead of non-blank to blank transition

       -T, --temporary-directory=DIR
              use DIR for temporaries, not $TMPDIR or /tmp; multiple options specify multiple directories

       --parallel=N
              change the number of sorts run concurrently to N

       -u, --unique
              with -c, check for strict ordering; without -c, output only the first of an equal run

       -z, --zero-terminated
              line delimiter is NUL, not newline

       --help display this help and exit

       --version
              output version information and exit





UNIQ(1)                                                        User Commands                                                       UNIQ(1)

NAME
       uniq - report or omit repeated lines

SYNOPSIS
       uniq [OPTION]... [INPUT [OUTPUT]]

DESCRIPTION
       Filter adjacent matching lines from INPUT (or standard input), writing to OUTPUT (or standard output).

       With no options, matching lines are merged to the first occurrence.

       Mandatory arguments to long options are mandatory for short options too.

       -c, --count
              prefix lines by the number of occurrences

       -d, --repeated
              only print duplicate lines, one for each group

       -D     print all duplicate lines

       --all-repeated[=METHOD]
              like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate}

       -f, --skip-fields=N
              avoid comparing the first N fields

       --group[=METHOD]
              show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both}

       -i, --ignore-case
              ignore differences in case when comparing

       -s, --skip-chars=N
              avoid comparing the first N characters
              avoid comparing the first N characters

       -u, --unique
              only print unique lines

       -z, --zero-terminated
              line delimiter is NUL, not newline

       -w, --check-chars=N
              compare no more than N characters in lines

       --help display this help and exit

       --version
              output version information and exit




WC(1)                                                          User Commands                                                         WC(1)

NAME
       wc - print newline, word, and byte counts for each file

SYNOPSIS
       wc [OPTION]... [FILE]...
       wc [OPTION]... --files0-from=F

DESCRIPTION
       Print  newline,  word,  and  byte  counts  for  each  FILE,  and  a  total  line  if  more than one FILE is specified.  A word is a
       non-zero-length sequence of characters delimited by white space.

       With no FILE, or when FILE is -, read standard input.

       The options below may be used to select which counts are printed, always in the following order: newline,  word,  character,  byte,
       maximum line length.

       -c, --bytes
              print the byte counts

       -m, --chars
              print the character counts

       -l, --lines
              print the newline counts

       --files0-from=F
              read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input

       -L, --max-line-length
              print the maximum display width

       -w, --words
              print the word counts

       --help display this help and exit






CUT(1)                                                         User Commands                                                        CUT(1)

NAME
       cut - remove sections from each line of files

SYNOPSIS
       cut OPTION... [FILE]...

DESCRIPTION
       Print selected parts of lines from each FILE to standard output.

       With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.

       -b, --bytes=LIST
              select only these bytes

       -c, --characters=LIST
              select only these characters

       -d, --delimiter=DELIM
              use DELIM instead of TAB for field delimiter

       -f, --fields=LIST
              select only these fields;  also print any line that contains no delimiter character, unless the -s option is specified

       -n     (ignored)

       --complement
              complement the set of selected bytes, characters or fields

       -s, --only-delimited
              do not print lines not containing delimiters

       --output-delimiter=STRING
              use STRING as the output delimiter the default is to use the input delimiter
       -z, --zero-terminated
              line delimiter is NUL, not newline

       --help display this help and exit

       --version
              output version information and exit


PASTE(1)                                                       User Commands                                                      PASTE(1)

NAME
       paste - merge lines of files

SYNOPSIS
       paste [OPTION]... [FILE]...

DESCRIPTION
       Write lines consisting of the sequentially corresponding lines from each FILE, separated by TABs, to standard output.

       With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.

       -d, --delimiters=LIST
              reuse characters from LIST instead of TABs

       -s, --serial
              paste one file at a time instead of in parallel

       -z, --zero-terminated
              line delimiter is NUL, not newline

       --help display this help and exit

       --version
              output version information and exit





