class Spree::ProducerPhoto < Spree::Base
  belongs_to :viewable, :polymorphic => true
  # belongs_to :producer, class_name: 'Spree::Producer'

  has_attached_file :image,
                    styles: { mini: "64x64", small: "220x", medium: "800x"  },
                    url: '/spree/producers/:producer_id/photos/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/producers/photos/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
