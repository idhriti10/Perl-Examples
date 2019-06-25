# Hashes

use strict;
use Data::Dumper;
my %students;

%students = ("Name", "Rahul", "Roll no", 20, "Marks", 90);
print Dumper\%students;
 
#in hashes there are no indexes and can be located anywhere
#not indexed

%students = ("Name" => "Rahul" , "Roll no"=> 20, "Marks"=> 90);
print Dumper\%students;

my @fruit_arr = qw/Apple 10 Grapes 100 Oranges 50/;
my %fruit_hash = @fruit_arr;
print Dumper \%fruit_hash;

print " Value : \n", $fruit_hash{"Apple"} ; # scalar indexing of hash by $fruit_hash

$fruit_hash{"Apple"} = 30;
print Dumper \%fruit_hash;