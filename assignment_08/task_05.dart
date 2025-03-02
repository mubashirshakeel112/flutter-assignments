// Task 5: Library System with Inheritance
// Create a Book class with:
// ● title
// ● author
// ● pages
// Create a EBook class that inherits from Book and:
// ● Adds a field fileSize (MB)
// ● A method showEBookDetails() that prints book details and file size
// ✅
//  Create book & eBook objects and test showEBookDetails().

void main() {
  EBook eBook = EBook(
      title: "Flutter Cookbook",
      author: "Simone Alessandria",
      pages: 639,
      fileSize: "10MB");
  Book book =
      Book(title: "Beginning Flutter", author: "Marco L. Napoli", pages: 528);
  print("Book Detail");
  print("Title: ${book.title}, Author: ${book.author}, Pages: ${book.pages}");
  eBook.showEBookDetails();
}

class Book {
  String title;
  String author;
  int pages;

  Book({required this.title, required this.author, required this.pages});
}

class EBook extends Book {
  String? fileSize;

  EBook({required String title, required author, required pages, this.fileSize})
      : super(title: title, author: author, pages: pages);

  void showEBookDetails() {
    print("EBook Detail");
    print("Title: $title, Author: $author, Pages: $pages, FileSize: $fileSize");
  }
}
