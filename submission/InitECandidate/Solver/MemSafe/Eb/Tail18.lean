import InitECandidate.Solver.MemSafe.Eb.Tail17
import InitECandidate.Solver.MemSafe.Eb.Loop10

/-!
# `execute_block`: `process_general_purpose_requests();` (ebS37)
The call may write the request count `bo + 64` and five request entries; the facts that read `bo + 64` are dropped first, and the new
count `k <= 5` is learnt afterwards.
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

section callkE
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

/-- `hn_callRk` whose new facts depend on an existential witness. -/
theorem hn_callRkE {X : Type} (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (NF : X → FS)
    (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∃ x, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF x)) :
    HN (PAk E En S) (.call (some (none, none)) f args) (fun t => ∃ x, PA E En (fun g => S g ∨ NF x g) t) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨x, hN⟩ := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq
  refine ⟨rfl, x, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

end callkE

/-- A fact-read cell (other than `bo + 64`) is not written by `process_general_purpose_requests`. -/
theorem ycl_ne_gprd {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {w t r be0 wd0 ntx0 nwd0 iv rq a : BitVec 64} (hg : Geo Γ w t r be0 wd0 ntx0 nwd0) (hiv : iv.toNat ≤ ntx0.toNat)
    (orq : ∃ o ∈ Γ, o.base = rq ∧ o.ty = tBOS ∧ 128 ≤ o.size)
    (hrw : w ≠ rq) (hrt : t ≠ rq) (hrr : r ≠ rq) (hrb : be0 ≠ rq) (hrd : wd0 ≠ rq)
    (h64 : a ≠ w + BitVec.ofNat 64 64) (hy : Ycl w t r be0 wd0 nwd0 iv a) :
    ¬ (a = w + BitVec.ofNat 64 64 ∨ ∃ j : Nat, j < 5 ∧
      (a = rq + BitVec.ofNat 64 (16 * j) ∨ a = rq + BitVec.ofNat 64 (16 * j + 8))) := by
  have hX : (∃ X : Nat, X % 8 = 0 ∧ X + 8 ≤ 128 ∧ a = rq + BitVec.ofNat 64 X) → False := by
    rintro ⟨X, hX8, hX, hXa⟩
    rcases hy with ⟨o, ho, rfl⟩ | rfl | ⟨o, h8, hle, rfl | rfl⟩ | ⟨o, h8, hle, rfl⟩
    · have : o % 8 = 0 ∧ o + 8 ≤ 88 := by rcases ho with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> omega
      exact cells_ne_cross hord hL (n1 := 88) (ty1 := tBO) (by obtain ⟨o', h1, h2, h3, h4⟩ := hg.ow; exact ⟨o', h1, h2, h3, h4⟩)
        orq hrw this.1 hX8 this.2 hX hXa
    · exact cells_ne_cross hord hL (n1 := 120) (ty1 := tBOS) (by obtain ⟨o', h1, h2, h3, h4⟩ := hg.obe; exact ⟨o', h1, h2, h3, h4⟩)
        orq hrb (by omega) hX8 (by omega) hX hXa
    · have := hg.bt
      exact cells_ne_cross hord hL (n1 := 16 * ntx0.toNat + 16) (ty1 := tBOS)
        (by obtain ⟨o', h1, h2, h3, h4⟩ := hg.ot; exact ⟨o', h1, h2, h3, h4⟩) orq hrt h8 hX8 (by omega) hX hXa
    · have := hg.bt
      exact cells_ne_cross hord hL (n1 := 16 * ntx0.toNat + 16) (ty1 := tBOS)
        (by obtain ⟨o', h1, h2, h3, h4⟩ := hg.or; exact ⟨o', h1, h2, h3, h4⟩) orq hrr h8 hX8 (by omega) hX hXa
    · have := hg.bw'
      exact cells_ne_cross hord hL (n1 := 16 * nwd0.toNat) (ty1 := tBOS)
        (by obtain ⟨o', h1, h2, h3, h4⟩ := hg.owd; exact ⟨o', h1, h2, h3, h4⟩) orq hrd h8 hX8 (by omega) hX hXa
  rintro (h | ⟨j, hj, h | h⟩)
  · exact h64 h
  · exact hX ⟨16 * j, by omega, by omega, h⟩
  · exact hX ⟨16 * j + 8, by omega, by omega, h⟩

end InitECandidate.Solver.MemSafe.Eb
