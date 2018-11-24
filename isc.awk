#
# isc.awk
#
# created: 1235 241118
#

## FUNCTIONS ##

## BEGIN RULE ##

BEGIN {
 state = 0
}

# custom rules

/ISC/ && !/^ \*/ \
{
  gsub(/[(),|;!\[\]]/, " ");

  c = split($0, a);

  for (idx in a)
  {
    item = a[idx]

    if (item ~ /ISC_/) { print item; }
  }
}

## END RULE ##

END {
 # this is the end loop
}
