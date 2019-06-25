use strict;

my $str = "deefghiabc";

my $result = $str=~ /(de+f|abc)/; # matches abc or def , | (pipe operator)
# if first condition is met,it doesn't bother matching the next condition

print "Result : $result \n";
print "Matched pattern : $&\n";

my $result = $str=~ /(de{2}f)/;
# {} tells how many time the preceeding character should be present in regex
# the above regex matches deef
print "Result : $result \n";
print "Matched pattern : $&\n";

my $str = "deeeeeefghiabc";
my $result = $str=~ /(de{2,3}f)/;
print "Result : $result \n";
print "Matched pattern : $&\n";

my $result = $str=~ /(d[eE]{2,3}f)/;
print "Result : $result \n";
print "Matched pattern : $&\n";

#positive lookahead ?=
my $str = "defghiabc";
my $result = $str=~ /def(?=abc)/;
# above statement evaluated to 2 if def is immediately followed by abc
print "Result positive lookahead : $result \n";

my $result = $str=~ /def(?=ghi)/;
# above statement evaluated to 2 if def is immediately followed by ghiand evaluates to true
print "Result positive lookahead : $result \n";

#negative lookahead ?!
my $result = $str=~ /def(?!abc)/;
# above statement evaluated to 2 if def is not immediately followed by abc
print "Result negative lookahead : $result \n";

# substitution
print "New str : $str \n";
$str =~ s/def/jkl/; # matches def first and substitutes it with jkl
print "New str : $str \n";

#tr replaces characters not pattern 
print "working with tr \n";
my $str = "deeeeeefghiabc";
$str =~ tr/def/jkl/; 
# replaces d <-> j   e <-> k   f <-> l 
print "New str : $str \n";
