require 'spec_helper'
require 'itf/terms_and_modules'

describe Itf::TermsAndModules do
  it "should match spring modules" do
    Itf::TermsAndModules.terms_from_module(:SpringA) == ([:SpringA, :SpringAB, :SpringABC])
  end

  it "should know KDB terms' index" do
    Itf::TermsAndModules::KDB_INDEX[:SpringVacation] == 2048
  end
end
