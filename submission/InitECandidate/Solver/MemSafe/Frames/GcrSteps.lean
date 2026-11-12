import InitECandidate.Solver.MemSafe.Frames.GcrLib

/-!
# `generic_create`: the single steps (frames10, task 2)

From a `KG` state: `charge_state_gas` / `credit_state_gas_refund` (exact memory effects on the
running frame's driver cells, `Φ` not raised), the driver stores `EV 72` / `EV 184` (`Φ` kept) and
`EV 64` (`Φ` lowered by `create_gas`), and `stack_push(<0,0,0,0>); return 0` (to the final facts).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

section
variable {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
  {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
  {Bs : List (BitVec 64)}
variable [Fact (ChainOf s0 fs)]
include hF hfs

omit hF in
theorem kg_head {d : Nat} {u : State σ} (hu : KG H gw Γ0 s0 p0 fs e Bs d u) :
    gword u nmEv = some e ∧ gword u nmCC = some c := by
  obtain ⟨-, Γ1, p1, -, hch, -⟩ := hu
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hch.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs'
  exact ⟨he', hc'⟩

/-- **`charge_state_gas(183600)`** from a `KG` state. -/
theorem gcr_csg (hC : X.code.lookup = guestCode) {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u0) :
    HoareG σ X (fun t => t = u0) (callD (nm "charge_state_gas") [cw 183600])
      (PS (KG H gw Γ0 s0 p0 fs e Bs d) u0.locals) := by
  have hH := hF.hooks
  obtain ⟨he, -⟩ := kg_head hfs hu
  have key : ∀ vs callee r (st : State σ),
      SumRelX guestC H (sg1 []) (fun _ s Γ => Chain guestC tEV tCK Γ s)
        (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a) (QGasN guestC tEV tCK) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧
        gword (callEntryStateHOLFinite u0 callee) nmEv = some e' ∧
        st.globals = (callEntryStateHOLFinite u0 callee).globals ∧
        CsgCase (callEntryStateHOLFinite u0 callee).memory e' a r st.memory) →
      st.memaddrs = (callEntryStateHOLFinite u0 callee).memaddrs →
      st.be = (callEntryStateHOLFinite u0 callee).be →
      Good (some r) → ¬ Abortive r → KG H gw Γ0 s0 p0 fs e Bs d st := by
    intro vs callee r st hR hE hd hbe hg hna
    have hue : KG H gw Γ0 s0 p0 fs e Bs d (callEntryStateHOLFinite u0 callee) :=
      kg_same hH hu rfl rfl rfl rfl
    obtain ⟨e', a, rfl, he', hglob, hcase⟩ := hE hg
    have he1 : e' = e := by
      have : gword u0 nmEv = some e' := he'
      rw [he] at this; exact (Option.some.inj this).symm
    subst he1
    have hmod : ModifiesOnly (TopCells e' c) (callEntryStateHOLFinite u0 callee).memory st.memory := by
      rcases hcase with ⟨_, _, hm⟩ | ⟨_, _, _, hm⟩ | ⟨_, _, _, hm⟩
      · rw [hm]
        exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨9, by simp [evDriverSlots], rfl⟩) _
      · rw [hm]
        unfold csgMem
        refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _)
          ?_ _) ?_ _
        · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
        · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
        · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
      · rw [hm]; exact modifiesOnly_refl _ _
    refine kg_topstep hF hfs hue hmod hglob hd hbe fun Γ1 hG1 hch1 _ _ => ?_
    have hpe : ∃ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p ∧
        ArgsOK guestC Γ1 p (sg1 []).params [.val (.word a)] := by
      obtain ⟨p, hp, -⟩ := hG1
      exact ⟨p, hp, argsOK_any (any_sg1 []) rfl⟩
    obtain ⟨Γ', -, -, -, -, -, hΦ⟩ := hR hg hna Γ1 hG1 hpe ⟨fs, hch1⟩
    omega
  refine hoareG_callD (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (csg_sumSpec hC hF)))
    (FunSpec.and (csg_spec hC) (funSpec_dom _))) ?_ ?_
  · intro s _ hs vs _ callee v st ⟨hR, hE, hd, hbe⟩ _
    subst hs
    exact Or.inl ⟨rfl, kg_locF hH _ _ (key vs callee _ st hR hE hd hbe (by simp [Good])
      (not_abortive_ret v)), rfl⟩
  · intro s _ hs vs _ callee r st ⟨hR, hE, hd, hbe⟩ _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kg_locF hH _ _ (key vs callee r st hR hE hd hbe (good_of_abn habn) hna)

