class  A
 def ss 
    puts 'anji'
    yield
    puts 'anji'
 end
end
 obj = A.new
 obj.ss{ puts 'yy'}
