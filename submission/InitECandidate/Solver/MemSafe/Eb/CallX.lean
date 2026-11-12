import InitECandidate.Solver.MemSafe.Eb.CallW

/-!
# `execute_block`: `f(args);` whose new facts name values read from the post state (`hn_callRX`)
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

section callx
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

theorem hn_callRX (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (P : FS → Prop)
    (h : CallObl E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∃ NF : FS, P NF ∧ HoldsAll E.p0 Γ' p' { st with locals := s.locals } NF) :
    HN (PA E En S) (.call (some (none, none)) f args) (fun t => ∃ NF : FS, P NF ∧ PA E En (fun f => S f ∨ NF f) t) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨NF, hP, hN⟩ := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq
  refine ⟨rfl, NF, hP, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

end callx

end InitECandidate.Solver.MemSafe.Eb
