package App::TOMLUtils;

# VERSION
# DATE

use 5.010001;

our %common_args = (
    toml => {
        summary => 'TOML file',
        schema  => ['str*'],
        req     => 1,
        pos     => 0,
        cmdline_src => 'stdin_or_file',
        tags    => ['common'],
    },

    #ignore_unknown_directive => {
    #    schema  => 'bool',
    #    default => 0,
    #    tags    => ['common', 'category:parser'],
    #},
);

sub _get_parser {
    require TOML::Parser;

    my $args = shift;
    TOML::Parser->new();
}

1;
# ABSTRACT: TOML utilities

=head1 SYNOPSIS

This distribution provides the following command-line utilities:

#INSERT_EXECS_LIST


=head1 SEE ALSO

L<https://github.com/toml-lang/toml>

L<TOML::Parser>

=cut
