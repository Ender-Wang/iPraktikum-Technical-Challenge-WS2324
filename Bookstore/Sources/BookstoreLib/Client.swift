import Foundation

public class Client {
    /*
    Task 2.2:
    Output the Bookstore’s inventory
     */
    public static func main() {
        let bookstore = assembleBookstore()
        
        for book in bookstore.books {
            _ = assembleBookstore()
            print("\(book.title) by \(book.author):")
            if let genres = book.genres {
                for genre in genres {
                    if let subgenres = genre.subgenre {
                        print("- \(genre.name)\n-- (\(subgenres))")
                    } else {
                        print("- \(genre.name)")
                    }
                }
            } else {
                print("🕵: Not yet categorized")
            }
            print("\n")
        }
    }
    
    /*
    Task 2.1:
    Assemble your Bookstore (use the commented out function)
    */
    private static func assembleBookstore() -> Bookstore {
        let book1 = Book(title: "The Fellowship of the Ring", author: "J.R. Told", genres: [Genre(name: "Fantasy", subgenre: "Low fantasy")])
        let book2 = Book(title: "The Two Towers", author: "J.R.R. Mal", genres: [Genre(name: "Fantasy", subgenre: nil)])
        let book3 = Book(title: "The Return of the King", author: "R. Ride", genres: nil)
        let book4 = Book(title: "Harry Potter and the Philosopher's Stone", author: "J.K. Rowling", genres: [Genre(name: "Fantasy", subgenre: "Great fantasy")])
        let books = [book1, book2, book3, book4]
        return Bookstore(books: books)
    }
}
