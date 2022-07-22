require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(item)    
        while @s2.empty? == false
            @s1.push(@s2.pop)
        end
        @s1.push(item)
    end

    def remove
        while @s1.empty? == false
            @s2.push(@s1.pop)
        end
        @s2.pop 
    end

    def peek
        while @s1.empty? == false
            @s2.push(@s1.pop)
        end
        @s2.peek 
    end


end

# your code here
