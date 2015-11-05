use v6;
use Test;
use Acme::in;

ok "hello" in "hello world";
ok ! ("blabla" in "hello world");
ok "blabla" not_in "hello world";

ok "hello" in ("hello", "world");
ok ! ("balbla" in ("hello", "world"));
ok "blabla" not_in ("hello", "world");

my %hash = <hello world>;
ok "hello" in %hash;
ok ! ("world" in %hash), "hash value is not in";
ok "world" not_in %hash;

ok 1 in (1 .. 3);
ok 5 not_in (1 .. 3);

done-testing;
