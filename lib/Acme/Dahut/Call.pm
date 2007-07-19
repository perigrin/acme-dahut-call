package Acme::Dahut::Call;
use strict;
use Moose;
our $VERSION = '0.02';

has calls => (
    isa        => 'ArrayRef',
    is         => 'ro',
    auto_deref => 1,
    default    => sub {
        [
            (
                '*yarg*',           'Yo kids!',
                'DAAAHUUUUUT!!!!',  'DAAAAAHUUUT!',
                'METADATA!',        'Yo kids!',
                'DAAAAAHUUUUUUT!!', 'METADATA!',
                'Yo kids!',         'METADATA!',
                'DAHUUT!!',         'A THUD!',
                'AD HUT!',          'HAT DU!',
                'AT HUD!',          '-.. .- .... ..- -',
            )
        ];
    },
);

has actions => (
    isa        => 'ArrayRef',
    is         => 'ro',
    auto_deref => 1,
    default    => sub {
        [
            (
                'hides from the chaotic noise',
                'topples down the mountain',
            )
        ];
    },
);

sub call {
    my $self = shift;
    my @calls = $self->calls;
    return @calls[ rand scalar @calls ];
}


sub action {
    my $self = shift;
    my @actions = $self->actions;
    return @actions[ rand scalar @actions ];
}

1;
__END__

=head1 NAME

Acme::Dahut::Call - replicates the melodious sound of the wild Dahut ... in Text.


=head1 VERSION

This document describes Acme::Dahut::Call version 0.0.1


=head1 SYNOPSIS

    use Acme::Dahut::Call;
    my $fauxhut = Acme::Dahut::Call->new();
    print $fauxhut->call()
  
=head1 DESCRIPTION

    The vocal ability of dahuts has inspired poets and musicians, from Chaucer to Wordsworth, 
    from Handel to Respighi. Dahutsong can be a natural phenomenon of intense beauty. But our 
    enjoyment is incidental to the main purpose, which is one dahut communicating with others. 
    Dahuts became the world's master musicians in order to convey to potential mates, rivals 
    and predators all the important things they have to say, from "Clear off!" to "Come on!" 
    to "Where's the Beer?"[1]

=head1 METHODS 

=over

=item new()

Create a new Acme::Dahut::Call object. Because the melodious sound of the Dahut cannot be 
captured all at one time you can pass in a new list of lines with the C<calls> or the C<actions> param.

=item action()

Simulates the more "active" response of a Dahut to it's native cry.

=item actions()

Returns an ArrayRef of all "active" responses. 

=item call() 

Returns a random call from the wild Dahut.

=item calls()

Returns an ArrayRef of all possible Dahut Calls.

=item meta()

Returns the Class metaobjbect. See L<Class::MOP::Class> for details.

=back

=head1 CONFIGURATION AND ENVIRONMENT

=for author to fill in:
    A full explanation of any configuration system(s) used by the
    module, including the names and locations of any configuration
    files, and the meaning of any environment variables or properties
    that can be set. These descriptions must also include details of any
    configuration language used.
  
Acme::Dahut::Call requires no configuration files or environment variables.


=head1 DEPENDENCIES

=for author to fill in:
    A list of all the other modules that this module relies upon,
    including any restrictions on versions, and an indication whether
    the module is part of the standard Perl distribution, part of the
    module's distribution, or must be installed separately. ]

None.


=head1 INCOMPATIBILITIES

=for author to fill in:
    A list of any modules that this module cannot be used in conjunction
    with. This may be due to name conflicts in the interface, or
    competition for system or program resources, or due to internal
    limitations of Perl (for example, many modules that use source code
    filters are mutually incompatible).

None reported.


=head1 BUGS AND LIMITATIONS

=for author to fill in:
    A list of known problems with the module, together with some
    indication Whether they are likely to be fixed in an upcoming
    release. Also a list of restrictions on the features the module
    does provide: data types that cannot be handled, performance issues
    and the circumstances in which they may arise, practical
    limitations on the size of data sets, special cases that are not
    (yet) handled, etc.

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-acme-dahut-call@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 SEE ALSO

L<Acme::Dahut>

=head1 AUTHOR

Chris Prather  C<< <perigrin@cpan.org> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2007, Chris Prather C<< <perigrin@cpan.org> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
