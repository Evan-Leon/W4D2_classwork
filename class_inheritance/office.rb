class Employee
    attr_reader :title, :salary, :boss
    def initialize(name, title, salary, boss)
        @name = name  
        @title = title  
        @salary = salary
        @boss = boss 
    end

    def bonus(multiplier)
        salary * multiplier
    end
end

class Manager < Employee

    # attr_accessor :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def add_employee(manager, employee)
        @employees << employee
    end

    def employees
        @employees = []
    end


    def bonus(multiplier)

        quu = [employees]
        count_sal = 0
        until quu.empty? 
            ele = quu.shift 
            count_sal += ele.salary 
            ele.employees.each { |employee| quu << employee} 
        end

        count_sal * multiplier

    end

end


ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

ned.add_employee(darren)
darren.add_employee(shawna)
darren.add_employee(david)

p darren.bonus(4)





# def bfs(target)
#     quu = [employees]
#     count_sal = 0
#     until quu.empty? 
#       ele = quu.shift 
#       count_sal += employee.salary 
#       ele.employees.each { |employee| quu << employee} 

#     end

# end

