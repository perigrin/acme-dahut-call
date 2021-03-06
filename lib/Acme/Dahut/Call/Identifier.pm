package Acme::Dahut::Call::Identifier;
use strict;
use warnings;

sub new { return bless {}, shift }

my $DAHUT_RE = qr/
     t+
		(?:
			 u+(?:h+(?:a+d+|d+a+)|a+(?:h+d+|d+h+)|d+(?:h+a+|a+h+))
			|h+(?:u+(?:a+d+|d+a+)|a+(?:u+d+|d+u+)|d+(?:u+a+|a+u+))
			|a+(?:u+(?:h+d+|d+h+)|h+(?:u+d+|d+u+)|d+(?:u+h+|h+u+))
			|d+(?:u+(?:h+a+|a+h+)|h+(?:u+a+|a+u+)|a+(?:u+h+|h+u+))
		)
	|u+
		(?:
			 t+(?:h+(?:a+d+|d+a+)|a+(?:h+d+|d+h+)|d+(?:h+a+|a+h+))
			|h+(?:t+(?:a+d+|d+a+)|a+(?:t+d+|d+t+)|d+(?:t+a+|a+t+))
			|a+(?:t+(?:h+d+|d+h+)|h+(?:t+d+|d+t+)|d+(?:t+h+|h+t+))
			|d+(?:t+(?:h+a+|a+h+)|h+(?:t+a+|a+t+)|a+(?:t+h+|h+t+))
		)
	|h+
		(?:
			 t+(?:u+(?:a+d+|d+a+)|a+(?:u+d+|d+u+)|d+(?:u+a+|a+u+))
			|u+(?:t+(?:a+d+|d+a+)|a+(?:t+d+|d+t+)|d+(?:t+a+|a+t+))
			|a+(?:t+(?:u+d+|d+u+)|u+(?:t+d+|d+t+)|d+(?:t+u+|u+t+))
			|d+(?:t+(?:u+a+|a+u+)|u+(?:t+a+|a+t+)|a+(?:t+u+|u+t+))
		)
	|a+
		(?:
			 t+(?:u+(?:h+d+|d+h+)|h+(?:u+d+|d+u+)|d+(?:u+h+|h+u+))
			|u+(?:t+(?:h+d+|d+h+)|h+(?:t+d+|d+t+)|d+(?:t+h+|h+t+))
			|h+(?:t+(?:u+d+|d+u+)|u+(?:t+d+|d+t+)|d+(?:t+u+|u+t+))
			|d+(?:t+(?:u+h+|h+u+)|u+(?:t+h+|h+t+)|h+(?:t+u+|u+t+))
		)
	|d+
		(?:
			 t+(?:u+(?:h+a+|a+h+)|h+(?:u+a+|a+u+)|a+(?:u+h+|h+u+))
			|u+(?:t+(?:h+a+|a+h+)|h+(?:t+a+|a+t+)|a+(?:t+h+|h+t+))
			|h+(?:t+(?:u+a+|a+u+)|u+(?:t+a+|a+t+)|a+(?:t+u+|u+t+))
			|a+(?:t+(?:u+h+|h+u+)|u+(?:t+h+|h+t+)|h+(?:t+u+|u+t+))
		)
/xi;

sub is_call {
    my ( $self, $message ) = @_;
    return $message =~ $DAHUT_RE;
}

1;
__END__

=head1 NAME

Acme::Dahut::Call::Identifier - detects the melodious sound of the wild Dahut ... in Text.


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
    to "Where's the Beer?"

=head1 METHODS 

=over

=item new()

Create a new Acme::Dahut::Call::Identifier object. 

=item is_call($text) 

Returns true if the $text sounds like a DAHUT Call

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


=head1 AUTHOR

Chris Prather  C<< <perigrin@cpan.org> >>
Bjoern Hoehrmann (bjoern on #swhack) provided me with the Regexp. 

=head1 LICENCE AND COPYRIGHT
Except where noted. 

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
