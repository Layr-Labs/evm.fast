import InitECandidate.Solver.MemSafe.Eb.Cost4
import InitECandidate.Solver.MemSafe.Eb.CallW
import InitECandidate.Solver.MemSafe.Eb.Tail9

/-!
# `execute_block`: the cost walk, part 5 (`var x = f(args); k` with cost)
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

section cwdec
variable {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
  {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64} {Bf Bk : Nat}
  {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
  {PreC : List (ValueHOL 64) → State σ → Prop}

/-- `var rn = f(args); k` with cost: the Hoare half is `hdecCallK`, the cost half `Band.costP_decCall`. -/
theorem cw_decCallK (hQ : ResIns rn Q) (hf : FunSpec σ guestCtx f R) (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st guestCtx → shapeEqHOL (shapeOfHOLExact v) sh = true →
        CW (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk Q) :
    CW P (.decCall rn sh f args k) (1 + Bf + Bk) Q :=
  ⟨Band.costP_decCall hc hpre hf (fun s hs hp vs hvs callee v st hR hst hsh => (h s hs hp vs hvs callee v st hR hst hsh).1),
   hdecCallK hQ hf (fun s hs hp vs hvs callee v st hR hst hsh => (h s hs hp vs hvs callee v st hR hst hsh).2)⟩

end cwdec

section cwcall
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop} {Bf : Nat} {PreC : List (ValueHOL 64) → State σ → Prop}

theorem cw_decCallR {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {Bk : Nat}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → FS)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → PA E En S s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : CallObl E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      CW (PA E (En.set rn v) (fun g => S g ∨ NF v g)) k Bk QT) :
    CW (PA E En S) (.decCall rn sh f args k) (1 + Bf + Bk) QT := by
  refine cw_decCallK hQT (FunSpec.and hf hg) hc hpre ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
  refine cw_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

theorem cw_decCallRk {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {Bk : Nat}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → FS)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → PA E En S s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      CW (PA E (En.set rn v) (fun g => S g ∨ NF v g)) k Bk QT) :
    CW (PA E En S) (.decCall rn sh f args k) (1 + Bf + Bk) QT := by
  refine cw_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine cw_decCallK hQT (FunSpec.and hf hg) hc (fun s hs hpk vs hvs callee => hpre s hs (pak_pa hpk) vs hvs callee) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
  refine cw_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

end cwcall

end InitECandidate.Solver.MemSafe.Eb
