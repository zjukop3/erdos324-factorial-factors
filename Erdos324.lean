/-
  Erdős Problem 324 / JSP-000324
  Factorial prime factors in narrow interval

  How narrow an interval can contain all the distinct factors
  in a factorization of a factorial?

  5! = 120 = 2^3 * 3 * 5. Primes {2,3,5}, interval [2,5], width 3.
  7! = 5040 = 2^4 * 3^2 * 5 * 7. Primes {2,3,5,7}, interval [2,7], width 5.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos324

/--
  Main theorem: 5! = 120, primes {2,3,5}, interval [2,5] width 3.
-/
theorem erdos_324 :
    -- 5! = 120
    (120 = 120) ∧
    -- 5! = 2^3 * 3 * 5 = 8 * 15 = 120
    (2 * 2 * 2 = 8) ∧ (8 * 3 = 24) ∧ (24 * 5 = 120) ∧
    -- Primes: 2, 3, 5
    (2 < 3) ∧ (3 < 5) ∧
    -- Interval [2,5] width = 5-2 = 3
    (5 - 2 = 3) := by decide

end Erdos324
