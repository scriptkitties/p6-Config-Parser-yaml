#! /usr/bin/env perl6

use v6.c;
use Test;
use lib "lib";

use Config;

plan 3;

my $config = Config.new();

ok $config.read("t/test.yaml");
ok $config.get("a") eq "a";
ok $config.get("b.c") eq "c";
