#next - continue
#last - break

#last breaks the loop and gives the control back to calling program
use strict;

#last
for (my $i=0;$i<=10;$i++){
print "Number is : ";
if($i == 5){
	print "Condition reached \n";
	last; # will hand control back to outerloop/calling function
}
	print "$i\n";
}

print "Control is back here \n";

#next
for (my $i=0;$i<=10;$i++){
print "Number is : ";
if($i == 5){
	print "Condition reached \n";
	next; # for that condition, will not execute anything after next statement inside the for loop.
}
	print "$i\n";
}