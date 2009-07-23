module Mingle
  class TransitionExecution < Mingle::Base
    def self.transition(transition_name, card, comment)
      card = card.number if card.is_a?(Mingle::Card)
      t = self.new
      t.attributes = {'transition' => transition_name, 'card' => card, 'comment' => comment}
      t.save
    end
  end
end