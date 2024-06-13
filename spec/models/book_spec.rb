require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with a title, an author and a date of publication" do
    book = Book.new(title: "Les Misérables", author: "Victor Hugo", publishedDate: "1850")
    expect(book).to be_valid
  end

  it "is invalid without a title" do
    book = Book.new(title: "", author: "Victor Hugo", publishedDate: "1850")
    expect(book).to_not be_valid
  end

  it "is invalid with a zero word author" do
    book = Book.new(title: "Les Misérables", author: "", publishedDate: "1850")
    expect(book).to_not be_valid
  end
end
