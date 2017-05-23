class Topic < ApplicationRecord
  validates_presence_of :title

  has_many :blogs

  def self.with_blogs
    # Muestra solo los que tienen pero el GUEST User no puede ver los drafts así que el topic puede tener blogs
    # que solo tienen draft y para el guestuser sera vacío
    includes(:blogs).where.not(blogs: {id: nil})
  end
end