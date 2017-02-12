class StaticPagesController < ApplicationController
  def home
    @osusume_maids = Maid.where(category: "osusume")
    @popular_maids = Maid.where(category: "popular")
  end
end
