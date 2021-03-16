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
    attr_reader :employees
    def initialize
        super()
        @employees = []
    end

    def bonus(multiplier)


        employees.each do |employee|

        end
    end
end

def bfs(target)
    quu = [employees]
    count_sal = 0
    until quu.empty? 
      ele = quu.shift 
      count_sal += employee.salary 
      ele.employees.each { |employee| quu << employee} 

    end

end

