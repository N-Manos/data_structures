require 'minitest'
require 'minitest/autorun'
require 'benchmark'
require 'stack_ruby.rb'


describe "it can push and pop values it stores" do
  it "must return the expected value" do
    @stack = Stack.new
    @stack.push(1)
    @stack.push(2)
    @stack.push(3)
    @stack.pop().must_equal 3
    @stack.pop().must_equal 2
    @stack.pop().must_equal 1
  end
end
