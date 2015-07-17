class PagesController < ApplicationController
  def ref
    respond_to do |format|
      format.html
      format.js
    end
  end

end
