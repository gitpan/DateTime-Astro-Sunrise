use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'DateTime::Astro::Sunrise',
    'VERSION_FROM'	=> 'Sunrise.pm', # finds $VERSION
    'PREREQ_PM'		=> {DateTime =>0.07}, # e.g., Module::Name => 1.1
);
