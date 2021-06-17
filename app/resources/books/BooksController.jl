module BooksController

struct Book
    title::String
    author::String
end

const BillGatesBooks = Book[
    Book("The Best We Could Do", "Thi Bui"),
    Book("Evicted: Poverty and Profit in the American City", "Matthew Desmond"),
    Book("Believe Me: A Memoir of Love, Death, and Jazz Chickens", "Eddie Izzard"),
    Book("The Sympathizer", "Viet Thanh Nguyen"),
    Book("Energy and Civilization, A History", "Vaclav Smil")]

function billgatesbooks()
    "
    <h1>Bill Gates' list of recommended books</h1>
    <ul>
    $(["<li>$(book.title) by $(book.author)</li>" for book in BillGatesBooks]...)
    </ul>
    "
end

end
