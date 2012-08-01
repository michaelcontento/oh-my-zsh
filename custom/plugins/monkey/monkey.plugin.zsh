TRANS='/Applications/Monkey/bin/trans_macos'
FILE='$(ls -1 *.monkey | head -n 1)'

#  Schema: MONKEY   TARGET MODE    CONFIG
# Example: m(onkey) g(lfw) b(uild) r(elease)
#    Hint: Omit the last part and it's a debug build :)

alias mgb=" $TRANS -config=debug   -target=glfw -build  $FILE"
alias mgc=" $TRANS -config=debug   -target=glfw -check  $FILE"
alias mgr=" $TRANS -config=debug   -target=glfw -run    $FILE"
alias mgu=" $TRANS -config=debug   -target=glfw -update $FILE"
alias mgbr="$TRANS -config=release -target=glfw -build  $FILE"
alias mgcr="$TRANS -config=release -target=glfw -check  $FILE"
alias mgrr="$TRANS -config=release -target=glfw -run    $FILE"
alias mgur="$TRANS -config=release -target=glfw -update $FILE"

alias mib=" $TRANS -config=debug   -target=ios -build  $FILE"
alias mic=" $TRANS -config=debug   -target=ios -check  $FILE"
alias mir=" $TRANS -config=debug   -target=ios -run    $FILE"
alias miu=" $TRANS -config=debug   -target=ios -update $FILE"
alias mibr="$TRANS -config=release -target=ios -build  $FILE"
alias micr="$TRANS -config=release -target=ios -check  $FILE"
alias mirr="$TRANS -config=release -target=ios -run    $FILE"
alias miur="$TRANS -config=release -target=ios -update $FILE"

alias mhb=" $TRANS -config=debug   -target=html5 -build  $FILE"
alias mhc=" $TRANS -config=debug   -target=html5 -check  $FILE"
alias mhr=" $TRANS -config=debug   -target=html5 -run    $FILE"
alias mhu=" $TRANS -config=debug   -target=html5 -update $FILE"
alias mhbr="$TRANS -config=release -target=html5 -build  $FILE"
alias mhcr="$TRANS -config=release -target=html5 -check  $FILE"
alias mhrr="$TRANS -config=release -target=html5 -run    $FILE"
alias mhur="$TRANS -config=release -target=html5 -update $FILE"

unset $TRANS $FILE
