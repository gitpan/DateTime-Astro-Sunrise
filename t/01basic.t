use strict;
use Test;
use DateTime;
use DateTime::Astro::Sunrise;

BEGIN { plan tests => 2 }
my $dt = DateTime->new( year   => 2000,
		 month  => 6,
		 day    => 20,
                  );

my $sunrise = DateTime::Astro::Sunrise ->new('-118','33');

my ($tmp_rise, $tmp_set) = $sunrise->sunrise($dt);
$tmp_rise->set_time_zone( 'America/Los_Angeles' );
$tmp_set->set_time_zone('America/Los_Angeles' );

# test 1
ok ($tmp_rise->hms eq '05:43:00');
# test 2
ok ($tmp_set->hms eq '20:03:00');
