import InitECandidate.Solver.MemSafe.Wg.Ra9
import InitECandidate.Solver.MemSafe.Eb.Tail9

/-!
# Wg: a `var x = f(args); k` call with an existential witness for the new facts, and a return with a value postcondition
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

section decCallkE
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

theorem hdecCallRkE {α : Type} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → α → FS)
    (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ a, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v a))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → ∀ a,
      Hoare σ guestCtx (PA E (En.set rn v) (fun g => S g ∨ NF v a g)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hoare_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine hdecCallK hQT (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨a, hN⟩ := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
  refine hoare_pre (hk v hsh a) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

end decCallkE

/-- A return whose result and final memory satisfy `R`. -/
def RetV (E : EbE σ) (Dout : BitVec 64 → Prop) (R : ValueHOL 64 → Gam → Mem → Prop) :
    Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ v, r = some (.returned v) → ∃ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ t p ∧
    HoldsAll E.p0 Γ p t (FrS E.Γ0 E.s0 Dout) ∧ R v Γ t.memory

theorem retV_locIns (E : EbE σ) (Dout : BitVec 64 → Prop) (R : ValueHOL 64 → Gam → Mem → Prop) :
    LocIns (RetV E Dout R) := by
  intro r t l c h v hv
  obtain ⟨Γ, p, hr, hL, hm⟩ := h v hv
  exact ⟨Γ, p, ebRun_loc hr l c, holdsAll_loc hL l c, hm⟩

theorem hn_retV {E : EbE σ} {En : Env} {S : FS} {Dout : BitVec 64 → Prop} {R : ValueHOL 64 → Gam → Mem → Prop}
    {e : ExpHOL 64}
    (hfr : ∀ f, FrS E.Γ0 E.s0 Dout f → S f)
    (hR : ∀ (s : State σ), PA E En S s → ∀ v, ev s e = some v → ∀ (Γ : Gam) (p : Ptrs),
      EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → R v Γ s.memory) :
    Hoare σ guestCtx (PA E En S) (.return e) (RetV E Dout R) := by
  refine hoare_return ?_
  intro s hs hpa v hv
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  intro v' hv'
  cases hv'
  exact ⟨Γ, p, ebRun_loc hr _ s.clock, holdsAll_loc (holdsAll_mono hL hfr) _ s.clock,
    hR s ⟨⟨Γ, p, hr, hL⟩, hlk⟩ v hv Γ p hr hL⟩

end InitECandidate.Solver.MemSafe.Wg
