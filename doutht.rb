class Call_proc
   def inst(str)
     aa = str.delete(' ')
    p aa.length
   end
end

obj = Call_proc.new
p 'enter a string'
str = gets.chomp
obj.inst(str)
