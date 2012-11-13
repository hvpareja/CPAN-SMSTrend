use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'smscli',
    AUTHOR           => q{Hector Valverde <hvalverde@uma.es>},
    VERSION_FROM     => 'bin/sms',
    ABSTRACT_FROM    => 'bin/sms',
    LICENSE          => 'Perl_5',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'LWP::UserAgent' => 6.04,
	'HTTP::Request::Common' => 6.06,
	'Crypt::SSLeay' => 0.64,
	'IO::Socket::SSL' => 1.77
    },
    MAN1PODS => {
	'bin/sms' => '\$(INST_MAN1DIR)/sms.1',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Bio-EasyYang-*' },
);
