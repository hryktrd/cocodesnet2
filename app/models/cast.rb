class Cast < ActiveRecord::Base
  belongs_to :shop_info
  has_one :play_kind
  validate :file_invalid?

  #写真アップロード用
  def upfile=(upfile)
  	self.phototype = upfile.content_type
  	self.photo = upfile.read
  end

  private
  def file_invalid?
  	ps = ['image/jpeg', 'image/gif', 'image/png']
  	errors.add(:photo, 'は画像ファイルではありません') if !ps.include?(self.phototype)
  	errors.add(:photo, 'のサイズが2MBを超えています') if self.photo.length > 2.megabyte
  end
end
