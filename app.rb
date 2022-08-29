require 'date'
require './classes/menu'
require './classes/classroom'
require './classes/person_menu'
require './classes/create'
require './classes/display'

class App
  include Menu
  include PersonMenu
  include Create
  include Display

  def initialize
    @persons = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('Programming')
  end

  def display_menu
    loop do
      case menu
      when 1
        list_all_books
      when 2
        list_all_people
      when 3
        person_menu
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

  def run
    display_menu
  end
end
