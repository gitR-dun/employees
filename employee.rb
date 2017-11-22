# Arrays

# # model some employees using ruby
# # employee first name, last name, salary, active status

# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "campos", 70000, false]

# # print some information about the employees
# # Majora Carter makes $80000 per year

# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year"

# # Hashes

# employee1 = {
#  "first_name" => "Majora",
#  "last_name" => "Carter",
#  "salary" => 80000,
#  "active" => true
# }



# # fancy syntax
# employee2 = {
#   first_name: "Danilo",
#   last_name: "Campos",
#   salary: 70000,
#   active: true
# }

# # logical syntax
# employee2 = {
#   :first_name => "Danilo",
#   :last_name => "Campos",
#   :salary => 70000,
#   :active => true
# }

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year"


# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year"



# classes
class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def active
    @active
  end

  def last_name=(new_last_name)
    @last_name = new_last_name
  end


  def print_info
    "#{first_name} #{last_name} makes $#{salary} per year"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end



employee1 = Employee.new("Majora", "Carter", 80000, true)
employee2 = Employee.new("Danilo", "Campos", 70000, false)

# employee1.last_name = "Campos"
# p employee1

# p "before the raise"
p employee1.print_info
p employee2.print_info

# employee1.give_annual_raise

# p "after the raise"
# p employee1.print_info
