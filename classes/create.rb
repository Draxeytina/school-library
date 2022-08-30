require './classes/student'
require './classes/teacher'
require './classes/book'
require './classes/rental'
module Create
  def check_response(response)
    false if %w[n N].include? response
    true if %w[y Y].include? response
  end

  def retrieve(string)
    label = string.capitalize
    print "#{label}: "
    gets.chomp
  end

  def creator(array, item)
    array.push(item)
  end

  def create_student
    age = retrieve('age')
    name = retrieve('name')
    print 'Has parent permission? [Y/N]: '
    parent_permission = check_response(gets.chomp)
    new_student = Student.new(@classroom, age, name, parent_permission: parent_permission)
    creator(@persons, new_student)
    puts "Student has been successfully created! \n\n"
  end

  def create_teacher
    age = retrieve('age')
    name = retrieve('name')
    specialization = retrieve('specialization')
    new_teacher = Teacher.new(specialization, age, name, parent_permission: true)
    creator(@persons, new_teacher)
    puts "Teacher has been sucessfully created! \n\n"
  end

  def create_book
    title = retrieve('title')
    author = retrieve('author')
    new_book = Book.new(title, author)
    creator(@books, new_book)
    puts "Book has been sucessfully created! \n\n"
  end

  def create_rental
    d = Time.now
    dated = Date.new(d.year, d.month, d.day)
    if @books.empty?
      print "There are no books\n\n"
      return
    end
    if @persons.empty?
      print "There are no persons\n\n"
      return
    end
    puts 'Select book ID'
    @books.each_with_index { |book, index| puts "#{index}: #{book.title} (#{book.author}) " }
    rent_book_id = gets.chomp.to_i
    puts 'Select person ID'
    @persons.each_with_index { |person, index| puts "#{index}: #{person.name}" }
    rental_people_id = gets.chomp.to_i
    new_rental = Rental.new(@books[rent_book_id], @persons[rental_people_id], dated)
    creator(@rentals, new_rental)
    puts "Rental created successfully! \n\n"
  end
end
