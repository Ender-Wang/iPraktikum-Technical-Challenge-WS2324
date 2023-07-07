import Foundation

/*
Task 1.1:
Implement Bookstore
*/
public class Bookstore {
    let books: [Book]
    init(books: [Book]) {
        self.books = books
    }
}

/*
Task 1.2:
Implement the structure Book
*/
struct Book {
    let title: String
    let author: String
    let genres: [Genre]?
}

/*
Task 1.3:
Implement the structure Genre
*/
struct Genre {
    let name: String
    let subgenre: String?
}
