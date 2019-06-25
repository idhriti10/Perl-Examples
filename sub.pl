use strict;

print "This is second line \n";

BEGIN # Whatever is written inside of begin block is executed first
{
print " BEGIN BLOCK \n";

}

print "This is third line \n";
#exit;
END #executed when the program exits even after the exit is called
{
	print " END BLOCK \n";
}
print "This is last line \n";

&nothere(10,20,30);
AUTOLOAD
{
	print "Subroutine $main::AUTOLOAD is not defined \n";
	print "Parameters passed to subroutine : @_\n"
}
# catches error when subroutine is not defined. user defined error message