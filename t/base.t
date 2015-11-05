use v6;
use Test;
use Acme::in;

# str in str
ok "hello" in "hello world";
ok ! ("blabla" in "hello world");
ok "blabla" not_in "hello world";

# str in array
ok "hello" in ("hello", "world");
ok ! ("balbla" in ("hello", "world"));
ok "blabla" not_in ("hello", "world");

# ele in hash keys
my %hash = <hello world>;
ok "hello" in %hash;
ok ! ("world" in %hash), "hash value is not in";
ok "world" not_in %hash;

# int in range
ok 1 in (1 .. 3);
ok 5 not_in (1 .. 3);

# ref
ok 1 in [1 .. 3], 'ref is ok';
ok 5 not_in [1 .. 3];

done-testing;
