#!/usr/bin/perl
use strict;
use 5.026;
use utf8;

#Поиск дублированных слов (Фамилия вместо Отчества)
my $fname = 'Fred.txt'; 
open (my $fh, '<', $fname) or die "File not open: $! ";
while (<$fh>){
    chomp;
    if (s/^(\w+) (\w+) (\1)/$1 $2 $3(#)/g){
    say $_;
    }
}