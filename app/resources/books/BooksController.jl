module BooksController

using Genie.Renderer.Html, SearchLight, Books

function billgatesbooks()
    html(:books, :billgatesbooks, books = all(Book))
end

module API

using ..BooksController
using Genie.Renderer.Json, SearchLight, Books

function billgatesbooks()
    json(:books, :billgatesbooks, books = all(Book))
end

end

end
