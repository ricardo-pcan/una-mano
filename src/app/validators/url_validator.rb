class UrlValidator < ActiveModel::EachValidator 
  def validate_each(record, attribute, value)
    unless value=~ /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
      record.errors[attribute] << (options[:message] || "wrong url structure")
    end
  end
end
