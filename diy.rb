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

class Queue
    def initialize
        @array = []
    end

    def enqueue(el)
        @array << el
    end

    def dequeue
        #shift is the opposite of pop
        @array.shift
    end

    def peek
        return @array[0]
    end
end

class Map
    def initialize
        @array = []
    end

    def set(k, v)
        @array.each do |subarray|
            if subarray[0] == k
                subarray[1] = v
                return
            else
                next
            end
        end
        @array << [k, v]
        return
    end

    def get(k)
        @array.each do |subarray|
            if subarray[0] == k
                return subarray[1]
            else
                next
            end
        end
        return nil
    end

    def delete(k)
        @array.each_with_index do |subarray, i|
            if subarray[0] == k
                @array.delete_at(i)
                return
            else
                next
            end
        end
        return nil
    end

    def show
        return @array
    end
end