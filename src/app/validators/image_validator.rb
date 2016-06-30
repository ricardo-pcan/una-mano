class ImageValidator < ActiveModel::EachValidator
  def validate_each( record, attribute, value )
    unless value=~ /\.(jpe?g|png)$/i
      record.errors[attribute] << (options[:message] || "wrong image type")
    end
  end
end
