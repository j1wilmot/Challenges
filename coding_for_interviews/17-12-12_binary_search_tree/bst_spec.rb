require 'minitest/spec'
require 'minitest/autorun'
require_relative 'bst'

describe BST do
  it "must not have duplicates" do
    bst = BST.new
    bst.add(Node.new(4))
    lambda { bst.add(Node.new(4)) }.must_raise(RuntimeError)
  end
end
