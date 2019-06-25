use strict;

print "Enter temp in F \n";
my $temp_faran = <STDIN>;
# Scalar can be string/int/float etc.

my $temp_cels = ($temp_faran-32)*(5/9);

print "Temp in cel = $temp_cels \n";
# Any i/p from cmd will always be string
# Perl converts numbers in a string from left to right, it will be stored as int
# If the entered i/p doesn't contain any numbers and it is used for a mathematical expression, it uses 0 as the value.

my $str1 = "Hi my string : $temp_cels\n"; #variable substitution and use \n to print new line
my $str2 = 'Hi my string : $temp_cels 
this is \'
hi this is \\ \n'; #escape characters don't work except ' and \

print "String 1 : $str1\n";
print "String 2 : $str2 \n";