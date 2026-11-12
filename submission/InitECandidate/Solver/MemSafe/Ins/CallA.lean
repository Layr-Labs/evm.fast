import InitECandidate.Solver.MemSafe.Ins.SplitFn

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

theorem gpj_mono {a : Act σ} {Inv Inv' : State σ → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {P : State σ → Prop} {c : ProgHOL 64} (h : HoareG σ X P c (GPJ a Inv Rv))
    (hI : ∀ t, Inv t → Inv' t) : HoareG σ X P c (GPJ a Inv' Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun r t _ _ h => ⟨fun hr => hI t (h.1 hr), h.2⟩)

/-- Sequencing with a `GPJ` first part. -/
theorem gpj_seq {a : Act σ} {Inv1 Inv2 : State σ → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {P : State σ → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (GPJ a Inv1 Rv))
    (hk : HoareG σ X Inv1 k (GPJ a Inv2 Rv)) : HoareG σ X P (.seq c k) (GPJ a Inv2 Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre hk fun _ _ h => h.1 rfl)

/-- A valid assignment to a local holding a word assigns a word. -/
theorem valid_one {s : State σ} {x : MlS} {W : BitVec 64}
    (hx : s.locals.lookup x = some (.val (.word W))) {v : ValueHOL 64}
    (h : isValidValueHOLExact s.toExact .local x v = true) : ∃ V : BitVec 64, v = .val (.word V) := by
  unfold isValidValueHOLExact at h
  have : lookupKvarHOLExact VarKind.local x s.toExact = some (.val (.word W)) := hx
  rw [this] at h
  exact val_of_shapeEq_one' (by simpa [shapeOfHOLExact] using h)

/-- **`x = f(args);`** for a summarised callee. -/
theorem gp_callAV {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (ha : ActOK a X) {x f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → E1 v Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      isValidValueHOLExact s.toExact .local x v = true →
      L1 v (setVarHOLFinite x v { st with locals := s.locals }).locals) :
    HoareG σ X (GI a L E) (.call (some (some (.local, x), none)) f args)
      (GPJ a (fun t => ∃ v, GI a (L1 v) (E1 v) t) Rv) := by
  refine hoareG_callA (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hvalid
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨fun _ => ⟨v, hL1 s st v hL hvalid, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 v rfl⟩,
      fun r' h => by cases h⟩
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

/-- **`x = f(args);`** for a summarised callee with capabilities `cs ⊆ a.caps` (so its protected writes
`CapPW cs` are allowed). The post sees the call's heap facts (the frame of `CO` does not hold for the
capability cells). -/
theorem gp_callAVC {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (ha : ActOK a X) {x f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ s Γ y => CapPW cs s Γ y) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ y, ¬ ArgCells sg'.params vs y) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → E1 v Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      isValidValueHOLExact s.toExact .local x v = true →
      L1 v (setVarHOLFinite x v { st with locals := s.locals }).locals) :
    HoareG σ X (GI a L E) (.call (some (some (.local, x), none)) f args)
      (GPJ a (fun t => ∃ v, GI a (L1 v) (E1 v) t) Rv) := by
  refine hoareG_callA (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hvalid
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGC (r := .returned v)
      (Pre := Pre) (Q := Q) ha hh hcs hR (by simp [Good]) (by simp [Abortive]) hA
      (fun y hy => absurd hy (hnoc y)) (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ hh hext hh' hmo hnf
    exact ⟨fun _ => ⟨v, hL1 s st v hL hvalid, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 v rfl⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGC
      (Pre := Pre) (Q := Q) ha hh hcs hR (abn_good' habn) hna hA
      (fun y hy => absurd hy (hnoc y)) (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ hh hext hh' hmo hnf
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.gp_callAV
#print axioms InitECandidate.Solver.MemSafe.Ins.gpj_seq
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_callAVC
