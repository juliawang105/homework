require "set"
class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        self.value = value
        self.neighbors = []
    end

    def add_neighbors(node)
        self.neighbors << node
    end

    def bfs(starting_node, target_val)
        queue = [starting_node]
        visited = Set.new()
        until queue.empty?
           current = queue.shift
           if !visited.include?(current)
              if current.value == target_val
                return current 
           else
            visited.add(current)
            queue +=  current.neighbors
           end
           end
        end
        return nil
    end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

puts a.bfs(a, "f")
end