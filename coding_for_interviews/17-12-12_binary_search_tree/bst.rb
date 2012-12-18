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

class Tree
  attr_reader :num_nodes
  attr_accessor :root

  def initialize()
    @root = nil
    @num_nodes = 0
  end
end

# TODO - remove increment num_nodes duplication
class BST < Tree

  def num_nodes()
    @num_nodes
  end

  def add(node)
    if @root.nil?
      @root = node
      @num_nodes += 1
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
      @num_nodes += 1
    end
    if node.val > current.val
      right = current.right
      if right.nil?
        current.right = node
      else 
        add_node(node, right)
      end
      @num_nodes += 1
    end
    # if a duplicate, do not add to tree
  end
end

class BST_Validator
  def self.valid_bst?(tree)
    @checked = []
    @to_check = []
    current = tree.root
    check_tree(current)
  end

  private

  def self.check_tree(node)
    return true if done?(node)
    
  end

  def self.valid_left?(node)
    unless node.left.nil?
      @to_check << node.left
      if node.left.val >= node.val
        raise "invalid tree"
      end
    end
  end

  def self.valid_right?(node)
    unless node.left.nil?
      @to_check << node.left
      if node.left.val >= node.val
        raise "invalid tree"
      end
    end
  end

  def self.done?(node)
    node.left.nil? and node.right.nil? and @to_check.empty?
  end

end
