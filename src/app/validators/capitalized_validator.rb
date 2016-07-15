class CapitalizedValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value
      unless value == value.capitalize
        record.errors[attribute] << (options[:message] || "the value must be capitalized word")
      end
    end
  end
end
