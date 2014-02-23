use strict;
use warnings;
use POSIX;


sub factorize {
  my $n = $_[0];
  my @factors = ();
  foreach (2..ceil sqrt $n) {
    push @factors, $_ if $n % $_ == 0;
  }
  @factors;
}


sub f {
  my @primes = ();
  foreach (factorize $_[0]) {
    push @primes, $_ if factorize($_) == 0;
  }
  @primes;
}


my $actual = join ", ", f 13195;
my $expected = "5, 7, 13, 29";
$actual eq $expected or die "assertion error: " . $actual . " eq " . $expected;

print ((f 600851475143)[-1] . "\n");
