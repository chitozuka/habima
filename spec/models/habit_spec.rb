require 'rails_helper'

RSpec.describe Habit, type: :model do
  let!(:habit) { FactoryBot.create(:habit) }

  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(habit).to be_valid
    end

    it 'is not valid with a name' do
      habit.name = nil
      expect(habit).to_not be_valid
    end

    it 'is not valid with a empty name' do
      habit.name = ''
      expect(habit).to_not be_valid
    end

    it 'is not valid with too long name' do
      habit.name = 'a' * 257
      expect(habit).to_not be_valid
    end
  end
end
