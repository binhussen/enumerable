module MyEnumerable
    def all 
        each do |x|
            if !yield(x) 
                return false
        end
        return true
    end

    def any
        each do |t|
            if yield(x) 
                return true
        end
        false
    end

    def filter
        result = []
        each do |d|
            if yield(d)
                result<<d
        end
        false
    end
end
