import InitECandidate.Solver.MemSafe.Eb.Tail18
import InitECandidate.Solver.MemSafe.Eb.Loop7

/-!
# `execute_block`: `hn_callRxE` and the facts `process_general_purpose_requests` needs
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

section callxE
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop} {R : Gam → Ptrs → State σ → Prop}

theorem hn_callRxE {X : Type} (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (NF : X → FS)
    (h : CallOblX E En S R args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), PAX E En S R s → evs s args = some vs → EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∃ x, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF x)) :
    HN (PAX E En S R) (.call (some (none, none)) f args) (fun t => ∃ x, PA E En (fun g => S g ∨ NF x g) t) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAX E En S R s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨x, hN⟩ := hnew s vs callee v st Γ Γ' p p' hpa hvs hr hL hstp hq
  refine ⟨rfl, x, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

end callxE

/-- The facts `process_general_purpose_requests` needs on top of the loop ledger. -/
structure GprK {σ : Type} (p0 : Ptrs) (S : FS) (w t r lg rl be0 c0 wd0 ntx0 nwd0 rq : BitVec 64) : Prop where
  led : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 ntx0
  orq : S (Fct.obj rq tBOS 128)
  c56 : S (Fct.cellv (w + BitVec.ofNat 64 56) rq)
  c64 : S (Fct.cellv (w + BitVec.ofNat 64 64) 0)
  rw : S (Fct.prop (w ≠ rq))
  rt : S (Fct.prop (t ≠ rq))
  rr : S (Fct.prop (r ≠ rq))
  rb : S (Fct.prop (be0 ≠ rq))
  rd : S (Fct.prop (wd0 ≠ rq))
  nr64 : ∀ (Γ : Gam) (p : Ptrs) (u : State σ), p.Ordered → Layout guestC p Γ →
    HoldsAll p0 Γ p u (fun f => S f ∧ f ≠ Fct.cellv (w + BitVec.ofNat 64 64) 0) →
    ∀ f, S f → f ≠ Fct.cellv (w + BitVec.ofNat 64 64) 0 → ¬ f.reads (w + BitVec.ofNat 64 64)

end InitECandidate.Solver.MemSafe.Eb
