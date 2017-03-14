require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')
require_relative('../bus.rb')

class PersonTest < MiniTest::Test

  def setup
    @caroline = Person.new("Caroline Hatwell", 31)
  end



end
