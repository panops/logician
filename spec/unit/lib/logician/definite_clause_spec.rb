require 'unit/helper'

describe Logician::DefiniteClause do
  
  it 'is a class' do
    described_class.should be_a(Class)
  end
  
  context 'in order to state what is true' do
    context 'the antecedent' do
      
      it 'is known' do
        subject.should respond_to(:antecedent)
      end
           
    end
    
    context 'the consequent' do
    
      it 'is known' do
        subject.should respond_to(:consequent)
      end
      
      it 'is true only when the antecedent is true' do
        subject.expects(:antecedent).returns(false)
        subject.consequent.should be_false
        
        subject.expects(:antecedent).returns(true)
        subject.consequent.should be_true
      end
      
    end
  end
  
end