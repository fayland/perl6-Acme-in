use v6;
use Test;
use Acme::in;

ok "hello" in "hello world";
ok ! ("blabla" in "hello world");
ok "blabla" not_in "hello world";

ok "hello" in ("hello", "world");
ok ! ("balbla" in ("hello", "world"));

done-testing;
