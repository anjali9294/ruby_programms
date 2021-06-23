# base class
class Employee
  @@count = 0
  @@sum = 0
  def data(arr, num)
    (0...num).each do |i|
      (i+1...num).each do |j|
    
      if (arr[i]['name'] == (arr[j]['name'])) && (i != j)
        @@sum = @@sum + arr[j]['value'].to_i
        @@count += 1
      end
      arr[j]['value'] = @@sum
      puts arr[i]
    end
   end
  #  (0..@@count/2).each do |i|
  #   puts arr[i]
  #  end
 
end
end
# p 'enter no of elements'
# num = gets.chomp.to_i
# arr = []
# (1..num).each do
#   emp = { 'name' => 'null', 'value' => 'null' }
#   print 'Enter your name : '
#   data = gets.chomp
#   emp.store('name', data)

#   print 'Enter your value : '
#   data = gets.chomp
#   emp.store('value', data)
#   arr.push(emp)
# end

num = 3

arr = [{"name"=>"a", "value"=>"75.000000"},
 {"name"=>"b", "value"=>"25.000000"},
 {"name"=>"a", "value"=>"75.01000"},
]

obj = Employee.new
obj.data(arr, num)