# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe Api::V1::SessionsController do
  let_it_be(:user) { create(:user) }

  path '/api/v1/sign_in' do
    post 'Аутентифицироваться' do
      tags 'Аутентификация'
      produces 'application/json'

      response 200, 'Получить токен' do
        run_test! do
          expect(response_json[:access]).to be_present
        end
      end
    end
  end

  path '/api/v1/sign_out' do
    delete 'Разлогиниться' do
      tags 'Аутентификация'
      produces 'application/json'

      response 200, 'Получить токен' do
        run_test! do
          expect(response_json[:access]).to be_present
        end
      end
    end
  end

  path '/api/v1/sessions/:id' do
    put 'Обновить токен аутентификации' do
      tags 'Аутентификация'
      produces 'application/json'

      response 200, 'Получить токен' do
        run_test! do
          expect(response_json[:access]).to be_present
        end
      end
    end
  end

  path '/api/v1/current_user' do
    get 'Получить данные текущего пользователя' do
      tags 'Аутентификация'
      produces 'application/json'

      response 200, 'Получить токен' do
        run_test! do
          expect(response_json[:access]).to be_present
        end
      end
    end
  end
end