class Employee
   attr_reader :name, :email
   
   def initialize name,email
       @name = name
       @email = email
   end   
end

class HourlyEmployee < Employee
   def initialize name, email, hourly_rate, hours_worked
       super name, email
       @hourly_rate = hourly_rate
       @hours_worked = hours_worked

   end
   def calculate_salary

       @hourly_rate * @hours_worked

   end
end

class SalariedEmployee < Employee
   def initialize name, email, annual_salary
       super name, email
       @annual_salary = annual_salary
   end

   def calculate_salary
       @annual_salary
   end
   
end

class MultiPaymentEmployee < HourlyEmployee
   def initialize name, email, salary, hourly_rate, hours_worked
       super (name, email, hourly_rate, hours_worked)
       @salary = salary
   end
   
   def calculate_salary
       @salary + (@hourly_rate * @hours_worked)

   end
end

class Payroll
   def initialize(employees)
       @employees = employees
   end

   def pay_employees
       @employees.each {|emp| puts emp.name + " => " + (emp.calculate_salary.to_f - (emp.calculate_salary*0.018)).to_s}
   end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
giancarlo = HourlyEmployee.new('Giancarlo', 'g@example.com', 15, 40)
iago = HourlyEmployee.new('Iago', 'i@example.com', 15, 40)
puts josh.calculate_salary
puts nizar.calculate_salary
puts ted.calculate_salary



employees = [josh, nizar, ted, giancarlo, iago]

payroll = Payroll.new(employees)

payroll.pay_employees