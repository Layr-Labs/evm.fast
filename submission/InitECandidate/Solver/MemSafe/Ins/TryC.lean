import InitECandidate.Solver.MemSafe.Ins.CallA

set_option autoImplicit false

/-!
# `x = f(args);` (assignment of a call result to a local) in the `GP` kit

`gp_callAV`: the post is the J-form `GPJ a (∃ v, GI a (L1 v) (E1 v))`, so that the assigned value can be
related to the `Γ'`-level facts (`E1 v`). `gpj_mono`: weaken the invariant of a `GPJ` post.
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

section rules
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`try x = f(args) catch E => h { hp }; k`**, `k` seeing the returned value. -/
theorem gp_tryVC (ha : ActOK a X) {f x eid hv : MlS} {cs : List Cap} (hcs : capSub cs a.caps = true) {hp k : ProgHOL 64} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ s Γ y => CapPW cs s Γ y) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (heid : eid ≠ trapErr) {Lx : ValueHOL 64 → LocalsH → Prop}
    {Ex : ValueHOL 64 → Gam → Ptrs → Mem → Prop} {Lh : LocalsH → Prop} {Eh : Gam → Ptrs → Mem → Prop}
    {L' : LocalsH → Prop} {E' : Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      ScrOld Γ Γ' ∧ (∀ v, r = .returned v → Ex v Γ' q' st.memory ∧
          (isValidValueHOLExact s.toExact .local x v = true →
            Lx v (setVarHOLFinite x v { st with locals := s.locals }).locals)) ∧
        (∀ v, r = .exception eid v → Eh Γ' q' st.memory ∧
          Lh (setVarHOLFinite hv v { st with locals := s.locals }).locals))
    (hh : HoareG σ X (GI a Lh Eh) hp (GP a (fun _ => False) (fun _ _ _ => True) Rv))
    (hk : ∀ v, HoareG σ X (GI a (Lx v) (Ex v)) k (GP a L' E' Rv)) :
    HoareG σ X (GI a L E) (.seq (.call (some (some (.local, x), some (eid, hv, hp))) f args) k)
      (GP a L' E' Rv) := by
  refine hoareG_seq (R := fun r t => (r = none → ∃ v, GI a (Lx v) (Ex v) t) ∧
      ∀ r', r = some r' → GX a Rv r' t) ?_ (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre (hoareG_ex hk) fun _ _ h => h.1 rfl)
  refine MemSafe.hoareG_callH (hf.and hLc) ?_ ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGC (Pre := Pre) (Q := Q) ha hh0 hcs hR
      (by simp [Good]) (by simp [Abortive]) hA (fun y hy => absurd hy (hnoc y)) (hpre callee) hgw hgr
    obtain ⟨hsc', hx, -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      hh0 hext hh' hmo hnf
    refine ⟨(fun h => by cases h), fun k x' hk hval => ?_⟩
    simp only [Option.some.injEq, Prod.mk.injEq] at hk
    obtain ⟨rfl, rfl⟩ := hk
    obtain ⟨hEx, hLx⟩ := hx v rfl
    exact ⟨fun _ => ⟨v, hLx hval, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hEx⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGC (Pre := Pre) (Q := Q) ha hh0 hcs hR
      (by simp [Good]) (by simpa [Abortive] using heid) hA (fun y hy => absurd hy (hnoc y)) (hpre callee) hgw hgr
    obtain ⟨hsc', -, hx⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      hh0 hext hh' hmo hnf
    obtain ⟨hEh, hLh⟩ := hx v rfl
    refine hoareG_conseq hh (fun t _ ht => ?_) (fun r t _ _ h => ⟨fun hr => (h.1 hr).1.elim, h.2⟩)
    subst ht
    exact ⟨hLh, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hEh⟩
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn _
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGC (Pre := Pre) (Q := Q) ha hh0 hcs hR
      (abn_good' habn) hna hA (fun y hy => absurd hy (hnoc y)) (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      hh0 hext hh' hmo hnf
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end rules

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.gp_tryVC
