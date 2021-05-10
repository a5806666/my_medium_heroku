class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories
  has_many :follows
  has_many :bookmarks
  validates :username, presence: true, uniqueness: true
  has_one_attached :avatar

  # Vip功能
  enum role: {
    user: 0, 
    vip_user: 1, 
    platinum_user: 2, 
    admin: 3
  }

  def paid_user?
    # role == 1 or role == 2
    vip_user? or platinum_user?
  end

  # 書籤功能
  def bookmark?(story)
    bookmarks.exists?(story: story)
  end
  
  def bookmark!(story)
    if bookmark?(story)
      bookmarks.find_by(story: story).destroy
      return 'Unbookmarked'
    else
      bookmarks.create(story: story)
      return 'Bookmarked'
    end
  end
  # follow功能
  def follow?(user)
    # follows.where(following: user)
    follows.exists?(following: user)
  end

  def follow!(user)
    if follow?(user)
      follows.find_by(following: user).destroy
      return 'Follow'
    else
      follows.create(following: user)
      return 'Followed'
    end
  end
end
