module Enumerable
    def my_each(n)
        return unless block_given?
        for i in n
        yield i 
        end
      end
    
    def my_each_with_index(n)
      return unless block_given?
      index = 0
      for i in n
      yield i , index
      index+=1
      end
    end

    def my_select(n)
        return unless block_given?
        array = []
        my_each(n){|x| array.push(x) if yield x}
    end
    #y=[8,2,3,4,5,6,7]
    #my_select(y){|x| true if x%2==0}
    # => [8, 2, 4, 6]

    def my_all(n)
        return unless block_given?
        array = []
        my_each(n){|x| array.push(x) if yield x}
         return false if(array.length < n.length)
         return true
      end
    #y=[8,2,3,4,5,6,7]
    #my_select(y){|x| true if x%2==0}
    # => false
    #y=[8,2,4]
    #my_select(y){|x| true if x%2==0}
    # => true

    def my_none(n)
        return unless block_given?
        array = []
        my_each(n){|x| array.push(x) if yield x}
         return true if(array.length == 0)
         return false
      end
      #y=[5,1,3,7]
      #my_none(y){|x| true if x%2==0}
      #=>true
      #y=[2,1,3,7]
      #my_none(y){|x| true if x%2==0}
      #=>false
end