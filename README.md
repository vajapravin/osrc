# osrc
Using GitHub username to see a dynamically generated progress report for their open source contributions.
The Open Source Report Card(osrc) is an open source project developed on GitHub and licensed under the MIT License.

## Installation

Add this line to your application's Gemfile:

    gem 'osrc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install osrc

osrc gem is build on faraday gem. It is mandatory to install
	
	gem 'faraday' 

## Usage

	osrc = Osrc::Connection.new('vajapravin')

	osrc.connected_users # list of users
	[{"name"=>"Zsolt Fekete", "username"=>"zsoltf"}, {"name"=>"yyuu", "username"=>"yyuu"}, {"name"=>"xixixao", "username"=>"xixixao"}, {"name"=>"vibinnair", "username"=>"vibinnair"}, {"name"=>"tonchis", "username"=>"tonchis"}]

	osrc.repositories # list of repos
	[{"count"=>78, "repo"=>"manishkukreja/playgym"}, {"count"=>18, "repo"=>"vajapravin/railsdemoapp"}, {"count"=>9, "repo"=>"vajapravin/7apidocs"}, {"count"=>6, "repo"=>"vajapravin/pushbullet"}, {"count"=>6, "repo"=>"vajapravin/mvaayoo"}]

	osrc.similar_users # list of similar users
	[{"name"=>"iacutone", "username"=>"iacutone"}, {"name"=>"panfilovdenis", "username"=>"panfilovdenis"}, {"name"=>"jameschildress", "username"=>"jameschildress"}, {"name"=>"slacker87", "username"=>"slacker87"}, {"name"=>"narogers", "username"=>"narogers"}]

	osrc.usage # usage
	{"day"=>[12, 6, 5, 4, 0, 0, 0, 0, 4, 9, 3, 8, 2, 15, 3, 8, 13, 7, 4, 7, 10, 11, 6, 10], "events"=>[{"day"=>[10, 6, 3, 4, 0, 0, 0, 0, 4, 6, 2, 7, 0, 13, 2, 7, 11, 7, 4, 5, 6, 7, 6, 6], "total"=>116, "type"=>"PushEvent", "week"=>[4, 19, 14, 36, 19, 15, 9]}, {"day"=>[2, 0, 2, 0, 0, 0, 0, 0, 0, 2, 1, 1, 2, 0, 1, 1, 2, 0, 0, 2, 0, 4, 0, 0], "total"=>20, "type"=>"CreateEvent", "week"=>[4, 4, 2, 2, 8, 0, 0]}, {"day"=>[0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4], "total"=>6, "type"=>"ForkEvent", "week"=>[1, 1, 0, 0, 3, 1, 0]}, {"day"=>[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0], "total"=>4, "type"=>"WatchEvent", "week"=>[0, 0, 0, 0, 4, 0, 0]}, {"day"=>[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "total"=>1, "type"=>"PullRequestEvent", "week"=>[0, 0, 0, 0, 0, 1, 0]}], "languages"=>[{"count"=>84, "language"=>"JavaScript", "quantile"=>100}, {"count"=>47, "language"=>"Ruby", "quantile"=>100}, {"count"=>2, "language"=>"VimL", "quantile"=>100}, {"count"=>1, "language"=>"Shell", "quantile"=>100}], "total"=>147, "week"=>[9, 24, 16, 38, 34, 17, 9]}

	osrc.languages # list of languages
	["JavaScript", "Ruby", "VimL", "Shell"]

	osrc.username # username
	"vajapravin"

	osrc.response_body # returns full response body

## Contributing

1. Fork it ( http://github.com/vajapravin/osrc/fork )
2. Create your feature branch (`git checkout -b my-osrc`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-osrc`)
5. Create new Pull Request

Don't hesitate to write problems [vajapravin23@gmail.com]