# frozen_string_literal: true

# a extension for the list object, to be able to make use of it's each function
module MyEnumerable
  def all?
    each do |e|
      return false unless yield e
    end
    true
  end

  def any?
    each do |e|
      return true if yield e
    end
    false
  end

  def filter
    filtered = []
    each { |e| filtered.push(e) if yield e }
    filtered
  end

  def max?
    max = nil
    each do |e|
      max = e if max.nil?
      max = e if max < e
    end
    max
  end
end
