require 'minitest/spec'
require 'minitest/autorun'
require_relative 'bst'

describe BST do
  it "must not add duplicates" do
    bst = BST.new
    bst.add(Node.new(4))
    bst.add(Node.new(4))
    bst.num_nodes.must_equal 1
  end

  #Should be validated by BST_Validator
end

describe BST_Validator do
  it "should not validate trees with duplicates" do
    tree = Tree.new
    root = Node.new(5)
    root.left = Node.new(5)
    tree.root = root
    BST_Validator.valid_bst?(tree).must_equal false
  end
end
