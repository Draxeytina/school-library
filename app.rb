require 'date'
require './classes/menu'
require './classes/classroom'
require './classes/person_menu'
require './classes/create'
require './classes/display'
require './classes/storage'
require './classes/load_data'

class App
  include Menu
  include PersonMenu
  include Create
  include Display
  include LoadData

  def initialize
    @persons = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('Programming')
    load_stored_data
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
        quit
      end
    end
  end

  def load_stored_data
    @persons = create_persons(Storage.new('persons').load_data)
    @books = create_books(Storage.new('books').load_data)
    @rentals = create_rentals(Storage.new('rentals').load_data, @persons, @books)
  end

  def quit
    Storage.new('persons').save_data(@persons)
    Storage.new('books').save_data(@books)
    Storage.new('rentals').save_data(@rentals)
    exit
  end
end
