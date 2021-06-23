class A
    def s 
     puts 's method'
     yield
     puts 'ss'
    end
end
obj = A.new
obj.s{ return }
