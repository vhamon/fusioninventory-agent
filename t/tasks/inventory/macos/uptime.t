#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Test::NoWarnings;

use FusionInventory::Agent::Task::Inventory::MacOS::Uptime;
use FusionInventory::Agent::Tools::MacOS;

my %tests = (
        '1325070226' => '1325070226',
        'sec = 1325070226' => '1325070226'
);

plan tests => (scalar keys %tests) + 1;

foreach my $test (keys %tests) {
 my $r = FusionInventory::Agent::Tools::MacOS::getBootTime(string => $test);
    ok($r eq $tests{$test});
}
