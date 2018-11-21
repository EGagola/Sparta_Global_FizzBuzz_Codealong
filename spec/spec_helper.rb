require_relative '../lib/fizzbuzz'
require_relative '../lib/multiples_of_three_and_five'
require_relative '../lib/fibonacci'
require_relative '../lib/mathmethods'

RSpec.configure do |config|
  config.formatter = :documentation
end
