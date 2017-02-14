nameout=`basename $1 .v`
iverilog $1 -o $nameout.x
