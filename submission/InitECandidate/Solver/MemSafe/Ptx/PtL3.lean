import InitECandidate.Solver.MemSafe.Ptx.PtL2

/-!
# F3e: loop 1 -- the loop environment and invariant
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The environment of a loop with counters `i` and `nkeys`. -/
def LE (En0 : Env) (iv nkv : BitVec 64) : Env :=
  (En0.set (nm "nkeys") (.val (.word nkv))).set (nm "i") (.val (.word iv))

theorem le_i (En0 : Env) (iv nkv : BitVec 64) : LE En0 iv nkv (nm "i") = some (.val (.word iv)) :=
  env_set_self _ _ _

theorem le_nk (En0 : Env) (iv nkv : BitVec 64) : LE En0 iv nkv (nm "nkeys") = some (.val (.word nkv)) := by
  unfold LE
  rw [env_set_ne _ _ (by decide)]
  exact env_set_self _ _ _

theorem le_other {En0 : Env} (iv nkv : BitVec 64) {x : MlS} (h1 : x ≠ nm "nkeys") (h2 : x ≠ nm "i") :
    LE En0 iv nkv x = En0 x := by
  unfold LE
  rw [env_set_ne _ _ h2, env_set_ne _ _ h1]

theorem cy_LE {E : PtE σ} {En0 : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En0 S rp rl buf n CV w) (iv nkv : BitVec 64) :
    Cy E (LE En0 iv nkv) S rp rl buf n CV w :=
  cy_set (cy_set C (x := nm "nkeys") (by decide) (by decide) _) (x := nm "i") (by decide) (by decide) _

/-- The loop environment after the body's updates includes the next loop environment. -/
theorem le_incl {En0 : Env} (hacc : En0 (nm "acc") = none) (iv nkv iv' nk' : BitVec 64) (a : ValueHOL 64) :
    ∀ x v, LE En0 iv' nk' x = some v →
      ((((LE En0 iv nkv).set (nm "acc") a).set (nm "nkeys") (.val (.word nk'))).set (nm "i") (.val (.word iv'))) x = some v := by
  intro x v h
  by_cases hi : x = nm "i"
  · subst hi
    rw [le_i] at h
    rw [env_set_self]; exact h
  by_cases hk : x = nm "nkeys"
  · subst hk
    rw [le_nk] at h
    rw [env_set_ne _ _ hi, env_set_self]; exact h
  have h1 := le_other iv' nk' hk hi (En0 := En0)
  rw [h1] at h
  rw [env_set_ne _ _ hi, env_set_ne _ _ hk]
  by_cases ha : x = nm "acc"
  · subst ha; rw [hacc] at h; cases h
  · rw [env_set_ne _ _ ha, le_other iv nkv hk hi]; exact h

end InitECandidate.Solver.MemSafe.Ptx
