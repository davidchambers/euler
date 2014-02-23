sub f {
  my $sum = 0;
  foreach (1..$_[0] - 1) {
    if ($_ % 3 == 0 || $_ % 5 == 0) {
      $sum += $_;
    }
  }
  $sum;
}


f(10) == 23 or die "assertion error: " . f(10) . " == 23";
print f(1000) . "\n";
