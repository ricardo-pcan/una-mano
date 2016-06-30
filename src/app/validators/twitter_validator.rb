class TwitterValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value) 
    unless value =~ /^@?(\w){1,15}$/
      record.errors[attribute] << (options[:message] || "wrong twitter structure")
    end
  end
end
