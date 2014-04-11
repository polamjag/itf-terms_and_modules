#require "itf/terms_and_modules/version"

module Itf
  module TermsAndModules
    def terms_from_module(target_module)
      case target_module.to_sym
      when :SpringA 
        [:SpringA, :SpringAB, :SpringABC]
      when :SpringB
        [:SpringB, :SpringAB, :SpringABC]
      when :SpringC
        [:SpringC, :SpringABC]
      when :SummerVacation
        [:SummerVacation]
      when :FallA
        [:FallA, :FallAB, :FallABC]
      when :FallB
        [:FallB, :FallAB, :FallABC]
      when :FallC
        [:FallC, :FallABC]
      when :WinterVacation
        [:WinterVacation]
      else raise ArgumentError, "invalid argument: no such module"
      end
    end
    module_function :terms_from_module
  end
end
