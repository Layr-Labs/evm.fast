import InitECandidate.Solver.MemSafe.Ra.AttHyp

/-!
# `run_attempt`: facts survive a typing extension (no buffers)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- `holds_step` without the buffer facts: only the typing extension is used. -/
theorem holds_ext {p0 p0' : Ptrs} {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} {S : FS}
    (hext : Ext Γ Γ') (hnb : ∀ f, S f → (∀ w n, f ≠ Fct.fbuf w n) ∧ (∀ w n, f ≠ Fct.bufok w n))
    (hmem : ∀ f, S f → ∀ a, f.reads a → t.memory a = u.memory a)
    (hgl : ∀ g w ty, S (Fct.gobj g w ty) → gword t g = gword u g)
    (hgv : ∀ g w, S (Fct.gval g w) → gword t g = gword u g)
    (hL : HoldsAll p0 Γ p u S) : HoldsAll p0' Γ' p' t S := by
  intro f hf
  have hh := hL f hf
  have hrd : ∀ a, f.reads a → rd t.memory a = rd u.memory a := fun a ha => by
    unfold rd; rw [hmem f hf a ha]
  cases f with
  | obj b ty n =>
    obtain ⟨o, ho, hb, ht, hs⟩ := hh
    obtain ⟨o', ho', hb', ht', hs'⟩ := hext o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht, le_trans hs hs'⟩
  | fbuf w n => exact absurd rfl ((hnb _ hf).1 w n)
  | bufok w n => exact absurd rfl ((hnb _ hf).2 w n)
  | gobj g w ty =>
    obtain ⟨hw, o, ho, hb, ht⟩ := hh
    obtain ⟨o', ho', hb', ht', -⟩ := hext o ho
    exact ⟨(hgl g w ty hf).trans hw, o', ho', hb'.trans hb, ht'.trans ht⟩
  | prop P => exact hh
  | gval g w => exact (hgv g w hf).trans hh
  | ent A j =>
    obtain ⟨b1, b2, hv⟩ := hh
    have e1 : rd t.memory (A + BitVec.ofNat 64 (16 * j)) = rd u.memory (A + BitVec.ofNat 64 (16 * j)) :=
      hrd _ (Or.inl rfl)
    have e2 : rd t.memory (A + BitVec.ofNat 64 (16 * j + 8)) = rd u.memory (A + BitVec.ofNat 64 (16 * j + 8)) :=
      hrd _ (Or.inr rfl)
    refine ⟨bCell_ext hext b1, bCell_ext hext b2, ?_⟩
    rw [e1, e2]
    exact Hooks.vInR_ext hext hv
  | inval c n =>
    obtain ⟨x, hx, ht, h1, h2⟩ := hh
    obtain ⟨x', hx', hb, ht', hs⟩ := hext x hx
    have e1 : x'.lo = x.lo := by unfold Obj.lo; rw [hb]
    have e2 : x'.hi = x'.lo + x'.size := rfl
    have e3 : x.hi = x.lo + x.size := rfl
    exact ⟨x', hx', ht'.trans ht, by omega, by omega⟩
  | sla A n =>
    intro j hj
    obtain ⟨b1, b2, hv⟩ := hh j hj
    have e1 : rd t.memory (A + BitVec.ofNat 64 (16 * j)) = rd u.memory (A + BitVec.ofNat 64 (16 * j)) :=
      hrd _ ⟨j, hj, Or.inl rfl⟩
    have e2 : rd t.memory (A + BitVec.ofNat 64 (16 * j + 8)) = rd u.memory (A + BitVec.ofNat 64 (16 * j + 8)) :=
      hrd _ ⟨j, hj, Or.inr rfl⟩
    refine ⟨bCell_ext hext b1, bCell_ext hext b2, ?_⟩
    rw [e1, e2]
    exact Hooks.vInR_ext hext hv
  | pcv a v =>
    obtain ⟨hr, o, ho, hst, k, hk, hp, rfl⟩ := hh
    obtain ⟨o', ho', hb, ht, hs⟩ := hext o ho
    refine ⟨(hrd _ rfl).trans hr, o', ho', by rw [ht]; exact hst, k, ?_, by rw [ht]; exact hp, ?_⟩
    · unfold Obj.HasSlot at *; omega
    · unfold Obj.cell; rw [hb]
  | cellv a v =>
    obtain ⟨hr, o, ho, hst, k, hk, hp, rfl⟩ := hh
    obtain ⟨o', ho', hb, ht, hs⟩ := hext o ho
    refine ⟨(hrd _ rfl).trans hr, o', ho', by rw [ht]; exact hst, k, ?_, by rw [ht]; exact hp, ?_⟩
    · unfold Obj.HasSlot at *; omega
    · unfold Obj.cell; rw [hb]

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.holds_ext
