require './email_reportable'
require './employee.rb'
require_relative 'manager.rb'
require './intern.rb'

employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})

# employee1.send_report

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

manager1 = Manager.new({:first_name => "Bill", :last_name => "BoBaginns", :salary => 800000, :active => true, :employees => [employee1, employee2]})

manager1.send_report

# manager2 = Manager.new(first_name: "Peter", last_name: "Jang", salary: 700000, active: false)


#  an Intern can do everything an Employee can, but ALSO can send reports


intern1 = Intern.new(first_name: "Indy", last_name: "Jones", salary: 0, active: true)

p intern1.send_report
