import InitECandidate.Solver.MemSafe.Frames.FinR

/-!
# `finish_child`: the child-side prefix (Phase A)

Before the switch the child `(e, c)` is still the running frame. `pa_core`: a summarized callee
writing, among `prot` cells, only gas slots of the running EV record (`ks ⊆ gasKs`), keeping
`frame_mem_ptr`, and not raising the child's `GAS_LEFT + STATE_GAS_SPILLED`, keeps the chain
(same frames) and does not raise `Φ`; the child's continuation record is unchanged.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **A child-side callee step** (any core cell set `PWx` whose `prot` cells are in `PWtop ks`). -/
theorem pa_coreW {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {Γa Γ' : Gam} {s st : State σ} {e c : BitVec 64} {rest : List Frame}
    (hG : G C H Γa s) (hch : ChainL C tEV tCK Γa s ((e, c) :: rest)) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {pu pt : Ptrs} {PWx : BitVec 64 → Prop}
    (hc : SumCore C H sg PWx Γa s vs r st Γ' pu pt)
    (hpw : ∀ a, ProtCell C Γa a → PWx a → PWtop tEV tCK ks vs s Γa a)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γa a) (hfp : pt.fp = pu.fp)
    (hgas : (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat) :
    ChainL C tEV tCK Γ' st ((e, c) :: rest) ∧ Phi st ≤ Phi s ∧
      ∀ j, j < 13 → fld st.memory c (8 * j) = fld s.memory c (8 * j) := by
  have hpk := sumCore_protW hc hG hac hpw
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -, hpg, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : pu = q := Option.some.inj (hpu.symm.trans hq)
  have hG'c := hG'
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  obtain rfl : pt = q' := Option.some.inj (hpt.symm.trans hq')
  have hks' : ∀ k ∈ ks, 8 * k + 8 ≤ 280 := fun k hk => by
    have := hks k hk; simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at this; omega
  have hesz : ∀ x ∈ Γa, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks' k hk; omega
  obtain ⟨e1, c1, rest1, hfs1, hev, hcc, hic⟩ := hch.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
  have hEV : ∀ o ∈ Γa, o.ty = tEV → ∀ j ∈ evProtSlots, (o.base = e → j ∉ ks) →
      fld st.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
    intro o ho hot j hj hnr
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    refine frame_keep hord hL hesz hpk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.evProt j hj) fun heb => hnr ?_
    rw [hev] at heb; exact (Option.some.inj heb).symm
  have hCK : ∀ o ∈ Γa, o.ty = tCK → ∀ j, j < 13 →
      fld st.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
    intro o ho hot j hj
    have hsz := ck_size hF hL ho hot
    refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
    exfalso
    rw [hev] at heb
    obtain ⟨o', ho', hob', hot'⟩ := (hch.objs (e, c) (by simp)).1
    exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
      ((Option.some.inj heb).symm.trans hob'.symm)
  have hnd := hch.nodupE
  simp only [List.map_cons, List.nodup_cons] at hnd
  have hne : ∀ f ∈ rest, f.1 ≠ e := fun f hf h => hnd.1 (h ▸ List.mem_map_of_mem hf)
  have hfE : ∀ f ∈ (e, c) :: rest, ∀ j ∈ evProtSlots, (f.1 = e → j ∉ ks) →
      fld st.memory f.1 (8 * j) = fld s.memory f.1 (8 * j) := by
    intro f hf j hj hnr
    obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).1
    rw [← hob]; exact hEV o ho hot j hj fun hb => hnr (hob.symm.trans hb)
  have hfC : ∀ f ∈ (e, c) :: rest, ∀ j, j < 13 →
      fld st.memory f.2 (8 * j) = fld s.memory f.2 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).2
    rw [← hob]; exact hCK o ho hot j hj
  have notg : ∀ j ∈ [3, 5, 13, 18, 27], j ∉ ks := by
    intro j hj hk
    have := hks j hk
    simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at hj this
    omega
  have hkeep : ChainKeep s st ((e, c) :: rest) := by
    refine ⟨by unfold gword; rw [hpg _ hF.pgEv hgw.1], by unfold gword; rw [hpg _ hF.pgCC hgw.2],
      ?_, ?_, ?_, ?_, ?_⟩
    · intro f hf k hk
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact hfC f hf 0 (by omega)
      · exact hfC f hf 1 (by omega)
      · exact hfC f hf 2 (by omega)
      · exact hfC f hf 6 (by omega)
      · exact hfC f hf 7 (by omega)
      · exact hfC f hf 9 (by omega)
      · exact hfC f hf 10 (by omega)
    · intro f hf k hk
      have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      have hnr : f.1 = e → False := hne f hf
      simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen, List.mem_cons,
        List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl
      · exact hfE f hf' 2 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 29 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 3 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 5 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 4 (by simp [evProtSlots]) fun h => absurd h hnr
    · intro f hf k hk
      simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      subst hf
      simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hfE _ (by simp) 3 (by simp [evProtSlots]) fun _ => notg 3 (by simp)
      · exact hfE _ (by simp) 5 (by simp [evProtSlots]) fun _ => notg 5 (by simp)
    · intro p' hp'
      obtain rfl := ptrs_some hpt hp'
      exact ⟨pu, hpu, hfp⟩
    · intro f hf k hk
      simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hfE f hf 18 (by simp [evProtSlots]) fun _ => notg 18 (by simp)
      · exact hfE f hf 27 (by simp [evProtSlots]) fun _ => notg 27 (by simp)
  have hst : GStep C tEV Γa Γ' s st e := ⟨pu, pt, hpu, hpt, hord, hord', hL, hL', hmo, hext, hnf,
    fun x hx hxt hxe => ⟨hEV x hx hxt 1 (by simp [evProtSlots]) fun h => absurd h hxe,
      hEV x hx hxt 3 (by simp [evProtSlots]) fun h => absurd h hxe⟩⟩
  have hch' := chainL_keep hch hkeep (top := e)
    (fun f hf => by simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf; rw [← hf]) hst
  refine ⟨hch', ?_, fun j hj => hfC (e, c) (by simp) j hj⟩
  rw [phi_eq hch'.chain, phi_eq hch.chain, wsum_cons, wsum_cons]
  have hrest : wsum st.memory rest = wsum s.memory rest := by
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl
      · exact hfE f hf' 8 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 24 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 13 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
    · exact hfC f (List.mem_cons_of_mem _ hf) 4 (by omega)
  have h13 := hfE (e, c) (by simp) 13 (by simp [evProtSlots]) fun _ => notg 13 (by simp)
  have h4 := hfC (e, c) (by simp) 4 (by omega)
  simp only [show (8 * 13 : Nat) = 104 from rfl, show (8 * 4 : Nat) = 32 from rfl] at h13 h4
  rw [hrest, wt_eq, wt_eq, h13, h4]
  omega


/-- **A child-side callee step.** -/
theorem pa_core {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {Γa Γ' : Gam} {s st : State σ} {e c : BitVec 64} {rest : List Frame}
    (hG : G C H Γa s) (hch : ChainL C tEV tCK Γa s ((e, c) :: rest)) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {pu pt : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γa a ∧ PWtop tEV tCK ks vs s Γa a) Γa s vs r st Γ'
      pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γa a) (hfp : pt.fp = pu.fp)
    (hgas : (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat) :
    ChainL C tEV tCK Γ' st ((e, c) :: rest) ∧ Phi st ≤ Phi s ∧
      ∀ j, j < 13 → fld st.memory c (8 * j) = fld s.memory c (8 * j) :=
  pa_coreW hF hG hch hks hgw hc (fun _ _ h => h.2) hac hfp hgas

/-- A summary core for a smaller footprint is one for a larger. -/
theorem sumCore_pwM {C : Cfg} {H : Hooks σ} {sg : Sig} {PW PW' : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (h : ∀ a, PW a → PW' a) :
    SumCore C H sg PW' Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := hc
  refine ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩
  rcases ha with h' | h' | h' | h'
  · exact Or.inl h'
  · exact Or.inr (Or.inl h')
  · exact Or.inr (Or.inr (Or.inl h'))
  · exact Or.inr (Or.inr (Or.inr (h a h')))

/-- **A write to the running frame's driver slots / `CK_DONE` keeps the chain extension.** -/
theorem chainE_top {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (hF : FrameCfg C H tEV tCK) (hX : XCfg C tEV tCK P R) (hmt : tEV ∉ msgTys ∧ tCK ∉ msgTys)
    {Γ : Gam} {s t : State σ} {fs rest : List Frame} {e c : BitVec 64} (hG : G C H Γ s)
    (hch : ChainL C tEV tCK Γ s fs) (hfs : fs = (e, c) :: rest)
    (hmod : ModifiesOnly (TopCells e c) s.memory t.memory) (hglob : t.globals = s.globals)
    (h : ChainE P R Γ s fs) : ChainE P R Γ t fs := by
  obtain ⟨p, hps, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have keep : ∀ o ∈ Γ, ∀ k, k < o.size → (o.base ≠ oe.base ∨ ∀ j ∈ evDriverSlots, k ≠ 8 * j) →
      (o.base ≠ oc.base ∨ k ≠ 32) → fld t.memory o.base k = fld s.memory o.base k := by
    intro o ho k hk h1 h2
    have := hmod _ (not_topCells hord hL hoe hoc ho hse hsc hk h1 h2)
    unfold fld rd; rw [this]
  have hneE : ∀ o ∈ Γ, o.ty ≠ tEV → o.base ≠ oe.base := fun o ho hty =>
    base_ne_of_ty hL ho hoe (by rw [hoet]; exact hty)
  have hneC : ∀ o ∈ Γ, o.ty ≠ tCK → o.base ≠ oc.base := fun o ho hty =>
    base_ne_of_ty hL ho hoc (by rw [hoct]; exact hty)
  have hst : GStep C tEV Γ Γ s t oe.base := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun x hx hxt hne => ?_
    have hsz := ev_size hF hL hx hxt
    have hxc : x.base ≠ oc.base := hneC x hx (by rw [hxt]; exact hF.ne)
    exact ⟨keep x hx 8 (by omega) (Or.inl hne) (Or.inl hxc),
      keep x hx 24 (by omega) (Or.inl hne) (Or.inl hxc)⟩
  refine chainE_step hX hst (fun f hf => ⟨fun j hj => ?_, fun o ho hot j hj hpr => ?_⟩)
    (fun f hf k hk => ?_) h
  · obtain ⟨x, hx, hxb, hxt⟩ := (hch.objs f hf).1
    have hsz := ev_size hF hL hx hxt
    have hj' : j = 11 ∨ j = 14 ∨ j = 17 ∨ j = 26 ∨ j = 28 := by simpa [evXSlots] using hj
    rw [← hxb]
    refine keep x hx (8 * j) (by omega) (Or.inr fun j' hj' => ?_)
      (Or.inl (hneC x hx (by rw [hxt]; exact hF.ne)))
    simp only [evDriverSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj'
    omega
  · have hty : o.ty ≠ tEV ∧ o.ty ≠ tCK := ⟨fun h' => hmt.1 (h' ▸ hot), fun h' => hmt.2 (h' ▸ hot)⟩
    exact keep o ho (8 * j) (by unfold Obj.HasSlot at hj; omega) (Or.inl (hneE o ho hty.1))
      (Or.inl (hneC o ho hty.2))
  · obtain ⟨y, hy, hyb, hyt⟩ := (hch.objs f hf).2
    have hsz := ck_size hF hL hy hyt
    have hk' : k < 104 ∧ k ≠ 32 := by
      simp only [ckXSlots, ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark,
        ckOutStart, ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      omega
    rw [← hyb]
    exact keep y hy k (by omega) (Or.inl (hneE y hy (by rw [hyt]; exact hF.ne.symm)))
      (Or.inr hk'.2)

/-- **Eon: `chainE_top` with `EV_OUTPUT_N` added to the written cells.** -/
theorem chainE_top16 {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (hF : FrameCfg C H tEV tCK) (hX : XCfg C tEV tCK P R) (hmt : tEV ∉ msgTys ∧ tCK ∉ msgTys)
    {Γ : Gam} {s t : State σ} {fs rest : List Frame} {e c : BitVec 64} (hG : G C H Γ s)
    (hch : ChainL C tEV tCK Γ s fs) (hfs : fs = (e, c) :: rest)
    (hmod : ModifiesOnly (TopCells16 e c) s.memory t.memory) (hglob : t.globals = s.globals)
    (h : ChainE P R Γ s fs) : ChainE P R Γ t fs := by
  obtain ⟨p, hps, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have keep : ∀ o ∈ Γ, ∀ k, k < o.size → (o.base ≠ oe.base ∨ ∀ j ∈ evDriverSlots16, k ≠ 8 * j) →
      (o.base ≠ oc.base ∨ k ≠ 32) → fld t.memory o.base k = fld s.memory o.base k := by
    intro o ho k hk h1 h2
    have := hmod _ (not_topCells16 hord hL hoe hoc ho hse hsc hk h1 h2)
    unfold fld rd; rw [this]
  have hneE : ∀ o ∈ Γ, o.ty ≠ tEV → o.base ≠ oe.base := fun o ho hty =>
    base_ne_of_ty hL ho hoe (by rw [hoet]; exact hty)
  have hneC : ∀ o ∈ Γ, o.ty ≠ tCK → o.base ≠ oc.base := fun o ho hty =>
    base_ne_of_ty hL ho hoc (by rw [hoct]; exact hty)
  have hst : GStep C tEV Γ Γ s t oe.base := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun x hx hxt hne => ?_
    have hsz := ev_size hF hL hx hxt
    have hxc : x.base ≠ oc.base := hneC x hx (by rw [hxt]; exact hF.ne)
    exact ⟨keep x hx 8 (by omega) (Or.inl hne) (Or.inl hxc),
      keep x hx 24 (by omega) (Or.inl hne) (Or.inl hxc)⟩
  refine chainE_step hX hst (fun f hf => ⟨fun j hj => ?_, fun o ho hot j hj hpr => ?_⟩)
    (fun f hf k hk => ?_) h
  · obtain ⟨x, hx, hxb, hxt⟩ := (hch.objs f hf).1
    have hsz := ev_size hF hL hx hxt
    have hj' : j = 11 ∨ j = 14 ∨ j = 17 ∨ j = 26 ∨ j = 28 := by simpa [evXSlots] using hj
    rw [← hxb]
    refine keep x hx (8 * j) (by omega) (Or.inr fun j' hj' => ?_)
      (Or.inl (hneC x hx (by rw [hxt]; exact hF.ne)))
    simp only [evDriverSlots16, List.mem_cons, List.mem_nil_iff, or_false] at hj'
    omega
  · have hty : o.ty ≠ tEV ∧ o.ty ≠ tCK := ⟨fun h' => hmt.1 (h' ▸ hot), fun h' => hmt.2 (h' ▸ hot)⟩
    exact keep o ho (8 * j) (by unfold Obj.HasSlot at hj; omega) (Or.inl (hneE o ho hty.1))
      (Or.inl (hneC o ho hty.2))
  · obtain ⟨y, hy, hyb, hyt⟩ := (hch.objs f hf).2
    have hsz := ck_size hF hL hy hyt
    have hk' : k < 104 ∧ k ≠ 32 := by
      simp only [ckXSlots, ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark,
        ckOutStart, ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      omega
    rw [← hyb]
    exact keep y hy k (by omega) (Or.inl (hneE y hy (by rw [hyt]; exact hF.ne.symm)))
      (Or.inr hk'.2)


/-- The child-side facts of `finish_child` before the switch. -/
def PA (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (s0 : State σ) (e c : BitVec 64)
    (rest : List Frame) (L0 : Locs) (u : State σ) : Prop :=
  (∀ x ∈ finNames, u.locals.lookup x = L0.lookup x) ∧ JrNZ u ∧ ∃ Γa, G C H Γa u ∧
    ChainL C tEV tCK Γa u ((e, c) :: rest) ∧ Phi u ≤ Phi s0 ∧
    (∀ j, j < 13 → fld u.memory c (8 * j) = fld s0.memory c (8 * j)) ∧
    ChainE P R Γa u ((e, c) :: rest)

/-- **A write to the child's driver slots** not raising its weight. -/
theorem pa_top {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hmt : tEV ∉ msgTys ∧ tCK ∉ msgTys)
    {s0 : State σ} {e c : BitVec 64} {rest : List Frame} {L0 : Locs} {u t : State σ}
    (h : PA C H tEV tCK P R s0 e c rest L0 u)
    (hmod : ModifiesOnly (fun a => ∃ j ∈ evDriverSlots, a = e + BitVec.ofNat 64 (8 * j))
      u.memory t.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hl : t.locals = u.locals)
    (hgas : (fld t.memory e 64).toNat + (fld t.memory e 192).toNat ≤
      (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (h104 : fld t.memory e 104 = fld u.memory e 104) :
    PA C H tEV tCK P R s0 e c rest L0 t := by
  obtain ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ := h
  have hxt := chainE_top hF hX hmt hG hch rfl (fun a ha => hmod a fun h => ha (Or.inl h)) hg hx
  have hckc : ∀ j, j < 13 → fld t.memory c (8 * j) = fld u.memory c (8 * j) := by
    intro j hj
    have ⟨q, hq, hord, hL, _⟩ := hG
    obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
    obtain ⟨oc, hoc, hocb, hoct⟩ := (hch.objs (e, c) (by simp)).2
    have hoeb' : oe.base = e := hoeb
    have hocb' : oc.base = c := hocb
    have hse := ev_size hF hL hoe hoet
    have hsc := ck_size hF hL hoc hoct
    have hbne : oc.base ≠ oe.base := base_ne_of_ty hL hoc hoe (by rw [hoct, hoet]; exact hF.ne.symm)
    rw [← hocb']
    refine fld_mod hmod ?_
    rintro ⟨k, hk, hke⟩
    have hk' : k ≤ 24 := by simp [evDriverSlots] at hk; omega
    rw [← hoeb'] at hke
    exact cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hbne) hke
  have hwt : wt t.memory (e, c) ≤ wt u.memory (e, c) := by
    have h32 := hckc 4 (by omega)
    simp only [show (8 * 4 : Nat) = 32 from rfl] at h32
    rw [wt_eq, wt_eq, h32, h104]
    omega
  have hmod' : ModifiesOnly (TopCells e c) u.memory t.memory :=
    fun a ha => hmod a fun h => ha (Or.inl h)
  obtain ⟨p, hrun, hch', hrest⟩ := top_write (gw := []) hF hG hch rfl hmod' hg hd hbe
  refine ⟨fun x hx => by rw [hl]; exact hfl x hx, jrNZ_congr hg hJ, Γa, hrun.2.2.2.2.2.1, hch', ?_,
    fun j hj => ?_, hxt⟩
  · have h1 := phi_eq hch'.chain
    have h2 := phi_eq hch.chain
    rw [wsum_cons, hrest] at h1
    rw [wsum_cons] at h2
    omega
  · exact (hckc j hj).trans (hck j hj)

/-- **Eon: `pa_top` with `EV_OUTPUT_N` among the written cells** (a bounded word `hv`). -/
theorem pa_top16 {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hmt : tEV ∉ msgTys ∧ tCK ∉ msgTys)
    {s0 : State σ} {e c : BitVec 64} {rest : List Frame} {L0 : Locs} {u t : State σ}
    (h : PA C H tEV tCK P R s0 e c rest L0 u)
    (hmod : ModifiesOnly (fun a => ∃ j ∈ evDriverSlots16, a = e + BitVec.ofNat 64 (8 * j))
      u.memory t.memory)
    (hv : (rd t.memory (e + BitVec.ofNat 64 128)).toNat < 2 ^ 32)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hl : t.locals = u.locals)
    (hgas : (fld t.memory e 64).toNat + (fld t.memory e 192).toNat ≤
      (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (h104 : fld t.memory e 104 = fld u.memory e 104) :
    PA C H tEV tCK P R s0 e c rest L0 t := by
  obtain ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ := h
  have hxt := chainE_top16 hF hX hmt hG hch rfl (fun a ha => hmod a fun h => ha (r16_top16 e c h)) hg hx
  have hckc : ∀ j, j < 13 → fld t.memory c (8 * j) = fld u.memory c (8 * j) := by
    intro j hj
    have ⟨q, hq, hord, hL, _⟩ := hG
    obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
    obtain ⟨oc, hoc, hocb, hoct⟩ := (hch.objs (e, c) (by simp)).2
    have hoeb' : oe.base = e := hoeb
    have hocb' : oc.base = c := hocb
    have hse := ev_size hF hL hoe hoet
    have hsc := ck_size hF hL hoc hoct
    have hbne : oc.base ≠ oe.base := base_ne_of_ty hL hoc hoe (by rw [hoct, hoet]; exact hF.ne.symm)
    rw [← hocb']
    refine fld_mod hmod ?_
    rintro ⟨k, hk, hke⟩
    have hk' : k ≤ 24 := by simp [evDriverSlots16] at hk; omega
    rw [← hoeb'] at hke
    exact cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hbne) hke
  have hwt : wt t.memory (e, c) ≤ wt u.memory (e, c) := by
    have h32 := hckc 4 (by omega)
    simp only [show (8 * 4 : Nat) = 32 from rfl] at h32
    rw [wt_eq, wt_eq, h32, h104]
    omega
  have hmod' : ModifiesOnly (TopCells16 e c) u.memory t.memory :=
    fun a ha => hmod a fun h => ha (r16_top16 e c h)
  obtain ⟨p, hrun, hch', hrest⟩ := top_write16 (gw := []) hF hG hch rfl hmod' hv hg hd hbe
  refine ⟨fun x hx => by rw [hl]; exact hfl x hx, jrNZ_congr hg hJ, Γa, hrun.2.2.2.2.2.1, hch', ?_,
    fun j hj => ?_, hxt⟩
  · have h1 := phi_eq hch'.chain
    have h2 := phi_eq hch.chain
    rw [wsum_cons, hrest] at h1
    rw [wsum_cons] at h2
    omega
  · exact (hckc j hj).trans (hck j hj)


end InitECandidate.Solver.MemSafe.Frames
