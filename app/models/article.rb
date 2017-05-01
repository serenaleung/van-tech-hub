class Article < ApplicationRecord
  after_initialize :default_values

  private
  def default_values
    self.image ||= ""
  end
end
