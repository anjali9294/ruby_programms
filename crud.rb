require 'pstore'
class Crud_oprations
    @@id = 1
  def data(key)
    case key
    when "c"
      p 'enter no of elements'
      $num = gets.chomp.to_i
      $arr = []
      (1..$num).each do
        std = {'id' => "#{@@id}",'name' => 'null', 'age' => 'null', 'subject' => 'null' }
        std.store('id', @@id)
        print 'Enter your name : '
        data = gets.chomp
        std.store('name', data)
        print 'Enter your age : '
        data = gets.chomp.to_i
        std.store('age', data)
        print 'Enter your subject : '
        data = gets.chomp
        std.store('subject', data)
        $arr.push(std)
        @@id += 1
        File.write("log.rb",$arr)
      end
    when 'd'
        p 'enter record id for delete'
        record_id = gets.chomp.to_i
        File.read("log.rb") do |i|
           if $arr[i]['id'] == record_id
            $arr[i].remove()
            puts 'your record is removed permanently'
           else
            p 'not inserted' 
           end
        end
    else 
      p 'kjfj'
    end
   end
end

obj = Crud_oprations.new
p 'enter your name'
name = gets.chomp
p "hello #{name}"

p 'below menu will decribe the instructions'
p 'If you want to create record press c '
p 'If you want to delete record press d '
p 'If you want to check record press r '
p 'If you want to update record press u '
p 'press key'
key = gets.chomp
obj.data(key)
# class Employee
#     def data(arr, num)
#       (0...num).each do |i|
#         puts arr[i] if arr[i]['age'] > 27 && arr[i]['department'] == 'hr'
#       end
#     end
#   end
  
  
#   obj = Employee.new
#   obj.data(arr, num)
# File.open("test.txt", "w+") do |f|
#     a.each { |element| f.puts(element) }
#   end