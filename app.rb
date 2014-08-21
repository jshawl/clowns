require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jesse",
  :password => "",
  :database => "clowns"
)

class Clown < ActiveRecord::Base
end

binding.pry