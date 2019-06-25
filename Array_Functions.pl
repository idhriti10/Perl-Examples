use strict;
use Data::Dumper;
my @arr = (10,20,30,40,50,60);

#push - adds element at the end of the array
push(@arr,100);
print "Pushed array : " , Dumper \@arr;

#pop - removes last element of an array
my $pop_element = pop(@arr);
print "popped elemenet : $pop_element\n";

#unshift adds element to start
unshift(@arr,100);
print "Unshifted array : " , Dumper \@arr;

#shift removes element to start
my $shift_element = shift(@arr);
print "shifted elemenet : $shift_element\n";

#split returns an array
my $str = "hI THIS IS A STRING ";
my @split_arr = split(" ",$str); # specify delimiter with which to split the string
print "Split arr : ", Dumper \@split_arr;

#splice
splice(@arr, 2, 0, 12,45); # Added elements 12, 45 after loction 2
print "Spliced array : ",Dumper \@arr;

splice(@arr, 2, 3, 12,45,100); # Replace elements at 3,4,5 position
print "Spliced array : ",Dumper \@arr;

splice(@arr, 4, 2); # Delete 2 elements after 4th location
print "Spliced array : ",Dumper \@arr;

splice(@arr, 4); # Delete all elements ater 4th element
print "Spliced array : ",Dumper \@arr;