
#attr_reader :airport, :plane


require_relative './plane.rb'
class Airport
attr_reader :capacity
DEFAULT_CAPACITY = 3
#this is where defauly capacity goes
def initialize(capacity=DEFAULT_CAPACITY)
 @capacity = capacity
 @plane = []
end

def weather_random
  rand(10)
end

def weather_land (plane)
  raise "Too stormy" if weather_ran <= 20
  land(plane)
end

def land(plane)
  fail "airport is fullzzzz" if full?
  @plane << plane
  plane = plane
 return "plane has landed"
end

private
attr_reader :plane
def full?
  plane.count >= @capacity
 end
end
