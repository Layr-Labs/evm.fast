import InitECandidate.Solver.MemSafe.Dn.Kit2

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `gp_decCallA`: a call after which the typing grows by a ghost adoption (stage 2b)

`gp_decCall`, where `hpost` may also extend the post typing `Γ'` to `Γ''` (`Ext Γ' Γ''`, `Heap a Γ'' q' st`,
`ScrOld Γ' Γ''`): the call's result buffer is adopted as `tNIB` word objects. The adoption needs the callee's
byte order and byte facts, which only the call's functional spec and the call state give.
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

section calls
variable {a : Act σ} {L L2 L3 : LocalsH → Prop} {E E2 : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

theorem gp_decCallA (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → shapeEqHOL (shapeOfHOLExact v) sh = true →
        ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ ScrOld Γ' Γ'' ∧ E1 v Γ'' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) k (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) := by
  refine hoareG_decCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    obtain ⟨Γ'', hx2, hh2, hsc2, hE1'⟩ := hE1 v rfl hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st v hL hsh, Γ'', q', ext_trans he (ext_trans hext hx2),
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, scrOld_trans hsc (scrOld_trans hsc' hsc2), hE1'⟩
    · refine ⟨fun hr => ?_, fun r' hr' => gx_locals ha.hH _ (hq.2 r' hr')⟩
      have hg := hq.1 hr
      exact gi_locals ha.hH _ (hres s.locals t.locals hL hg.1) hg
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (abn_good' habn) hna hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end calls

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_decCallA
