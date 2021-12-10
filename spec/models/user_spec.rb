require 'rails_helper'

RSpec.describe User do
  it 'テストユーザーが作成できる' do
    expect(FactoryBot.build(:user)).to be_valid
  end
end
