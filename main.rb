require './app'
require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/book'
require_relative './classes/rental'
require_relative './classes/classroom'
require_relative './classes/menu'
require_relative './classes/create_person'

class Main
  include App
  include Menu
  include Create_person

  def initialize
    @persons = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('Programming')
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
