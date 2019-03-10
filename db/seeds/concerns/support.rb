# frozen_string_literal: true

module Support
  def seed(model, find_by, attributes = {})
    record = model.where(find_by).first_or_initialize(attributes)
    record.save!
    print '.'
  end
end
