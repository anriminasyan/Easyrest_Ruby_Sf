# frozen_string_literal: true

require_relative '../spec/spec_helper'
require_relative '../pages/login_page'

RSpec.shared_context 'login' do
let(:login) { LoginPage.new(@driver) }

  it 'can login with valid credentials' do
    login.click_sign_in
    login.type_email(user)
    login.type_password(pw)
    login.click_submit
    sleep(2)
    expect(@driver.find_element(css: '[style*="padding"]')).to be_displayed       
  end
end

RSpec.shared_context 'ban' do

end