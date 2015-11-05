multi sub infix:<in>(Str $in, Str $full) is export {
  $full.contains($in);
}

multi sub infix:<in>(Mu $in, @list) is export {
  $in eq @list.any;
  # @list.grep({ $_ eq $in })
}

multi sub infix:<in>(Mu $in, %hash) is export {
  $in in %hash.keys
}

multi sub infix:<in>(@a1, @a2) is export {
  return False if @a1.elems > @a2.elems;
  for @a1 -> $a1 {
    return False unless $a1 in @a2;
  }
  return True;
}

multi sub infix:<not_in>(Mu $in, Mu $r) is export {
  ! ($in in $r)
}
