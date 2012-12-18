# binary search trees are binary trees
# for which the following 4 properties are true:
# 1. left node is less than parent
# 2. right node is greater than parent
# 3. both left and right subtrees are binary search trees
# 4. there are no duplicates

class Node
  attr_accessor :left, :right
  attr_reader :val

  def initialize(val, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class BST
  attr_reader :root

  def initialize()
    @root = nil
  end

  def add(node)
    if @root.nil?
      @root = node
    else
      add_node(node, @root)
    end
  end

  private

  def add_node(node, current)
    if node.val < current.val
      left = current.left
      if left.nil?
        current.left = node
      else 
        add_node(node, left)
      end
    end
    if node.val > current.val
      right = current.right
      if right.nil?
        current.right = node
      else 
        add_node(node, right)
      end
    end
    # equal
    raise "Error: Duplicates found for node value #{node.val}!"
  end
end

class BST_Validator
  def self.valid_bst?(tree)

  end
end
