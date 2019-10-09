class Stack
    def initialize
        @array = []
    end

    def push(el)
        @array << el
    end

    def pop
        @array.pop
    end

    def peek
        return @array[-1]
    end
end