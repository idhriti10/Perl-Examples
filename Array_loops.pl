use strict;
use Data::Dumper;
my @arr = (12,23,34,56,67);

my $len1 = $#arr;
my $len2 = @arr;

for(my $i = 0 ; $i <$len2 ; $i++ ){
	print "Element $i : $arr[$i] \n";
}

print "\n Mapped array print  \n";
my @arr_map = map($_ , @arr);
print "Mapped arr : ", Dumper \@arr_map;

#foreach 
print "\n For each loop \n";
foreach my $element(@arr){

	print "Element : $element \n";
}

# $_ is default scalar variable
print "\n Default scalar variable \n";
foreach (@arr){

	print "Element : $_ \n";
}