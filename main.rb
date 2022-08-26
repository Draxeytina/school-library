require './app'
require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/book'
require_relative './classes/rental'
require_relative './classes/classroom'

class Main
  include App

  def initialize
    @persons = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('Programming')
  end

  def menu
    puts "----------------------------------------------\n"
    puts 'WELCOME TO SCHOOL LIBRARY'
    puts "----------------------------------------------\n\n"

    puts 'Please choose an option by entering a number:'
    puts '1 - LIST ALL BOOKS'
    puts '2 - LIST ALL PEOPLES'
    puts '3 - CREATE A PERSON'
    puts '4 - CREATE A BOOK'
    puts '5 - CREATE A BOOK RENTAL'
    puts '6 - LIST ALL RENTALS FOR A GIVEN PERSON ID'
    puts "7 - EXIT\n\n"
    puts "----------------------------------------------\n\n\n"
    option = gets.chomp
    Integer(option)
  end

  def create_person
    puts 'Create: '
    puts '1 - Student'
    puts '2 - Teacher'
    puts '3 - Cancel'
    puts "\n"

    print 'Option: '
    option = gets.chomp.to_i

    case option
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  def display
    loop do
      case menu
      when 1
        list_all_books
      when 2
        list_all_people
      when 3
        create_person
      when 4
        create_book
      when 5
        create_rental
      when 6
        list_all_rentals
      else
        break
      end
    end
  end
end

main = Main.new

main.display
