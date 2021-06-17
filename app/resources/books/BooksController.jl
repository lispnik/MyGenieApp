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
    [
        Html.h1() do
            "Bill Gates' list of recommended books"
        end
        Html.ul() do
            @foreach(BillGatesBooks) do book
                Html.li() do 
                    book.title * " by " * book.author
                end
            end
        end
    ]
end

end
