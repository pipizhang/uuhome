Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints SubdomainConstraint.new('cms') do
    scope module: 'admin' do
      root 'home#index'
    end
  end

  constraints SubdomainConstraint.new(['', 'www']) do
    scope module: 'frontend' do
      root 'home#index'

    end
  end

end
