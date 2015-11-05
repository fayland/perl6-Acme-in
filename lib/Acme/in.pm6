multi sub infix:<in>(Str $in, Str $full) is export {
  $full.contains($in);
}

multi sub infix:<in>(Mu $in, @list) is export {
  @list.grep({ $_ eq $in })
}

multi sub infix:<in>(Mu $in, %hash) is export {
  $in in %hash.keys
}

multi sub infix:<not_in>(Mu $in, Mu $r) is export {
  ! ($in in $r)
}
