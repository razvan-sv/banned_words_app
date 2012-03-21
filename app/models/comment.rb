class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body

  before_save :mask_banned_words

  def mask_banned_words
    self.body = BannedWords.mask(body)
  end
end