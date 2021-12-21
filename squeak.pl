#!/usr/bin/perl

use strict;
use warnings;

use Gtk3 '-init';

my $window = Gtk3::Window->new('toplevel');

$window->signal_connect(
	'destroy' => sub {
		Gtk3->main_quit;
	}
);

my $box = Gtk3::Box->new('horizontal', 0);

$window->add($box);

$window->set_title("Perl Squeak Image Loader");
$window->show_all;

Gtk3->main;
