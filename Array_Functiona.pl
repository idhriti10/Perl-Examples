use strict;
use Data::Dumper;
use List::MoreUtils qw(uniq);
# List::MoreUtils('uniq'); qw used for importing functions from modules

#qw does not allow spaces in the string as it looks for space-delimited "words" 
# my @name =('foo', 'bar', 'zoo moo');
# my @name = qw(foo, bar, zoo moo);
#qw is not a function , qw{}, qw@ @ can all be used as delimiters

#reverse 
my @my_arr = qw/this is reverse string function/;
my @rev_arr = reverse (@my_arr);
print "Reverse Array : ", Dumper \@rev_arr;

#sort
#my @my_arr = qw/ z m d a q/;
my @sort_arr = sort(@my_arr);
print "Sorted Array : ", Dumper \@sort_arr;

#sort based on ASCII values
my @num_arr = qw/100 30 5 0 38 1 100 30/;
my @num_sort = sort(@num_arr);
print "Sorted int array : ", Dumper \@num_sort;

my @num_sort = sort{$a <=> $b} @num_arr; # sort takes block argument
print "Sorted int array with <=> : ", Dumper \@num_sort; // Numerical sort

my @num_sort = sort{$a cmp $b} @num_arr; 
print "Sorted int array with cmp: ", Dumper \@num_sort; # ASCII sort

my @num_sort = sort{$b <=> $a} @num_arr;
print "Reverse Sorted int array : ", Dumper \@num_sort;

#join
my $str = join("::", @my_arr);
print "Joined string : $str \n";

#map
my @add_arr = map($_ + 100, @num_arr ); #$_ has the most recent value of @num_arr
print "Mod array : ", Dumper \@add_arr;

#slicing
my ($a,$b,$c,$d) = @num_arr[0..3];
print "sliced values : $a, $b, $c,$d\n";

my @sliced_arr = @num_arr[2..5];
print "Sliced arr : ", Dumper \@sliced_arr;

#uniq
my @uniq_arr = uniq(@num_arr);
print "Unique arr :", Dumper, \@uniq_arr;

#undef clear array variables and reinitialize them
print "Before undef : ", Dumper \@uniq_arr;
undef(@uniq_arr);
print "After undef : ", Dumper \@uniq_arr;