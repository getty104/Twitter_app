class User < ApplicationRecord
  belongs_to :group, optional: true
	attr_accessor :remember_token, :new_group, :selected_group
	validates :name,  presence: true
	validates :data,  presence: true
	validates :account, presence: true, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  

before_save :find_or_create_group
  def find_or_create_group
    if group_name.present?
      self.group = Group.find_or_create_by!(name: group_name)
    else
      self.group = nil
    end
  end

 # 与えられた文字列のハッシュ値を返す
 def User.digest(string)
 	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
 	BCrypt::Engine.cost
 	BCrypt::Password.create(string, cost: cost)
 end

  # ランダムなトークンを返す
  def User.new_token
  	SecureRandom.urlsafe_base64
  end

  def remember
  	self.remember_token = User.new_token
  	update_attribute(:remember_digest, User.digest(remember_token))
  end

  # 渡されたトークンがダイジェストと一致したらtrueを返す
  def authenticated?(remember_token)
  	return false if remember_digest.nil?
  	BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

   # ユーザーログインを破棄する
   def forget
   	update_attribute(:remember_digest, nil)
   end
end
