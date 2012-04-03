module Logician
  # A DefiniteClause represents a single relation, existant or intentional, within the 
  # Universe.
  class DefiniteClause
    
    # A Rule has a consequent, that which is true if the antecedent is true
    def consequent
      antecedent
    end
    
    # A Rule has an antecedent, which determines the truth of the consequent
    attr_reader :antecedent
    
  end
end