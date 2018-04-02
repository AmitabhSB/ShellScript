BEGIN{print "record.\t characters \t words"}
#BODY section
{
len=length($1)
print(NR,":\t",len,":\t",NF,$1)
words+=NF
total_len+=len
}
END{
print("\n total words : \t"words)
print("characters :\t" total_len)
print("lines :\t" NR)
}
