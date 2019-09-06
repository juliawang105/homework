class Stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        return @stack[0]
    end
end

class Queue 
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        return @queue[-1]
    end
end

class Map

    def initialize
        @tracker = []
    end

    def set(key,value)
       @tracker << [key,value] if @tracker.empty?

        @tracker.each do |sub|
            if sub[0] == key
                sub[1] = value
            else 
                @tracker << [key, value]
            end
        end
        @tracker
    end

    def get(key)
        @tracker.each do |sub|
            return sub[1] if sub[0] == key
        end
        nil
    end

    def delete(key)
        @tracker.each.with_index do |sub,i|
            if sub[0] == key
                @tracker = @tracker[0...i] + @tracker[i+1..-1]
            end
        end
    end

    def show
        @tracker
    end


end