/- Copyright (c) Heather Macbeth, 2022.  All rights reserved. -/
import Mathlib.Data.Real.Basic
import Library.Basic

math2001_init

/-! # Section 1.5: A shortcut -/

example {x : ℤ} (h1 : x + 4 = 2) : x = -2 := by addarith [h1]

example {a b : ℤ} (ha : a - 2 * b = 1) : a = 2 * b + 1 := by addarith [ha]


-- Question #1
example {x y : ℚ} (hx : x = 2) (hy : y ^ 2 = -7) : x + y ^ 2 = -5 :=
  calc
    x + y ^ 2 = x - 7 := by sorry
    _ = -5 := by sorry

-- Question #2
example {s t : ℝ} (h : t = 4 - s * t) : t + s * t > 0 := by sorry

-- Question #3
example {m n : ℝ} (h1 : m ≤ 8 - n) : 10 > m + n := by sorry


-- Check that `addarith` CANNOT verify the following deduction!
-- try using addarith on the next line, and confirm that it doesn't work

-- Question #4
example {w : ℚ} (h1 : 3 * w + 1 = 4) : w = 1 := sorry

-- ANSWER the following question as a comment

-- Question #5
-- Why doesn't 'addarith' work in the previous example?

-- NOW WRITE a CORRECT lean argument for example Question #4
-- hint: we did this one in a previous lean assignment


-- SECTION 2.1 Intermediate Steps

-- Examples here are from Mechanics of Proof, section 2.1

example {a b : ℝ} (h1 : a - 5 * b = 4) (h2 : b + 2 = 3) : a = 9 := by
  have hb : b = 1 := by addarith [h2]
  calc
    a = a - 5 * b + 5 * b := by ring
    _ = 4 + 5 * 1 := by rw [h1, hb]
    _ = 9 := by ring


example {m n : ℤ} (h1 : m + 3 ≤ 2 * n - 1) (h2 : n ≤ 5) : m ≤ 6 := by
  have h3 :=
  calc
    m + 3 ≤ 2 * n - 1 := by rel [h1]
    _ ≤ 2 * 5 - 1 := by rel [h2]
    _ = 9 := by numbers
  addarith [h3]

-- Question #6
example {r s : ℚ} (h1 : s + 3 ≥ r) (h2 : s + r ≤ 3) : r ≤ 3 := by
  have h3 : r ≤ 3 + s := by sorry -- justify with one tactic
  have h4 : r ≤ 3 - s := by sorry -- justify with one tactic
  calc
    r = (r + r) / 2 := by sorry -- justify with one tactic
    _ ≤ (3 - s + (3 + s)) / 2 := by sorry -- justify with one tactic
    _ = 3 := by sorry -- justify with one tactic


example {t : ℝ} (h1 : t ^ 2 = 3 * t) (h2 : t ≥ 1) : t ≥ 2 := by
  have h3 :=
  calc t * t = t ^ 2 := by ring
    _ = 3 * t := by rw [h1]
  cancel t at h3
  addarith [h3]



example {a b : ℝ} (h1 : a ^ 2 = b ^ 2 + 1) (h2 : a ≥ 0) : a ≥ 1 := by
  have h3 :=
  calc
    a ^ 2 = b ^ 2 + 1 := by rw [h1]
    _ ≥ 1 := by extra
    _ = 1 ^ 2 := by ring
  cancel 2 at h3


-- Question #7
example {x y : ℤ} (hx : x + 3 ≤ 2) (hy : y + 2 * x ≥ 3) : y > 3 := by
  sorry

-- Question #8
example (a b : ℝ) (h1 : -b ≤ a) (h2 : a ≤ b) : a ^ 2 ≤ b ^ 2 := by
  sorry

-- Question #9
example (a b : ℝ) (h : a ≤ b) : a ^ 3 ≤ b ^ 3 := by
  sorry


/-! # Exercises -/

-- Question #10
example {x : ℚ} (h1 : x ^ 2 = 4) (h2 : 1 < x) : x = 2 := by
  sorry


-- Question #11
example {n : ℤ} (hn : n ^ 2 + 4 = 4 * n) : n = 2 := by
  sorry


-- Question #12
example (x y : ℚ) (h : x * y = 1) (h2 : x ≥ 1) : y ≤ 1 := by
  sorry
