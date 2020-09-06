use strict;
use warnings;
use 5.010;
use Getopt::Long qw(GetOptions);
 
my $debug;
my $source_address = 'Maven';
GetOptions(
    'from=s' => \$source_address,
    'debug' => \$debug,
) or die "Usage: $0 --debug  --from NAME\n";
 
say $debug ? 'debug' : 'no debug';
if ($source_address) {
    say $source_address;
}
