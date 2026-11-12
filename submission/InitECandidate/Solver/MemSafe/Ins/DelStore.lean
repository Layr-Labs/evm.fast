import InitECandidate.Solver.MemSafe.Ins.DelDescBrRec

set_option autoImplicit false

/-!
# Stores into branch nodes in the presence of the record chain

* `br_cell_below`: a cell `B + 8 j` (`j <= 21`) of a branch object lies below the scratch pointer;
* `brValClr_G`: `st node + 8 j, 0` for the branch value slots `j = 20, 21` (scalar).
  **Stage-2 lemma**: the value slots become `prot` once the values are hooked objects; this is the
  only store of the delete to a node's value slots.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem br_cell_below {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {B : BitVec 64} (hB : CbE B Γ) {j : Nat} (hj : j ≤ 21) :
    (B + BitVec.ofNat 64 (8 * j)).toNat < q.sp := by
  obtain ⟨o, ho, hb, ht⟩ := hB
  obtain ⟨o1, o2, o3, o4, o5, -⟩ := heap_ord hh
  simp only [heapBase, heapEnd] at o1 o2 o3
  obtain ⟨h1, h2⟩ := node_below haC hh ho (by simp [Node.nodeTys, ht])
  obtain ⟨p1, -, -, hL, -⟩ := hh.1
  rw [haC] at hL
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  rw [ht, Types.ty_NBRANCH] at hsz
  simp only [Types.nbranchTy] at hsz
  subst hb
  rw [Spec.Mpt.Dec.toNat_add_lt (by omega)]
  omega

/-- **`st node + 160, 0; st node + 168, 0; K`**: clearing the hooked value pair of an existing branch
(`brCaps`), one step (the empty slice satisfies the hook). -/
theorem brValClr2_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aD vs s0 Γ0 p0) guestCtx) {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → Prop} {B : BitVec 64} {x : MlS} {K : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hB : ∀ Γ q M, E Γ q M → CbE B Γ)
    (hE : ∀ Γ q M (V1 V2 : BitVec 64), E Γ q M → (B + BitVec.ofNat 64 (8 * 20)).toNat < q.sp →
      (B + BitVec.ofNat 64 (8 * 21)).toNat < q.sp →
      E Γ q (Struct.upd (Struct.upd M (B + BitVec.ofNat 64 (8 * 20)) V1)
        (B + BitVec.ofNat 64 (8 * 21)) V2))
    (hK : HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) L E) K Q) :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) L E)
      (.seq (.store (.op .add [lv x, cw 160]) (cw 0))
        (.seq (.store (.op .add [lv x, cw 168]) (cw 0)) K)) Q := by
  refine gp_stPairKM (haC := rfl) (haH := rfl) (k := 20) rfl rfl (x := x) (B := B)
    (V1 := BitVec.ofNat 64 0) (V2 := BitVec.ofNat 64 0) hx (fun s hL => ev_cw s 0) (fun s hL => ev_cw s 0)
    (fun Γ q s hh hEs => ?_) (fun Γ q s o hh hEs ho hob hvs => ?_) hK
  · obtain ⟨o, ho, hob, hot⟩ := hB _ _ _ hEs
    obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
    rw [hot, Types.ty_NBRANCH] at hsz
    simp only [Types.nbranchTy] at hsz
    have hs20 : o.HasSlot 20 := by unfold Obj.HasSlot; omega
    have hs21 : o.HasSlot 21 := by unfold Obj.HasSlot; omega
    have hcap : ∀ k, k = 20 ∨ k = 21 → ∃ c ∈ (aD vs s0 Γ0 p0).caps, c.g = anyG ∧ c.t = o.ty ∧ k ∈ c.ks :=
      fun k hk => ⟨⟨anyG, Types.tNBRANCH, [20, 21], false⟩, by simp [aD, actOf, brCaps],
        rfl, hot.symm, by simpa using hk⟩
    exact ⟨o, ho, hob, Or.inr ⟨hot, rfl⟩, Or.inl rfl,
      foot_of_cap hh ha.hord0 ha.hsz0 ho hs20 (by rw [hot]; rfl) (hcap 20 (Or.inl rfl)),
      foot_of_cap hh ha.hord0 ha.hsz0 ho hs21 (by rw [hot]; rfl) (hcap 21 (Or.inr rfl))⟩
  · have hBc := hB _ _ _ hEs
    have c20 : o.cell 20 = B + BitVec.ofNat 64 (8 * 20) := by rw [Obj.cell, hob]
    have c21 : o.cell (20 + 1) = B + BitVec.ofNat 64 (8 * 21) := by rw [Obj.cell, hob]
    rw [c20, c21]
    exact hE Γ q s.memory _ _ hEs (br_cell_below rfl hh hBc (by omega)) (br_cell_below rfl hh hBc (by omega))

/-- `x = f(args);` as `gp_callAV`, with the `ScrOld` fact of the caller available to the post. -/
theorem gp_callAVs {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
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
      ScrOld a.Γ0 Γ → E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
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
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hsc hE hLc' hQ
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
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hsc hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- `f(args);` as `gp_call`, with the `ScrOld` fact of the caller available to the post. -/
theorem gp_callS {a : Act σ} {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
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
      ScrOld a.Γ0 Γ → E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory)) :
    HoareG σ X (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) := by
  refine hoareG_callD (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hE'⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hsc hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hE' ⟨v, rfl⟩⟩, fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (abn_good' habn) hna hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hsc hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.br_cell_below
#print axioms InitECandidate.Solver.MemSafe.Ins.brValClr2_G
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_callAVs
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_callS
