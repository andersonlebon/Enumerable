# frozen_string_literal: true

require_relative 'my_enumerable'

# A lsit that use some custom version of Enumerable
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    (0..@list.length - 1).each do |i|
      yield @list[i]
    end
  end
end