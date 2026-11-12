import InitECandidate.Solver.MemSafe.Wg.Core

/-!
# Wg: `process_withdrawals`, entry facts

From `G Γ s` and a `tPL` object `pl`: its payload hook gives `136 ≤ size`, `nwd < 2^32` and the withdrawal array `[wd, wd + 44 nwd)` inside a
`tVAL` object (`Hooks.PlW`). `WdF` is the fact set the walk starts from.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem tPL_prot6 : (guestC.ty tPL).slot 6 = .prot := by decide
theorem tPL_prot7 : (guestC.ty tPL).slot 7 = .prot := by decide

/-- What `G` says about a payload record. -/
theorem plFacts {Γ : Gam} {s : State σ} (hG : G guestC (HR σ) Γ s) {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tPL) :
    136 ≤ o.size ∧ (rd s.memory (o.base + BitVec.ofNat 64 56)).toNat < 2 ^ 32 ∧
    ∃ x ∈ Γ, x.ty = tVAL ∧ x.lo ≤ (rd s.memory (o.base + BitVec.ofNat 64 48)).toNat ∧
      (rd s.memory (o.base + BitVec.ofNat 64 48)).toNat + 44 * (rd s.memory (o.base + BitVec.ofNat 64 56)).toNat ≤ x.hi := by
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hG
  obtain ⟨-, -, hsz, -, -, -, h7, x, hx, hxt, h1, h2⟩ := Hooks.plW_of_wf ht (hW o ho)
  have e7 : Hooks.txF s.memory o 7 = rd s.memory (o.base + BitVec.ofNat 64 56) := rfl
  have e6 : Hooks.txF s.memory o 6 = rd s.memory (o.base + BitVec.ofNat 64 48) := rfl
  rw [e7] at h7
  rw [e6, e7] at h2
  have hl : (BitVec.ofNat 64 (44 * (rd s.memory (o.base + BitVec.ofNat 64 56)).toNat)).toNat =
      44 * (rd s.memory (o.base + BitVec.ofNat 64 56)).toNat := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  rw [hl] at h2
  exact ⟨hsz, h7, x, hx, hxt, h1, h2⟩

end InitECandidate.Solver.MemSafe.Wg
