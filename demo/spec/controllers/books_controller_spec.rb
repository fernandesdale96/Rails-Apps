require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  render_views
  
  describe 'POST /books' do
    it 'create a new book object' do
      post :create, params: {name: "Harry Putters"}

      expect(Book.count).to eq(1)
    end


    it 'responds with a book object' do
      post :create, params: {name: "HP"}

      expected_response = {
        book: {
          name: 'HP'
        }
      }

      expect(response.body).to eq(expected_response.to_json)
    end
  end

end
