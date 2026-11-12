import InitECandidate.Solver.MemSafe.Eb.Tail1

/-!
# `execute_block`: adapters from `KeepH`-shaped posts and above-writer specs to `Stp`
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

variable {σ : Type}

theorem keepTy_of_cpre {Γ : Gam} (hC : CPre Γ) {o : Obj} (ho : o ∈ Γ) : KeepTy o.ty := by
  refine ⟨hC.1 o ho, ?_⟩
  rintro ⟨h1, h2⟩
  have := hC.2 o ho h1
  omega

/-- **From a `KeepH` post to a typed-heap step** at the heap part of the post typing. -/
theorem stepD_of_keepH (hK : HypKeepG σ) {Γ Γ' : Gam} {p p' : Ptrs} {s t : State σ} (hC : CPre Γ)
    (hG : G guestC (HR σ) Γ s) (hp : ptrsOf s = some p) (hG' : G guestC (HR σ) Γ' t) (hp' : ptrsOf t = some p')
    (hk : KeepH guestC Γ Γ' s t) (hm : (Exb.gp0 p).Mono p') (hE : EvCc t) :
    StepD Γ p s (keepG Γ') p' t ∧ CPre (keepG Γ') := by
  obtain ⟨hGk, hOH⟩ := hK hG' hE.1 hE.2
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : p = q := (Option.some.inj (hq.symm.trans hp)).symm
  obtain ⟨q', hq', hord', hL', -⟩ := id hG'
  obtain rfl : p' = q' := (Option.some.inj (hq'.symm.trans hp')).symm
  obtain ⟨-, hsurv, hnew⟩ := hk p p' hp hp' hord
  refine ⟨⟨hp, hp', hm, ?_, ?_, hG, hGk⟩, fun o ho => (mem_keepG.mp ho).2.1, hOH⟩
  · intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := hsurv o ho (hC.1 o ho)
    exact ⟨o', mem_keepG.mpr ⟨ho', ht ▸ keepTy_of_cpre hC ho⟩, hb, ht, hs⟩
  · intro o ho a h1 h2
    have hr := (mem_keepG.mp ho).2.1
    rcases hnew o (mem_keepG.mp ho).1 hr a h1 h2 with h | h
    · exact Or.inl h
    · refine Or.inr (Or.inl ⟨h, ?_⟩)
      have := (live_of hL' (mem_keepG.mp ho).1).1 hr
      unfold Obj.hi at this h2
      omega

/-- **Re-anchor a step at the owner-heap part.** -/
theorem stepD_keepG (hK : HypKeepG σ) {Γ Γ' : Gam} {p p' : Ptrs} {s t : State σ} (hC : CPre Γ)
    (hst : StepD Γ p s Γ' p' t) (hE : EvCc t) : StepD Γ p s (keepG Γ') p' t ∧ CPre (keepG Γ') := by
  obtain ⟨hGk, hOH⟩ := hK hst.hG' hE.1 hE.2
  refine ⟨⟨hst.hp, hst.hp', hst.mono, ?_, ?_, hst.hG, hGk⟩, fun o ho => (mem_keepG.mp ho).2.1, hOH⟩
  · intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := hst.ext o ho
    exact ⟨o', mem_keepG.mpr ⟨ho', ht ▸ keepTy_of_cpre hC ho⟩, hb, ht, hs⟩
  · intro o ho a h1 h2
    exact hst.nf o (mem_keepG.mp ho).1 a h1 h2

end InitECandidate.Solver.MemSafe.Eb
