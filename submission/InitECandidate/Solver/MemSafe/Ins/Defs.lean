import InitECandidate.Solver.MemSafe.Dn.Final
import InitECandidate.Solver.MemSafe.Hooks.NodeFacts
import InitECandidate.Solver.Spec.Mpt.DelPre

set_option autoImplicit false

/-!
# Nibble-buffer hypotheses for the trie insert / delete summaries

Stage 2b: the nibble buffers are `tNIB r` word objects and every leaf / extension node's nibble slice
is `Hooks.NIn` at any `G` state (`Hooks.nIn_of_node`); the nibble bound is `Hooks.nibble_of_G`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

/-- The slice `(np, nl)` is empty or every byte of it lies in a `tNIB` word object of `Γ`
(stage 2b: `Hooks.NIn`). -/
abbrev NIn (Γ : Gam) (np nl : BitVec 64) : Prop := Hooks.NIn Γ np nl

theorem nIn_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {np nl : BitVec 64} (h : NIn Γ np nl) : NIn Γ' np nl :=
  Hooks.nIn_ext he h

/-- A sub-slice `[np + pl, np + nl)` of an `NIn` slice. -/
theorem nIn_sub {Γ : Gam} {np nl pl : BitVec 64}
    (h : NIn Γ np nl) (hp : pl.toNat ≤ nl.toNat) : NIn Γ (np + pl) (nl - pl) := by
  by_cases h0 : nl - pl = 0
  · exact Or.inl h0
  · rcases h with h | ⟨hb, h⟩
    · exfalso; apply h0
      subst h
      have : pl = 0 := BitVec.eq_of_toNat_eq (by simp at hp ⊢; omega)
      subst this; simp
    · right
      have hE := Hooks.heapEnd_lt
      have e2 : (nl - pl).toNat = nl.toNat - pl.toNat := by
        rw [BitVec.toNat_sub_of_le (by simpa [BitVec.le_def] using hp)]
      have e1 : (np + pl).toNat = np.toNat + pl.toNat := by
        rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
      refine ⟨by rw [e1, e2]; omega, fun j hj => ?_⟩
      rw [e2] at hj
      obtain ⟨x, hx, r, hr, ht, h1, h2⟩ := h (pl.toNat + j) (by omega)
      exact ⟨x, hx, r, hr, ht, by rw [e1]; omega, by rw [e1]; omega⟩

/-- A prefix `[np, np + pl)` of an `NIn` slice. -/
theorem nIn_prefix {Γ : Gam} {np nl pl : BitVec 64} (h : NIn Γ np nl) (hp : pl.toNat ≤ nl.toNat) :
    NIn Γ np pl := by
  by_cases h0 : pl = 0
  · exact Or.inl h0
  · rcases h with h | ⟨hb, h⟩
    · exfalso; apply h0
      subst h
      exact BitVec.eq_of_toNat_eq (by simp at hp ⊢; omega)
    · exact Or.inr ⟨by omega, fun j hj => h j (by omega)⟩

/-- A nonempty `NIn` slice: every byte of it is a nibble at any state satisfying `G`. -/
theorem nibble_of_nIn {Γ : Gam} {s : State σ} {np nl : BitVec 64}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (h : NIn Γ np nl) {k : Nat} (hk : k < nl.toNat) :
    Spec.Mpt.byteOf s.memory s.be (np + BitVec.ofNat 64 k) < 16 :=
  Hooks.nibble_of_G hG h hk

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_prefix
#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_sub
#print axioms InitECandidate.Solver.MemSafe.Ins.nibble_of_nIn
#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_ext
