use strict;

my $string = " This is an example string for manipulatin and i am just adding and to This \n";

#index
my $search = "This";
# index(string,sub-string,position) returns the first occurence of sub-string in string at or after position. If position is ommited, search starts from beginning.
my $position = index($string, $search);
print("Index value : $position\n");
# if substring isn't found in the given string,it returns -1.

#rindex 
my $search = "This";
my $position = index($string, $search);
print("RIndex value : $position\n");

#length
my $len = length($string);
print("Lengthe : $len\n");

#pos returns position of matched string
my $str = "missisisppi";
while($str =~ /i/g)
{
	my $position = pos($str);
	print "Position of matched string $position \n";
}

#substr EXPR,OFFSET,LENGTH,REPLACEMENT 
#Extracts a substring out of EXPR and returns it. First character is at offset zero. If OFFSET is negative, starts that far back from the end of the string.
#If LENGTH is omitted, returns everything through the end of the string. If LENGTH is negative, leaves that many characters off the end of the string.

#substr
my $copy_str = substr($string, 10, 8);	# Extract 8 characters starting from the 10th character
print "Copied : $copy_str \n";

my $copy_str = substr($string, 10); # Starting from 10th character, extract all characters till the end
print "Copied no offset : $copy_str \n";

substr($string, 0,4) = "Here";	# Replace This with here
substr($string, 0, 0) = "Welcome ";	# Adds welcome to the string

print "Man string :: $string \n";

my @list= ("Here", "is","list");
my $join_str= join("::",@list);
print("Joined string : $join_str\n");

#concat
my $str1 = "Hi";
my $str2 = "Friends";
my $con = $str1." ".$str2."\n";
print "Concat string is : $con";

#multiply
my $mul = $str1 x 10;
print "mUL $mul \n";

