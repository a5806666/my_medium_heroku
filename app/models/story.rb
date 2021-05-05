class Story < ApplicationRecord
  belongs_to :user
  has_one_attached :cover_image
  acts_as_paranoid
  validates :title, presence: true
  

  # 查詢功能 gem paranoid取代
  # default_scope { where(deleted_at: nil) } 
  # def destroy
  #   update(deleted_at: Time.now)
  # end

  # AASM
  include AASM
  aasm(column: 'status', no_direct_assignment: true ) do
    state :draft, initial: true
    state :published

    event :publish do
      transitions from: :draft, to: :published
    end

    event :unpublish do
      transitions from: :published, to: :draft
    end
  end

  # FriendlyId & babosa(亂碼轉中)
  extend FriendlyId
  friendly_id :slug_candidate, use: :slugged

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :russian).to_s
  end

  private
  def slug_candidate
    [
      :title,
      [:title, SecureRandom.hex[0, 8]]
    ]
  end
end
