class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  after :store, :after_store
  after :remove, :remove_base_64

  if Rails.env.development?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def after_store(file)
    if self.file.present? and self.file.exists?
      Rails.env.production? ? file_contents = open(self.url) {|f| f.read} : file_contents = open(self.path) {|f| f.read}
      file_contents_base_64 = "data:image/#{self.file.extension};base64," + Base64.strict_encode64(file_contents)
      self.model.update_attribute((self.mounted_as.to_s + "_base_64"), file_contents_base_64)
    else
      self.model.update_attribute(self.mounted_as,nil)
    end
  end

  def remove_base_64
    self.model.update_attribute((self.mounted_as.to_s + "_base_64").to_sym,nil)
  end

  version :thumb do
    process :resize_to_fill => [90, 90]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # TODO: Validation of size/aspect
  def validate_min_size(min_size)
    # return true if MiniMagick::Image.open(self.path).size.to_f / 1000 > min_size
    true
  end

  def validate_max_size(max_size)
    # return true if MiniMagick::Image.open(self.path).size.to_f / 1000 < max_size
    true
  end

  def validate_aspect_ratio(width_ratio, height_ratio)
    # image_ratio = MiniMagick::Image.open(self.path).width.to_f / MiniMagick::Image.open(self.path).height
    # desired_ratio = width_ratio.to_f / height_ratio
    # return true if (image_ratio - desired_ratio).abs < 0.5
    true
  end

end
