#!/usr/bin/perl
use strict;
use 5.026;
use Data::Dumper;

my @Mod = (
    'Model X-100 this is Armored Vehicle',
    'Model X-911 this is Armored Vehicle',
    'Model A-112 this is Artillery',
    'Model A-007 this is Artillery',
    'Model S-777 this is BattleShip',
    'Model X-014 this is Armored Vehicle',
    'Model S-212 this is BattleShip',
    'Model A-555 this is Artillery',
    'Model K-818 this is Winged Rocket',
    'Model K-868 this is Winged Rocket',
);

my %Mod_Alias = (
    'X-100' => 'Exterminator',
    'X-911' => 'Extractor',
    'A-112' => 'Annihilator',
    'A-007' => 'Devastator',
    'S-777' => 'Admiral',
    'X-014' => 'Terminator',
    'S-212' => 'Godzilla',
    'A-555' => 'Hellboy',
    'K-818' => 'Bulava',
    'K-868' => 'Satana',
);

foreach (@Mod){
    $_ =~ s/([A-Z]-\d{3})/$Mod_Alias{$1}/;
}
print Dumper @Mod;

# my @Rep_Mod = map {
#     my $temp = $_;
#     $temp =~ s/([A-Z]-\d{3})/$Mod_Alias{$1}/;
#     $temp;
# } @Mod;
# print Dumper @Rep_Mod;