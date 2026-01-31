/- Copyright (c) Heather Macbeth, 2022.  All rights reserved. -/
import Mathlib.Data.Real.Basic
import Library.Basic

math2001_init

-- From Section 1.3 Tips and Tricks in Mechanics of Proof by Heather Macbeth
-- see textbook Mechanics of Proof for hints

/- For full credit use only "calc" blocks for a proof and use only "ring", or "rw".
   You may also use the "have" tactic, for an intermediate result, but this is not
   really necessary given that "have" is introduced in chapter 2.
-/


-- Example 1.3.6
example {x y : ℤ} (h1 : 2 * x - y = 4) (h2 : y - x + 1 = 2) : x = 5 :=
  sorry

-- Example 1.3.7
example {u v : ℚ} (h1 : u + 2 * v = 4) (h2 : u - 2 * v = 6) : u = 5 :=
  sorry

-- Example 1.3.8
example {x y : ℝ} (h1 : x + y = 4) (h2 : 5 * x - 3 * y = 4) : x = 2 :=
  sorry

-- Example 1.3.9
example {a b : ℚ} (h1 : a - 3 = 2 * b) : a ^ 2 - a + 3 = 4 * b ^ 2 + 10 * b + 9 :=
  sorry

-- Example 1.3.10
example {z : ℝ} (h1 : z ^ 2 - 2 = 0) : z ^ 4 - z ^ 3 - z ^ 2 + 2 * z + 1 = 3 :=
  sorry



-- a few additional examples:

example {x y : ℝ} (h1 : x = 3) (h2 : y = 4 * x - 3) : y = 9 :=
  sorry


example {a b : ℤ} (h : a - b = 0) : a = b :=
  sorry


example {a b c : ℝ} (h1 : a + 2 * b + 3 * c = 7) (h2 : b + 2 * c = 3)
    (h3 : c = 1) : a = 2 :=
  sorry
