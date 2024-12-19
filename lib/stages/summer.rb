module Stages
  class Summer
    def call(input)
      input[:numbers].sum
    end
  end
end