/-- **`credit_state_gas_refund(183600)`** from a `KG` state. -/
theorem gcr_credit (hC : X.code.lookup = guestCode) {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u0) :
    HoareG σ X (fun t => t = u0) (callD (nm "credit_state_gas_refund") [cw 183600])
      (PS (KG H gw Γ0 s0 p0 fs e Bs d) u0.locals) := by
  have hH := hF.hooks
  obtain ⟨he, -⟩ := kg_head hfs hu
  have key : ∀ vs callee r (st : State σ),
      SumRelX guestC H (sg1 []) (fun _ s Γ => Chain guestC tEV tCK Γ s)
        (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a) (QGasN guestC tEV tCK) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧
        gword (callEntryStateHOLFinite u0 callee) nmEv = some e' ∧ r = .returned (.val (.word 0)) ∧
        st.globals = (callEntryStateHOLFinite u0 callee).globals ∧
        st.memory = creditMem (callEntryStateHOLFinite u0 callee).memory e' a) →
      st.memaddrs = (callEntryStateHOLFinite u0 callee).memaddrs →
      st.be = (callEntryStateHOLFinite u0 callee).be →
      Good (some r) → ¬ Abortive r → KG H gw Γ0 s0 p0 fs e Bs d st := by
    intro vs callee r st hR hE hd hbe hg hna
    have hue : KG H gw Γ0 s0 p0 fs e Bs d (callEntryStateHOLFinite u0 callee) :=
      kg_same hH hu rfl rfl rfl rfl
    obtain ⟨e', a, rfl, he', -, hglob, hm⟩ := hE hg
    have he1 : e' = e := by
      have : gword u0 nmEv = some e' := he'
      rw [he] at this; exact (Option.some.inj this).symm
    subst he1
    have hmod : ModifiesOnly (TopCells e' c) (callEntryStateHOLFinite u0 callee).memory st.memory := by
      rw [hm]
      unfold creditMem
      refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _)
        ?_ _) ?_ _
      · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
    refine kg_topstep hF hfs hue hmod hglob hd hbe fun Γ1 hG1 hch1 _ _ => ?_
    have hpe : ∃ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p ∧
        ArgsOK guestC Γ1 p (sg1 []).params [.val (.word a)] := by
      obtain ⟨p, hp, -⟩ := hG1
      exact ⟨p, hp, argsOK_any (any_sg1 []) rfl⟩
    obtain ⟨Γ', -, -, -, -, -, hΦ⟩ := hR hg hna Γ1 hG1 hpe ⟨fs, hch1⟩
    omega
  refine hoareG_callD (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (credit_sumSpec hC hF)))
    (FunSpec.and (credit_spec hC) (funSpec_dom _))) ?_ ?_
  · intro s _ hs vs _ callee v st ⟨hR, hE, hd, hbe⟩ _
    subst hs
    exact Or.inl ⟨rfl, kg_locF hH _ _ (key vs callee _ st hR hE hd hbe (by simp [Good])
      (not_abortive_ret v)), rfl⟩
  · intro s _ hs vs _ callee r st ⟨hR, hE, hd, hbe⟩ _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kg_locF hH _ _ (key vs callee r st hR hE hd hbe (good_of_abn habn) hna)

/-- **A driver store into `EV 72` / `EV 184`** (not read by `Φ`). -/
theorem gcr_stOther {k : Nat} (hk : k = 72 ∨ k = 184) {ex : ExpHOL 64} {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u0)
    (hw : ∀ v, ev u0 ex = some v → ∃ x, v = .val (.word x)) :
    HoareG σ X (fun t => t = u0) (stG "ev" k ex)
      (fun ro t => ro = none ∧ KG H gw Γ0 s0 p0 fs e Bs d t ∧ t.locals = u0.locals) := by
  obtain ⟨he, -⟩ := kg_head hfs hu
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have hG' : gword s nmEv = some G := hG
  rw [he, Option.some.injEq] at hG'
  subst hG'
  obtain ⟨x, rfl⟩ := hw v hv
  refine ⟨x, rfl, fun _ => ⟨rfl, ?_, rfl⟩⟩
  have hj : ∃ j ∈ evDriverSlots, e + BitVec.ofNat 64 k = e + BitVec.ofNat 64 (8 * j) := by
    rcases hk with rfl | rfl
    · exact ⟨9, by simp [evDriverSlots], rfl⟩
    · exact ⟨23, by simp [evDriverSlots], rfl⟩
  refine kg_topstep hF hfs hu (modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl hj) x) rfl rfl rfl
    fun Γ1 hG1 hch1 hch2 hrest => ?_
  have := phi_store_other hF hfs hG1 hch1 hch2 (k := k) (by omega) (by omega) (by omega)
    (by omega) (x := x) rfl hrest
  omega

