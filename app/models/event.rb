class Event < ActiveRecord::Base

  belongs_to :user
  belongs_to :group

  validate :add_error_message

  def add_error_message
    if title.empty?
      errors[:base] << "タイトルを入力してください"
    end
  end

end
