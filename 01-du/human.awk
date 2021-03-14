{
    x = $1
    if (x<1000) {print x} else {x/=1024}
    s="kMGTEPZY";
    while (x>=1000 && length(s)>1)
        {x/=1024; s=substr(s,2)}
    print int(x+0.5) substr(s,1,1)
}
