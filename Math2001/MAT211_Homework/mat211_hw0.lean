import Mathlib.Data.Real.Basic
import Library.Basic

math2001_init

/- here is a proof that's too simple -/

example : 2 + 2 = 4 := by ring

/- here is a proof that is wrong, try removing the comments and correcting it

example : 2^3 = 10 := by ring

-/

#check 2+2

#check (2: ℚ)

#check "hello"

-- and simple calculations - answers should appear in Lean Infoview

#eval 2^5
#eval 7 + 8*2


-- Put your cursor on each line below and watch the Infoview panel on the right
example {a : ℤ} (h : a = 3) : a + 1 = 4 :=
  calc
    a + 1 = 3 + 1 := by rw [h]  -- cursor here: see the goal change
    _ = 4 := by ring

/- below is a more involved proof from Heather Macbeth's book
and below that another one that we can complete
-/

-- Example 1.2.1
example {a b : ℚ} (h1 : a - b = 4) (h2 : a * b = 1) : (a + b) ^ 2 = 20 :=
  calc
    (a + b) ^ 2 = (a - b) ^ 2 + 4 * (a * b) := by ring
    _ = 4 ^ 2 + 4 * 1 := by rw [h1, h2]
    _ = 20 := by ring

/- Example 1.2.2.
   Exercise: replace the words "sorry" with the correct Lean justification.
-/

example {r s : ℝ} (h1 : s = 3) (h2 : r + 2 * s = -1) : r = -7 :=
  calc
    r = r + 2 * s - 2 * s := by sorry
    _ = -1 - 2 * s := by sorry
    _ = -1 - 2 * 3 := by sorry
    _ = -7 := by sorry
