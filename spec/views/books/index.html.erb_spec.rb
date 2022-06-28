require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        body: "MyText"
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        body: "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "p", text: /Title/, count: 2
    assert_select "p", text: /Author/, count: 2
    assert_select "p", text: /MyText/, count: 2
  end
end
