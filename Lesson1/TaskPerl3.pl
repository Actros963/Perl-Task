#!/usr/bin/perl
use strict;
use 5.018;
use Data::Dumper;

my $cat = [
    {
        number => 18,
        model  => "A",
        color  => "green",
        weight => "50000",
        },
    {
        number => 12,
        model  => "B",
        color  => "yellow",
        weight => "20000",
        },
    {
        number => 3,
        model  => "C",
        color  => "black",
        weight => "24000",
        },
    {
        number => 46,
        model  => "D",
        color  => "white",
        weight => "44000",
        },
    {
        number => 2,
        model  => "E",
        color  => "purple",
        weight => "46000",
        },    	
    ];
my $f_key = 'weight';
my $s_key = 'number';
sub fil{
    my($cat, $f_key, $s_key) = @_;
    my @res;
    foreach my $el (@$cat){
        if ($el->{$f_key} < 47000){
            push @res, $el
        }
    };
    print Dumper @res;
    my @sort_arr = sort{
        $a->{$s_key} <=> $b->{$s_key}
	}@res;
    print Dumper @sort_arr;
};

fil($cat, $f_key, $s_key);
};

