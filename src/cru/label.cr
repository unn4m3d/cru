require "./control"

module Cru
  class Label < Control
    def initialize(text : String)
      @label = UI.new_label(text)
      super(@label)
    end

    def text
      String.new(UI.label_text(@label))
    end

    def text=(value : String)
      UI.label_set_text(@label, value)
    end
  end
end
