# NightVision

Peer through the darkness of running code.

## Installation

Add this line to your application's Gemfile:

    gem 'night_vision'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install night_vision

## Usage
```ruby
	class OddEven
		def odd? n
			n.odd?
		end

		def even? n
			not odd? n
		end
	end
```
``` ruby
	> o = OddEven.new
	> o.odd? 1
	 => false
	> o.odd? 2
	 => true
	> NightVision.goggles(OddEven)
	> o.odd? 1
	"------------------------------------------------"
	"Invoking OddEven#odd?"
	"Actual arguments are: [1]"
	"------------------------------------------------"
	"------------------------------------------------"
	"Returning from OddEven#odd?"
	"Return value is: true"
	"------------------------------------------------"
	 => true
	> o.odd? 2
	"------------------------------------------------"
	"Invoking OddEven#odd?"
	"Actual arguments are: [2]"
	"------------------------------------------------"
	"------------------------------------------------"
	"Returning from OddEven#odd?"
	"Return value is: false"
	"------------------------------------------------"
	 => false
	> o.even? 2
	"------------------------------------------------"
	"Invoking OddEven#even?"
	"Actual arguments are: [6]"
	"------------------------------------------------"
	"------------------------------------------------"
	"Invoking OddEven#odd?"
	"Actual arguments are: [6]"
	"------------------------------------------------"
	"------------------------------------------------"
	"Returning from OddEven#odd?"
	"Return value is: false"
	"------------------------------------------------"
	"Returning from OddEven#even?"
	"Return value is: true"
	"------------------------------------------------"
	 => true
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
