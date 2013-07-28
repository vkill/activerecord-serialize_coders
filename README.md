# Activerecord::SerializeCoders

ActiveRecord serialize coders

## Installation

Add this line to your application's Gemfile:

    gem 'activerecord-serialize_coders'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-serialize_coders

## Usage

your `app/models/user.rb`

    serialize :module_ids, ::ActiveRecord::Coders::StringIdsColumn.new
    # or
    serialize :module_ids, ::ActiveRecord::Coders::StringIdsColumn.new(require_update: true)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
