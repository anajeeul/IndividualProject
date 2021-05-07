FactoryBot.define do
    factory :user do
        email {"noemail@gmail.com"}
        password {Devise.friendly_token.first(8)}

    end

end

