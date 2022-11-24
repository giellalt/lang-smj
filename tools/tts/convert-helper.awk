NF == 2 && $2 == "?" { print(gensub(/\+\?/, "", 1, $1)); } 
NF == 2 && $2 ~ /,/ {
    len = split($2, vars, /,/)
    for (i = 1; i <= len; i++) {
        if (vars[i] == $1) {
            print($v);
            break;
        }
    }
    print(vars[1]);
}
NF == 2 && $2 != "?" && $2 !~ /,/ && $1 !~ /^".*"$/ { print($2); }
/^:/ {print;}
