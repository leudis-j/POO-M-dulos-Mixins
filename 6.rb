module Test
  def result
    average = (score1 + score2) / 2.0
    puts average > 4 ? "Estudiante aprobado" : "Estudiante reprobado"
  end
end

module Attendance
  def student_quantity
    puts "Numero de Estudiantes: #{quantity}"
  end
end

class Student
  include Test
  extend Attendance

  @@quantity = 0
  def initialize(name, score1 = 4, score2 = 4)
    @@quantity += 1
    @name = name
    @score1 = score1
    @score2 = score2
  end

  attr_reader :score1, :score2
  def self.quantity
    @@quantity
  end
end
s = [['Angel', 6, 3], ['carlos', 2, 5], ['jose', 5, 5], ['pedro', 3, 7], ['Fernando', 4, 1], ['Gabril', 2, 6]]

s.each { |e| Student.new(*e).result }
Student.student_quantity
