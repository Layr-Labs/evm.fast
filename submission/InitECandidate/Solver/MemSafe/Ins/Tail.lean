import InitECandidate.Solver.MemSafe.Ins.CreateFn

set_option autoImplicit false

/-!
# `return f(args)` (a tail call) in the `GP` kit
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

variable {σ : Type} {X : Ctx 64}

theorem gp_tail {a : Act σ} (ha : ActOK a X) {L L' : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → Rv Γ' q' st.memory v) :
    HoareG σ X (GI a L E) (.call none f args) (GP a L' E' Rv) := by
  refine hoareG_tailCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hRv⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inl ⟨v, rfl⟩, fun _ => ⟨Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', fun v' hv' => ?_⟩⟩
    cases hv'
    exact hRv v rfl
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

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.gp_tail
