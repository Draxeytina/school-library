require './classes/student'
require './classes/teacher'
require './classes/book'
require './classes/rental'
module Create
  def check_response(response)
    false if %w[n N].include? response
    true if %w[y Y].include? response
  end

  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = check_response(gets.chomp)
    @persons.push(Student.new(@classroom, age, name, parent_permission: parent_permission))
    puts "Student has been successfully created! \n\n"
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(specialization, age, name))
    puts "Teacher has been sucessfully created! \n\n"
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.push(Book.new(title, author))
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
    @rentals.push(Rental.new(@books[rent_book_id], @persons[rental_people_id], dated))
    puts "Rental created successfully! \n\n"
  end
end
