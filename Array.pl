use strict;
# array is indexed list of elements
my @arr1 = (1,2,3);
#assigned a list to array method

my @arr2 = qw/this is an array string/;

my @arr3 = qw/2 3 4/;

print "Array 1 : @arr1 \n";
print "Array 2 : @arr2 \n";
print "Array 3 : @arr3 \n";

my @arr_range = (1..10); #list range
print "Array range : @arr_range \n";

my $num1 =1;
my $num2 =10;
my @arr_range = ($num1..$num2); #list range
print "Array range : @arr_range \n";

# Retrieve values from array
print "My first val in \@arr1 = $arr1[1]\n";

#size of array variable
my $size = @arr1;
print "Size of array : $size\n";
# gives the length or arr_range
 
my $size = $#arr1;
print "Index of array : $size\n";
# gives the index value or arr_range

my $size = scalar @arr_range;
print "Size of array : $size\n"; # gives the length or arr_range

