use strict; 
# pragma used for typechecking in perl. Creates strictness for code that follows
# The strict pragma disables certain Perl expressions that could behave unexpectedly or are difficult to debug, turning them into errors. 
#The effect of this pragma is limited to the current file or scope block.
#If no import list is supplied, all possible restrictions are assumed. 
#Currently, there are three possible things to be strict about: "subs", "vars", and "refs".

print "Enter first number: \n";
my $num1 = <STDIN>;	#my keyword says that this is first initialization. I we use strict, every new variable needs to have a my.
chomp($num1);

print "Enter num 2 : \n";
my $num2 = <STDIN>; # num1 and num2 are scalars and they start with $ variable
chomp($num2);
# chomp is used to terminate \n from user string.
#This is an alternative to the chop() function. It removes characters at the end of strings corresponding to the $INPUT_LINE_SEPARATOR ($/). 
#It returns the number of characters removed.
# It can be given a list of strings upon which to perform this operation. When given no arguments, the operation is performed on $_

# chop removes last letter even if it isnt \n
#This function removes the last character of a string and returns that character. 
#If given a list of arguments, the operation is performed on each one and the last character chopped is returned.

print "Number 1 = $num1\n";
print "Number 2 = $num2\n";

my $result = $num1 + $num2;
print "Sum = $result\n";

my $result = $num1 - $num2;
print "Sum = $result\n";