/-- **The driver store `EV 64 := gl - create_gas`** (`Φ` lowered by `create_gas`). -/
theorem gcr_st64 {d : Nat} {u0 : State σ} (hu : KG H gw Γ0 s0 p0 fs e Bs d u0) {cg : BitVec 64}
    (lgl : u0.locals.lookup (nm "gl") = some (.val (.word (fld u0.memory e 64))))
    (lcg : u0.locals.lookup (nm "create_gas") = some (.val (.word cg)))
    (hcg : cg ≤ fld u0.memory e 64) :
    HoareG σ X (fun t => t = u0) (stG "ev" 64 (.op .sub [lv (nm "gl"), lv (nm "create_gas")]))
      (fun ro t => ro = none ∧ KG H gw Γ0 s0 p0 fs e Bs (d + cg.toNat) t ∧ t.locals = u0.locals) := by
  obtain ⟨he, -⟩ := kg_head hfs hu
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have hG' : gword s nmEv = some G := hG
  rw [he, Option.some.injEq] at hG'
  subst hG'
  rw [ev_sub2 (ev_lv_eq lgl) (ev_lv_eq lcg), Option.some.injEq] at hv
  subst hv
  refine ⟨_, rfl, fun _ => ⟨rfl, ?_, rfl⟩⟩
  refine kg_topstep hF hfs hu (modifiesOnly_upd (modifiesOnly_refl _ _)
    (Or.inl ⟨8, by simp [evDriverSlots], rfl⟩) _) rfl rfl rfl fun Γ1 hG1 hch1 hch2 hrest => ?_
  have := phi_store64 hF hfs hG1 hch1 hch2 (x := fld s.memory e 64 - cg) rfl hrest
  rw [BitVec.toNat_sub_of_le hcg] at this
  rw [BitVec.le_def] at hcg
  omega

/-- **`stack_push(<0, 0, 0, 0>); return 0`** from a `KG` state, to the final facts. -/
theorem gcr_push0 (hsp : CSumm σ X guestC H (nm "stack_push") (sgA 1 []) spCaps)
    (hspF : KeepsFp σ X (nm "stack_push")) {d : Nat} {u0 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u0) :
    HoareG σ X (fun t => t = u0) gcrPush0
      (fun ro t => ro ≠ none ∧ ∀ r, ro = some r → ¬ Abortive r → KF H gw Γ0 s0 p0 t) := by
  have hH := hF.hooks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, -, -⟩ := hu
  unfold gcrPush0
  refine hoareG_seq (R := PS (KF H gw Γ0 s0 p0) u0.locals)
    (hoareG_kgCallD hF hfs hsp hspF (by simp [sgA]) (by decide) (by decide) (ks := [1, 2, 29])
      (by decide) (by decide) (by decide) hrun hch hE hJ ?_ ?_ (Or.inl (by decide))
      (Or.inl (by decide)) (kf_locF hH) ?_) ?_ ?_
  · intro vs hvs
    refine ⟨argsOK_any (sgA_any 1 []) (by rw [evs_one hvs]; rfl), fun callee => ?_⟩
    obtain ⟨o, ho, -⟩ := evRun_of_chainL (hfs ▸ hch)
    exact spCaps_req (Γ := Γ1) (s := callEntryStateHOLFinite u0 callee) (e := o) ho
  · intro vs callee a _ hw
    exact spCaps_pw ((G_locFree hH u0 _ _).mpr hrun.2.2.2.2.2.1) hw
  · intro Γ2 p2 st hrun2 hch2 hE2 hΦ2 _ _ _
    exact ⟨Γ2, p2, hrun2, ⟨fs, hch2, hE2⟩, by omega, rootK_of_same Fact.out hch2.chain⟩
  · intro r t _ hr _ h
    rcases h with ⟨h0, -⟩ | h
    · exact absurd h0 hr
    · exact h
  · refine hoareG_return fun s _ h v _ => ?_
    rcases h with ⟨-, hk, -⟩ | ⟨h0, -⟩
    · exact ⟨by simp, fun _ _ _ => kf_locF hH _ _ hk⟩
    · exact absurd rfl h0

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_csg
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_credit
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_stOther
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_st64
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_push0
