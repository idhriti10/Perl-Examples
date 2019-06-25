use strict;

my $str = "Hi this is an integer string having value : 67 and _ ";

#search for any number
# \d only matches 1 number so we use + to match 1 or many digits in string.
my $res = $str =~ /\d+/;
print "Result of digit \\d : $res \n";

# character class [] 
my $res = $str =~ /[0-9]+/;
print "[] Result : $res \n";

my $res = $str =~ /[0-9]?/;
print "[] Result : $res \n";

# \w matches 0-9, a-z, A-Z, _
my $str2 = ".';['.'";
my $res = $str2 =~ /\w/;
print "Result of digit \\w : $res \n";

#\W matches anything that is not matched by \w
my $str2 = ".';['.'";
my $res = $str2 =~ /\W/;
print "Result of digit \\W : $res \n";

# \s matches white spaces
my $res = $str =~ /\s+/;
print "Result of \\s for str1 : $res \n";

my $res = $str2 =~ /\s+/;
print "Result of \\s for str2 : $res \n";

# \S
my $res = $str =~ /\S+/;
print "Result of \\S for str1 : $res \n";

my $res = $str2 =~ /\S+/;
print "Result of \\S for str2 : $res \n";

my $str3 = "defasvabc";
my $result = $str3=~ /\bdef/;
print "\\b result : $result \n";


my $result = $str3=~ /abc\b/i; # i for ignoring case
print "\\b result : $result \n";

my $str3 = "This is a string";
my $result = $str3=~ /\bis\b/i;
print "\\b result : $result \n";





