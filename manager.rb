class Employee
  attr_reader :first_name, :salary, :active
  attr_writer :active
  attr_accessor :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year wahoooooo"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end




# A manager, does EVERYTHING an employee does but also can send reports

class Manager < Employee
  attr_accessor :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    # give all the employees associated with this manager a raise
    # get my employees
    # i = 0
    # employees.length.times do
    #   employees[i].give_annual_raise
    #   i += 1
    # end
    employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    # get the employees
    # loop through
    # fire them
    employees.each do |employee|
      employee.active = false
    end
  end

  def send_report
    p "about to send the report..."
    # write some code here
    p "totally just sent that report"
  end
end



employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})

# employee1.send_report

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

manager1 = Manager.new({:first_name => "Bill", :last_name => "BoBaginns", :salary => 800000, :active => true, :employees => [employee1, employee2]})

manager1.fire_all_employees

# manager2 = Manager.new(first_name: "Peter", last_name: "Jang", salary: 700000, active: false)


# manager1.print_info

# manager1.send_report







