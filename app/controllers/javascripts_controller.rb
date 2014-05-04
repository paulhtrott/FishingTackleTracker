class JavascriptsController < ApplicationController
  def dynamic_tackle_type
    @tackle = TackleType.find(:all)
  end
end
