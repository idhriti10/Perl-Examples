use strict;
my $str = "This is a reg exp\n";
my $result = $str =~ /reg/; #~ is match operator
print "Result : $result \n";

my $result = $str !~ /zeg/;
print "Result : $result \n";

#+ -- oNE OR MANY MATCH

my $str1 = "dfghiabc";
my $str1 = "deeffghiabc";
my $result = $str1 =~/de+f/; # d followed by  one or more e followed by f
print "Result for + : $result \n";

# * -- 0 or more 
my $str2 = "afhsbsnlskdef";
my $result = $str2 =~/de*f/; # 0 or more no of e followed by f
print "Result for * : $result \n";

# ? 1 ore more
my $result = $str2 =~/de?f/;
print "Result for ? : $result \n";

# ^ start of string
my $str2 = "DEFSafhsbsnlskdef";
my $result = $str2 =~/^DEF/;
print "Result for ^ : $result \n";

# $ end of string
my $result = $str2 =~/def$/;
print "Result for \$ : $result \n";

#. matches everything except new line character
my $str2 = "banana";
my $result = $str2 =~/b./;
print "Result for . : $result \n";
