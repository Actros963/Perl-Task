#!/usr/bin/perl
use strict;
use 5.018;
use Data::Dumper;

my $prod_cat = [
{
	number => 1,
	model => "A",
	color => "green",
	weight => "40000",
	},
{
	number => 2,
	model => "B",
	color => "yellow",
	weight => "20000",
	},
{
	number => 3,
	model => "C",
	color => "black",
	weight => "10000",
	}	
];
my $key = 'model';

my $secr = sub{
    my ($some_val) = @_;
	return $some_val x 3;
};

sub un_func{
    my ($func, $prod_cat, $key) = @_;
    my @out_arr = ();
    foreach my $elem (@$prod_cat){
		my $result = $func->($elem->{$key});
		push @out_arr, $result;
		};
    print Dumper @out_arr;
};

un_func($secr, $prod_cat, $key);