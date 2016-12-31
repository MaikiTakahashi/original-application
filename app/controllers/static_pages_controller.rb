class StaticPagesController < ApplicationController
  def home
    @maid4 = Maid.find_by(:id => '4')
  end
end
