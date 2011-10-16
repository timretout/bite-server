package Bite::Server;

use strict;
use warnings;

use JSON;
use Dancer ':syntax';

our $VERSION = '0.1';

set serializer => 'JSON';

# For login

get '/' => sub {
    template 'index';
};

get '/check_login_status' => sub {
	return {
		loggedIn => JSON::true,
		user => 'tim@retout.co.uk',
		url => '/',
	};
};

# Bugs

get '/get_templates' => sub {
	return [
		{
			id => "general",
			name => "General Bug",
			urls => ['all'],
			project => 'Some project',
			backendProject => 'someproject',
			backendProvider => 'umm',
			selectorText => 'General kind of bug',
			noteText => 'Bug note text',
			displayOrder => 1,
		},
		{
			id => "general2",
			name => "General2 Bug",
			urls => ['all'],
			project => 'Some project',
			backendProject => 'someproject',
			backendProvider => 'umm',
			selectorText => 'General2 kind of bug',
			noteText => 'Bug note text 2',
			displayOrder => 1,
		},
	];
};

get '/get_bugs_for_url' => sub {
	return [];
};

post '/bugs/new' => sub {
	
};

# Tests

get '/compat/test' => sub {
	
	
};

get '/compat/redirect' => sub {
	
};

get '/get_my_compat_test' => sub {
	
};

get '/compat/subscriptions' => sub {
	template 'subscriptions';
};

true;

__END__

=head1 METHODS

=head2 /get_my_compat_test

Gets test suites for the logged-in user.

=cut
