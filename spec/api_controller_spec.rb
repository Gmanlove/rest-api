require 'rails_helper'

RSpec.describe ApiController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index, format: :json
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new person' do
      post :create, params: { person: { name: 'John Doe', age: 30 } }, format: :json
      expect(response).to have_http_status(:created)
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      person = Person.create(name: 'Jane Doe', age: 25)
      get :show, params: { id: person.id }, format: :json
      expect(response).to be_successful
    end
  end

  describe 'PUT #update' do
    it 'updates the person' do
      person = Person.create(name: 'Jane Doe', age: 25)
      put :update, params: { id: person.id, person: { age: 26 } }, format: :json
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the person' do
      person = Person.create(name: 'Jane Doe', age: 25)
      delete :destroy, params: { id: person.id }, format: :json
      expect(response).to have_http_status(:no_content)
    end
  end

  describe 'GET #find_by_name' do
    it 'finds a person by name' do
      person = Person.create(name: 'John Doe', age: 30)
      get :find_by_name, params: { name: 'John Doe' }, format: :json
      expect(response).to be_successful
    end
  end

  describe 'POST #create_by_name' do
    it 'creates a new person by name' do
      post :create_by_name, params: { name: 'Jane Doe', person: { age: 25 } }, format: :json
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['name']).to eq('Jane Doe')
    end
  end

  describe 'GET #show_by_name' do
    it 'shows a person by name' do
      person = Person.create(name: 'Jane Doe', age: 25)
      get :show_by_name, params: { name: 'Jane Doe' }, format: :json
      expect(response).to be_successful
      expect(JSON.parse(response.body)['name']).to eq('Jane Doe')
    end
  end

  describe 'PUT #update_by_name' do
    it 'updates a person by name' do
      person = Person.create(name: 'Jane Doe', age: 25)
      put :update_by_name, params: { name: 'Jane Doe', person: { age: 26 } }, format: :json
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['age']).to eq(26)
    end
  end

  describe 'DELETE #destroy_by_name' do
    it 'destroys a person by name' do
      person = Person.create(name: 'Jane Doe', age: 25)
      delete :destroy_by_name, params: { name: 'Jane Doe' }, format: :json
      expect(response).to have_http_status(:no_content)
    end
  end
end
