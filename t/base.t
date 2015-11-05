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

# arr in arr
ok (1, 2) in (1, 2, 3), 'arr in arr';
ok (1, 4) not_in (1, 2, 3);

ok [1, 2] in [1, 2, 3], 'arr-ref ok';
ok [1, 4] not_in [1, 2, 3];

# enum
# enum Colors < Red Green Blue >;
# ok 'Red' in Colors, 'enum works';
# ok 'Black' not_in Colors;

# set
my $fruits = set <peach apple orange apple apple>;
ok 'apple' in $fruits, 'set works';
ok 'blueberry' not_in $fruits;

done-testing;
