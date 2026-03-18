import Mathlib.Data.Real.Basic
import Library.Basic

math2001_init


/- Exercise #2 Tom's version -/
example {n : ℤ} (hn : n ≥ 10) : n ^ 4 - 2 * n ^ 2 > 3 * n ^ 3 :=
  calc
    n ^ 4 - 2 * n ^ 2 = n ^ 2 * (n * (n - 3) - 2)  + 3 * n ^ 3 := by ring
    _ ≥ 10 ^ 2 * (10 * (10 - 3) - 2) + 3 * n ^ 3 := by rel[hn]
    _ = 6800 + 3 * n ^ 3 := by ring
    _ > 3 * n ^ 3 := by extra



/- Exercise #2 Jason's version -/
example {n : ℤ} (hn : n ≥ 10) : n ^ 4 - 2 * n ^ 2 > 3 * n ^ 3 :=
  calc
    n ^ 4 - 2 * n ^ 2
      = n ^ 4 - 3 * n ^ 3 - 2 * n ^ 2 + 3 * n ^ 3 := by ring
    _ = n ^ 2 * (n ^ 2 - 3 * n - 2) + 3 * n ^ 3 := by ring
    _ = n ^ 2 * ((n + 7) * (n - 10) + 68)  + 3 * n ^ 3 := by ring
    _ ≥ 10 ^ 2 * ((10 + 7) * (10 - 10) + 68) + 3 * n ^ 3 := by rel [hn]
    _ = 100 * (17 * 0 + 68) + 3 * n ^ 3 := by ring
    _ > 3 * n ^ 3 := by extra



/- My version -/
example {n : ℤ} (hn : n ≥ 10) : n ^ 4 - 2 * n ^ 2 > 3 * n ^ 3 :=
  calc
    n^4 - 2*n^2 = n^4 - 2*n^2 + 3*n^3 - 3*n^3 := by ring
    _ = n^2*(n^2 - 2 - 3*n) + 3*n^3 := by ring
    _ = n^2*(n^2 - 3*n - 2) + 3*n^3 := by ring
    _ = n^2*((n+7)*(n-10)+ 68) + 3*n^3 := by ring
    _ ≥ 10^2*((10+7)*(10-10)+68) + 3*n^3 := by rel[hn]
    _ = 100*(68) + 3*n^3 := by ring
    _ > 3*n^3 := by extra
