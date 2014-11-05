use 5.008001;
use strict;
use warnings;
use Test::More 0.96;
use File::pushd qw/tempd/;
use Path::Tiny;

use Test::DZil;

my $corpus = path('corpus/DZ1')->absolute;

my $wd = tempd;

my $tzil = Builder->from_config( { dist_root => "$corpus" }, );

ok( $tzil->build, "build dist with \@NGLENN" );

done_testing;
#
# This file is part of Dist-Zilla-PluginBundle-NGLENN
#
# This software is Copyright (c) 2014 by Nathan Glenn.
#
# This is free software, licensed under:
#
#   The Apache License, Version 2.0, January 2004
#
