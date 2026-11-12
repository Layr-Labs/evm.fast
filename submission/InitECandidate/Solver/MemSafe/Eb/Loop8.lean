import InitECandidate.Solver.MemSafe.Eb.Loop7

/-!
# `execute_block`: loop part 8 (the cells `process_transaction` may write miss the facts)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem dmiss_pt {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS}
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hL : HoldsAll p0 Γ p u S) (hord : p.Ordered)
    (hL0 : Layout guestC p Γ) (hlt : iv.toNat < ntx0.toNat) {vs : List (ValueHOL 64)}
    (hvs : vs = [.val (.word T), .val (.word iv)]) :
    ∀ f, S f → ∀ a, f.reads a → ¬ (∃ idx bo, vs.length = 2 ∧ argW vs 1 = some idx ∧ gword u (nm "bo") = some bo ∧
      PtW bo (rd u.memory (bo + 24)) (rd u.memory (bo + 32)) idx a) := by
  intro f hf a ha hD
  obtain ⟨idx, bo, -, hidx, hbo, hpt⟩ := hD
  subst hvs
  simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hidx
  subst hidx
  have hbo' : bo = w := Option.some.inj (hbo.symm.trans (hL _ hled.gbo).1)
  subst hbo'
  have e24 : rd u.memory (bo + 24) = t := (hL _ hled.c24).1
  have e32 : rd u.memory (bo + 32) = r := (hL _ hled.c32).1
  rw [e24, e32] at hpt
  have hg := geo_of_led hled hL
  by_cases hpc : ∃ a' v', f = Fct.pcv a' v'
  · obtain ⟨a', v', rfl⟩ := hpc
    have hh := hL _ hf
    have ha' : a = a' := ha
    subst ha'
    have hb : BCell guestC Γ a := by
      rcases ptw_canon (by have := hg.bt; omega) hpt with ⟨off, hoff, rfl⟩ | ⟨off, hoff, rfl⟩ | ⟨off, hoff, rfl⟩
      · exact bcell_of_base (Or.inr (Or.inl rfl)) hg.ow (by omega) (by omega)
      · exact bcell_of_base (Or.inl rfl) hg.ot (by omega) (by omega)
      · exact bcell_of_base (Or.inl rfl) hg.or (by omega) (by omega)
    exact plCell_ne_bCell hord hL0 hh.2 hb rfl
  · push_neg at hpc
    exact ycl_ne_ptw hord hL0 hg hlt (hled.rd f hf (fun a v h => hpc a v h) a ha) hpt rfl

end InitECandidate.Solver.MemSafe.Eb
