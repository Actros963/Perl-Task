#!/usr/bin/perl
use strict;
use 5.018;
use Data::Dumper;

my $catalog = [];
my $filter_key = '';
my $sort_key = '';

sub get_filter_{
    my($catalog, $filter_key, $sort_key) = @_;
    my @filter_cat = grep $filter_key, @$catalog;
    my @sorted_cat = sort $sort_key, @filter_cat;
    print Dumper @sorted_cat;
};

