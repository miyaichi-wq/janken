require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーション' do
    it 'ユーザー名は必須であること' do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include "can't be blank"
    end

    it '勝利数は必須であること' do
      user = build(:user, win: nil)
      user.valid?
      expect(user.errors[:win]).to include "can't be blank"
    end
  end
end
