require "itf/terms_and_modules/version"

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
        [:FallB, :FallAB, :FallBC, :FallABC]
      when :FallC
        [:FallC, :FallBC, :FallABC]
      when :SpringVacation
        [:SpringVacation]
      else raise ArgumentError, "invalid argument: no such module"
      end
    end
    module_function :terms_from_module

    KDB_INDEX = {
      SpringA: 1,
      SpringB: 2,
      SpringC: 4,
      SpringAB: 3,
      SpringABC: 7,
      SummerVacation: 4096,
      FallA: 8,
      FallB: 16,
      FallC: 32,
      FallAB: 40,
      FallBC: 48,
      FallABC: 56,
      SpringVacation: 2048
    }
  end
end
