sub f {
  my $sum = 0;
  my ($a, $b) = (0, 1);
  while ($b <= $_[0]) {
    $sum += $b if $b % 2 == 0;
    ($a, $b) = ($b, $a + $b);
  }
  $sum;
}


print f(4000000) . "\n";
