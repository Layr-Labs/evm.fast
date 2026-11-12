import InitECandidate.Solver.Spec.Fq12.Prime
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Field.ZMod

/-!
# The arithmetic behind the inner division loop of `fq12_inv`

One iteration of `while d0 >= d1 { ... }` replaces the top coefficient `t` of the
remainder by `g t = fqSubN t (U t)`, where `U t = fq_mul(fq_mul(t, linv), lead)`. The
Montgomery specification of `fq_mul` gives `U t < p` and `U t · R² ≡ t · K (mod p)` with
`K = linv · lead` fixed inside the loop (`R = 2 ^ 256`).

`doom_step`: if `t ≠ 0` and `g t ≠ 0` then `g (g t) ≠ 0`. So in a run where the top
coefficient does not cancel in one iteration it never cancels: the loop is stuck at
this degree forever (a *doomed* state). This uses that `p` is prime (`fqP_prime`).
-/

namespace InitECandidate.Solver.Spec.Fq12

/-- `fq_sub` on numbers whose second argument is reduced: `x - y`, or `x + p - y` when
`x < y`. -/
def fqSubN (x y : Nat) : Nat := if x < y then x + fqP - y else x - y

theorem fqP_pos : 0 < fqP := by unfold fqP; decide

theorem fqSubN_eq_zero {x y : Nat} (hy : y < fqP) (h : fqSubN x y = 0) : x = y := by
  unfold fqSubN at h
  split at h <;> omega

theorem fqP_odd : fqP % 2 = 1 := by unfold fqP; decide

theorem coprime_two_pow (n : Nat) : Nat.Coprime (2 ^ n) fqP := by
  apply Nat.Coprime.pow_left
  rw [Nat.coprime_two_left]
  exact Nat.odd_iff.mpr fqP_odd

instance : Fact (Nat.Prime fqP) := ⟨fqP_prime⟩

theorem zmod_eq_iff {a b : Nat} : (a : ZMod fqP) = (b : ZMod fqP) ↔ a % fqP = b % fqP :=
  ZMod.natCast_eq_natCast_iff' a b fqP

theorem two_pow_ne_zero (n : Nat) : ((2 ^ n : Nat) : ZMod fqP) ≠ 0 := by
  intro h
  rw [ZMod.natCast_eq_zero_iff] at h
  have := Nat.Coprime.eq_one_of_dvd (coprime_two_pow n).symm h
  have : 1 < fqP := fqP_prime.one_lt
  omega

/-- **Doom lemma.** `U` is the reduced value of `t ↦ t · K · R⁻²`; if the top coefficient
`t ≠ 0` does not cancel in one step (`t' = g t ≠ 0`), it does not cancel in the next
step either. -/
theorem doom_step (n K t u t' u' : Nat) (hu : u < fqP) (hu' : u' < fqP)
    (huK : (u * 2 ^ n) % fqP = (t * K) % fqP) (hu'K : (u' * 2 ^ n) % fqP = (t' * K) % fqP)
    (ht' : t' = fqSubN t u) (h1 : t' ≠ 0) : fqSubN t' u' ≠ 0 := by
  intro h2
  have e1 : t' = u' := fqSubN_eq_zero hu' h2
  have ht'p : t' < fqP := e1 ▸ hu'
  -- in `ZMod p`: `t' · R = t' · K`, so `R = K` since `t' ≠ 0`
  have hz1 : ((t' : Nat) : ZMod fqP) * ((2 ^ n : Nat) : ZMod fqP) =
      ((t' : Nat) : ZMod fqP) * ((K : Nat) : ZMod fqP) := by
    rw [← e1] at hu'K
    have := zmod_eq_iff.mpr hu'K
    rw [Nat.cast_mul, Nat.cast_mul] at this
    exact this
  have ht'z : ((t' : Nat) : ZMod fqP) ≠ 0 := by
    rw [Ne, ZMod.natCast_eq_zero_iff]
    intro hd
    exact h1 (Nat.eq_zero_of_dvd_of_lt hd ht'p)
  have hRK : ((2 ^ n : Nat) : ZMod fqP) = ((K : Nat) : ZMod fqP) :=
    mul_left_cancel₀ ht'z hz1
  -- hence `u ≡ t`
  have hut : ((u : Nat) : ZMod fqP) = ((t : Nat) : ZMod fqP) := by
    have h3 : ((u : Nat) : ZMod fqP) * ((2 ^ n : Nat) : ZMod fqP) =
        ((t : Nat) : ZMod fqP) * ((2 ^ n : Nat) : ZMod fqP) := by
      have := zmod_eq_iff.mpr huK
      rw [Nat.cast_mul, Nat.cast_mul] at this
      rw [this, hRK]
    exact mul_right_cancel₀ (two_pow_ne_zero n) h3
  have hut' : u = t % fqP := by
    have := zmod_eq_iff.mp hut
    rw [Nat.mod_eq_of_lt hu] at this
    exact this
  by_cases htp : t < fqP
  · rw [Nat.mod_eq_of_lt htp] at hut'
    apply h1
    rw [ht', hut']
    unfold fqSubN
    simp
  · have hle : u ≤ t := by rw [hut']; exact Nat.mod_le _ _
    have hsub : t' = t - t % fqP := by
      rw [ht', hut']
      unfold fqSubN
      rw [if_neg (by omega)]
    have hmod : t' % fqP = 0 := by
      rw [hsub]
      have := Nat.div_add_mod t fqP
      rw [show t - t % fqP = fqP * (t / fqP) by omega]
      exact Nat.mul_mod_right _ _
    apply h1
    rw [← Nat.mod_eq_of_lt ht'p]
    exact hmod

end InitECandidate.Solver.Spec.Fq12
