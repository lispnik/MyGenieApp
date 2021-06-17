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

using Genie.Renderer.Html

function billgatesbooks()
    html(:books, :billgatesbooks, books = BillGatesBooks)
end

end
