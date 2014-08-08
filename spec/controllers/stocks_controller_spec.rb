require 'spec_helper'

describe StocksController do
  describe 'GET #index' do                #Использовать метод match_array
    it 'populates of array of all stocks'
    it 'rednders the :index view'
  end

  describe 'GET #show' do
    it 'assigns the requested stock to @stock' do
      stock = create(:stock)
      get :show, id: stock
      expect(assigns(:stock)).to eq stock
    end
    it 'renders the :show view'
  end


  #......И так далее......ф
end