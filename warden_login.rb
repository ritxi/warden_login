# spec/rails_helper.rb
# add to your rails_helper inside the

module WardenLogin
  def signin_as(user, opts = {})
    scope = opts[:scope] || calculate_scope_for(user)
    login_as(user, scope: scope)

    return unless block_given?
    yield

    logout(scope)
  end

  # def signout
  #   logout(scope)
  # end

  def calculate_scope_for(user)
    user.class.to_s.demodulize.underscore.to_sym
  end
end

RSpec.configure do |config|
  config.include Warden::Test::Helpers, type: :request
  config.include WardenLogin

  config.before(:each, type: :request) { Warden.test_mode! }
  config.after(:each, type: :request) { Warden.test_reset! }
end
