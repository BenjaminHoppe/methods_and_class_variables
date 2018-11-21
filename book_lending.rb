class Book

  @@on_shelf = []
  @@on_loan = []

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    return new_book
  end

  def self.current_due_date
    return @due_date
  end

  def self.overdue_books
    list = []
    @@on_loan.each do | book |
      if book.due_date < Time.now
        list.push(book)
      end
    end
    return list
  end

  def self.browse
    puts "book title is #{@@on_shelf.sample.title}"
  end

  def self.avilable
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

      def initialize(title, author, isbn)
        @title = title
        @author = author
        @isbn = isbn
        @due_date = Time.now + 604800
      end

      # Reader
      def due_date
        @due_date
      end

      def title
        @title
      end

      def borrow
        if self.lent_out?
          return false
        else
          @due_date = Time.now + 604800
          @@on_loan << self
          @@on_shelf.delete(self)
          return true
        end
      end


      # Writer
      def due_date=(due_date)
        @due_date = due_date
      end

      def return_to_libary
        if self.lent_out? == false
          return false
        else
          @@on_shelf << self
          @@on_loan.delete(self)
          return true
        end
      end

      def lent_out?
        return Book.borrowed.include?(self)
      end
end

the_martian = Book.create("The Martian", "Andy Weir", 3594)

crushing_it = Book.create("Crushing it", "Gary Vee", 1394)

crime_and_punishment = Book.create("Dostoyevsky","Crime & Punshment", 1847)



# puts the_martian.return_to_libary
# puts the_martian.return_to_libary
puts Book.overdue_books
