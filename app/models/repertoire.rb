class Repertoire < ActiveRecord::Base
  attr_accessible :composer, :duration, :memorized, :on_jury, :title
end
