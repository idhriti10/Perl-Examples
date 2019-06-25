use strict;
use Data::Dumper;

my %students = ("Name" => "Dhriti", "Age" => 23, "Title" => "Verification Engineer at AMD");

#keys
my @hash_keys = keys(%students);

#values
my @hash_values = values(%students);

print "KEYS : " , Dumper\@hash_keys;
print "VALUES : " , Dumper\@hash_values;

#size of hash_keys
my $hash_size  = keys(%students);
print "HASH SIZE : $hash_size \n " ;

#slicing
my @slice_hash = @students{"Name", "Title"} ;
print "Sliced data : ", Dumper \@slice_hash;

delete ($students{"Age"});
print Dumper \%students;

$students{"Age"} = 23;
print Dumper \%students;

if (exists($students{"Ages"})){
print "Key exists \n";
}
else{
print "Key does not exist \n";
}

foreach my $key (keys(%students))
{
	print "KEY : $key\n";
	print "Value ; $students{$key} \n\n";
}

print "USING EACH \n";
# each used with while loop
while(my ($key,$value)= each (%students)){
	print "KEY : $key\n";
	print "Value ; $value \n\n";

}


