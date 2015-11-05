multi sub infix:<in>(Str $in, Str $full) is export {
  $full.contains($in);
}

multi sub infix:<in>(Str $in, List @list) is export {
  @list.grep({ $_ eq $in })
}
