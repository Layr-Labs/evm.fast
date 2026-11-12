import InitECandidate.Solver.Band7.CsrLoopB

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

set_option maxHeartbeats 0 in
theorem cstage_enc2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (hs2 : (nm "s2", wv [x, y, z]) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "enc", nm "n"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_enc_2
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_enc_2) := by
  unfold csr_enc_2
  refine gc_allocQ ha haC hCb haH (n := 128) (by norm_num) (by norm_num) (x := nm "enc")
    (fun p hp => hfr p hp _ (by decide)) (E := IM a K C NR SW AW ND M)
    (Q := fun H Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ FBlk a.p0 H 128 Γ q ∧ M.toNat + 16 ≤ H.toNat)
    ?_ ?_ (L2 := fun m => ∃ H : BitVec 64, LV ((nm "enc", ValueHOL.val (.word H)) :: B) m)
    (fun m0 m _ ⟨H, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s st Γ Γ' q q' H hext hh hh' hmo hnf hmd hE hHn hFB hmem
    refine ⟨im_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE, hFB, ?_⟩
    have := hE.2.2.1.1.2.2.1
    omega
  · intro H
    let B' : List (MlS × ValueHOL 64) := (nm "enc", ValueHOL.val (.word H)) :: B
    refine ch_weakL (L := LV B') (fun m hm => ⟨H, hm⟩) ?_
    exact cstage_ea ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate) (List.mem_cons_self ..)
      (List.mem_cons_of_mem _ hs2) (by
        intro p hp
        rcases List.mem_cons.mp hp with rfl | hp
        · dsimp only; decide
        · exact hfr p hp _ (by decide))


set_option maxHeartbeats 0 in
theorem cstage_sr {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z p1 p2 : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (hs2 : (nm "s2", wv [x, y, z]) ∈ B)
    (hnr : (nm "nr", wv [p1, p2]) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "sr", nm "enc", nm "n"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_sr_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_sr_1) := by
  unfold csr_sr_1
  refine gc_dec ha.hH (L1 := fun m => ∃ v : ValueHOL 64, LV ((nm "sr", v) :: B) m)
    (L2 := fun m => ∃ v : ValueHOL 64, LV ((nm "sr", v) :: B) m) ?_ ?_
    (fun m0 m _ ⟨v, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s hs hL v hv
    exact ⟨v, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · refine ch_exL fun v0 => ?_
    refine gc_seq (L := fun m => ∃ v : ValueHOL 64, LV ((nm "sr", v) :: B) m)
      (E := IM a K C NR SW AW ND M) ?_ ?_
    · refine gc_ite ?_ ?_
      · refine ch_pre (gc_assign ha.hH ?_) (fun s _ h => h.1)
        intro s hs hL v hv
        have hx : ev s (lv (nm "nr")) = some (wv [p1, p2]) := lv_ev hL (List.mem_cons_of_mem _ hnr)
        exact ⟨v, lv_cons (lv_set (lv_mono hL (fun p hp => List.mem_cons_of_mem _ hp))
          (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
      · exact gc_skip (fun s h => by
          obtain ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, -⟩ := (⟨h.1, h.2⟩ : _ ∧ _)
          exact ⟨⟨v0, hL⟩, Γ, q, he, hh, hsc, hE⟩)
    · refine ch_exL fun v1 => ?_
      let B1 : List (MlS × ValueHOL 64) := (nm "sr", v1) :: B
      refine ch_weakL (L := LV B1) (fun m hm => ⟨v1, hm⟩) ?_
      exact cstage_enc2 ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate)
        (List.mem_cons_of_mem _ hs2) (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw))
          (by decide))


set_option maxHeartbeats 0 in
theorem cstage_nr {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (hs2 : (nm "s2", wv [x, y, z]) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "nr", nm "sr", nm "enc", nm "n"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_nr_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_nr_1) := by
  unfold csr_nr_1
  refine gc_decAny ha haC hCb (pers_im haC hCb hK) (f := nm "htab_get")
    (sg' := ⟨[.any, .any], [], [], false⟩) (sa_cast hCb haH get_R) (by simp) rfl rfl
    (args := [lv (nm "new_roots"), .rfield 1 (lv (nm "s2"))]) rfl (x := nm "nr") (sh := .comb [.one, .one])
    (fun p hp => hfr p hp _ (by decide)) (fun v => ∃ p1 p2 : BitVec 64, v = wv [p1, p2])
    (fun v hsh => by obtain ⟨p1, p2, hv⟩ := rstruct_of_shape hsh; exact ⟨p1, p2, hv⟩)
    (L2 := fun m => ∃ p1 p2 : BitVec 64, LV ((nm "nr", wv [p1, p2]) :: B) m) (L3 := LV B) ?_
    (fun m0 m _ ⟨p1, p2, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  intro v ⟨p1, p2, hv⟩
  subst hv
  refine ch_weakL (L := LV ((nm "nr", wv [p1, p2]) :: B)) (fun m hm => ⟨p1, p2, hm⟩) ?_
  exact cstage_sr ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate) (List.mem_cons_of_mem _ hs2)
    (List.mem_cons_self ..) (fresh_cons (fun p hp w hw => hfr p hp w (by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hw ⊢; tauto)) (by decide))


set_option maxHeartbeats 0 in
theorem cstage_a {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z : BitVec 64}
    (hKI : ∀ Γ, K Γ → KeyIn Γ SW Types.tHTbt20 y 20)
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (hs2 : (nm "s2", wv [x, y, z]) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "a", nm "nr", nm "sr", nm "enc", nm "n"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_a_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_a_1) := by
  unfold csr_a_1
  refine gc_decAny ha haC hCb (pers_im haC hCb hK) (f := nm "ws_get_account_optional")
    (sg' := ⟨[.any], [], [], false⟩) (sa_cast hCb haH wsacct_R) (by simp) rfl rfl
    (args := [.rfield 1 (lv (nm "s2"))]) rfl (x := nm "a") (sh := .one)
    (fun p hp => hfr p hp _ (by decide)) (fun v => ∃ A : BitVec 64, v = .val (.word A))
    (fun v hsh => val_of_shapeEq_one' hsh)
    (L2 := fun m => ∃ A : BitVec 64, LV ((nm "a", ValueHOL.val (.word A)) :: B) m) (L3 := LV B) ?_
    (fun m0 m _ ⟨A, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  intro v ⟨A, hv⟩
  subst hv
  let B' : List (MlS × ValueHOL 64) := (nm "a", ValueHOL.val (.word A)) :: B
  refine ch_weakL (L := LV B') (fun m hm => ⟨A, hm⟩) ?_
  refine gc_seq (L := LV B') (E := IM a K C NR SW AW ND M) ?_ ?_
  · refine chset_stmt ha hCb haH hgr (th := Types.tHTb20) (by decide) hcC (T := C) (key := y)
      (val := BitVec.ofNat 64 1) (E := IM a K C NR SW AW ND M) (L := LV B') ?_ ?_ ?_ ?_ ?_
    · intro s hL
      exact evs_cons (lv_ev hL (List.mem_cons_of_mem _ hcache))
        (evs_cons (ev_rfield_wv (x := lv (nm "s2")) (ws := [x, y, z])
          (lv_ev hL (List.mem_cons_of_mem _ hs2)) (i := 1) (by simp)) (evs_cons (ev_cw s 1) evs_nil))
    · exact fun s Γ q hh hE => hE.1.1
    · intro s Γ q hh hE
      have : valK Types.tHTb20 = FK.scalar := by decide
      rw [this]; trivial
    · intro s Γ q hh hE
      have hT : ∃ od ∈ Γ, od.base = C ∧ od.ty = Types.tHTb20 := hE.1.1
      have hkl : htKL Types.tHTb20 = 20 := by decide
      refine rdkey_core (gamOK_of_layout (layout_of_heap haC hh)) (th := Types.tHTb20) (t := Types.tHTbt20)
        (by decide) (by decide) (by decide) (B := SW) (key := y) (by decide) ?_ hT
      rw [hkl]
      exact hKI Γ hE.2.2.2
    · intro s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE
      exact im_nb haC hCb hK (setSigR_nb _) (by unfold CapsAvoid HtabEntries.capsHT; decide) hmd hext hnf hmo
        hh hh' hE
  · refine gc_ite ?_ (gc_skip fun s h => h.1)
    refine ch_pre (cstage_nr ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate)
      (List.mem_cons_of_mem _ hs2) (fresh_cons (fun p hp w hw => hfr p hp w (by
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hw ⊢; tauto)) (by decide))) (fun s _ h => h.1)


set_option maxHeartbeats 0 in
theorem cstage_inaw {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z : BitVec 64}
    (hKI : ∀ Γ, K Γ → KeyIn Γ SW Types.tHTbt20 y 20)
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (hs2 : (nm "s2", wv [x, y, z]) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "inaw", nm "a", nm "nr", nm "sr", nm "enc", nm "n"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_inaw_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_inaw_1) := by
  unfold csr_inaw_1
  refine gc_decAny ha haC hCb (pers_im haC hCb hK) (f := nm "htab_has")
    (sg' := ⟨[.any, .any], [], [], false⟩) (sa_cast hCb haH has_R) (by simp) rfl rfl
    (args := [lv (nm "aw"), .rfield 1 (lv (nm "s2"))]) rfl (x := nm "inaw") (sh := .one)
    (fun p hp => hfr p hp _ (by decide)) (fun v => ∃ W : BitVec 64, v = .val (.word W))
    (fun v hsh => val_of_shapeEq_one' hsh)
    (L2 := fun m => ∃ W : BitVec 64, LV ((nm "inaw", ValueHOL.val (.word W)) :: B) m) (L3 := LV B) ?_
    (fun m0 m _ ⟨W, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  intro v ⟨W, hv⟩
  subst hv
  let B' : List (MlS × ValueHOL 64) := (nm "inaw", ValueHOL.val (.word W)) :: B
  refine ch_weakL (L := LV B') (fun m hm => ⟨W, hm⟩) ?_
  refine gc_ite ?_ (gc_skip fun s h => h.1)
  refine ch_pre (cstage_a ha haC hCb haH hgr hcI hcC hK hKI (List.mem_cons_of_mem _ hstate)
    (List.mem_cons_of_mem _ hs2) (List.mem_cons_of_mem _ hcache) (fresh_cons (fun p hp w hw => hfr p hp w (by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hw ⊢; tauto)) (by decide))) (fun s _ h => h.1)


set_option maxHeartbeats 0 in
/-- One iteration of the second loop. -/
theorem cstage_s2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M : BitVec 64}
    (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "i" :: nsB, p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M)) csr_s2_1
      (GP a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M) Rv) (cb csr_s2_1) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hKt : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → True → True := fun _ _ _ _ h => h
  refine ch_exL fun I => ?_
  let kvi : List (MlS × ValueHOL 64) := (nm "i", ValueHOL.val (.word I)) :: B
  have hfri : ∀ p ∈ kvi, ∀ w ∈ nsB, p.1 ≠ w := fresh_cons
    (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
  unfold csr_s2_1
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH item_R) (HtabEntries.funSpec_item_j hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => (∃ x y z : BitVec 64, v = wv [x, y, z]) ∧ LV ((nm "s2", v) :: kvi) m)
    (E1 := fun v Γ q mm => IM a (fun _ => True) C NR SW AW ND M Γ q mm ∧
      ∀ x y z : BitVec 64, v = wv [x, y, z] → x ≠ 0 → KeyIn Γ SW Types.tHTbt20 y 20)
    (L2 := fun m => ∃ x y z J : BitVec 64,
      LV ((nm "s2", wv [x, y, z]) :: (nm "i", ValueHOL.val (.word J)) :: B) m)
    (E2 := IM a (fun _ => True) C NR SW AW ND M) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨x, y, z, J, h⟩ => ⟨J, lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => by
        rcases List.mem_cons.mp hp with rfl | hp
        · dsimp only; decide
        · exact hfr p hp _ (by decide)) _⟩)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [lv (nm "sw"), lv (nm "i")] = some [.val (.word SW), .val (.word I)] :=
      evs_cons (lv_ev hL (List.mem_cons_of_mem _ hsw)) (evs_cons (lv_ev hL (List.mem_cons_self ..)) evs_nil)
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => (argCells_nb (by decide) hx).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hev : evs s [lv (nm "sw"), lv (nm "i")] = some [.val (.word SW), .val (.word I)] :=
      evs_cons (lv_ev hL (List.mem_cons_of_mem _ hsw)) (evs_cons (lv_ev hL (List.mem_cons_self ..)) evs_nil)
    rw [hev] at hvs
    cases hvs
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh => ⟨im_nb haC hCb hKt
      (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE, ?_⟩⟩
    intro x y z hxyz hx
    obtain ⟨hmem, -, -, -, hRet⟩ := hLc
    have hret' := hRet v hv SW I rfl
    have hG' : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ' st := by
      have := hh'.1
      rwa [haC, haH] at this
    obtain ⟨o, ho, hob, hot⟩ := (tb_ext hext hE.1).2.2.1
    subst hxyz
    have hr2 : HtabEntries.HiRet st SW I (wv [x, y, z]) := hiret_mem hmem.symm hret'
    have := (keyin_of_item hG' (t := Types.tHTbt20) (by decide) ho hob hot hr2 hx).1
    have hkl : htKL Types.tHTbt20 = 20 := by decide
    rw [hkl] at this
    exact this
  · intro s st v hL hsh
    obtain ⟨x, y, z, rfl⟩ := wv3_of_shape hsh
    exact ⟨⟨x, y, z, rfl⟩, lv_cons (lv_set hL (fun p hp => hfri p hp _ (by decide)) _)
      (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ x y z : BitVec 64, v = wv [x, y, z]
    swap
    · exact ch_false fun s _ h => hw h.1.1
    obtain ⟨x, y, z, rfl⟩ := hw
    let kvs : List (MlS × ValueHOL 64) := (nm "s2", wv [x, y, z]) :: kvi
    have hfrs : ∀ p ∈ kvs, ∀ w ∈ nm "inaw" :: nm "a" :: nm "nr" :: nm "sr" :: nm "enc" :: nm "n" :: [],
        p.1 ≠ w := fresh_cons (fun p hp w hw => hfri p hp w (by
          simp only [nsB, List.mem_cons, List.not_mem_nil, or_false] at hw ⊢; tauto)) (by decide)
    refine ch_pre (P := GI a (LV kvs) (fun Γ q mm => IM a (fun _ => True) C NR SW AW ND M Γ q mm ∧
        ∀ x' y' z' : BitVec 64, wv [x, y, z] = wv [x', y', z'] → x' ≠ 0 → KeyIn Γ SW Types.tHTbt20 y' 20)) ?_
      (fun s _ ⟨⟨_, hL⟩, rest⟩ => ⟨hL, rest⟩)
    refine ch_weakL (L := fun m => ∃ x y z J : BitVec 64,
      LV ((nm "s2", wv [x, y, z]) :: (nm "i", ValueHOL.val (.word J)) :: B) m) (fun m hm => hm) ?_
    refine gc_seq (L := LV kvs) (E := IM a (fun _ => True) C NR SW AW ND M) ?_ ?_
    · refine gc_ite ?_ (gc_skip fun s h => ?_)
      · refine ch_pre (P := GI a (LV kvs) (IM a (KAd SW y) C NR SW AW ND M)) ?_ ?_
        · exact ch_weakE (fun Γ q mm h => ⟨h.1, h.2.1, h.2.2.1, trivial⟩)
            (cstage_inaw ha haC hCb haH hgr hcI hcC (kad_stable SW y) (fun Γ h => h) (x := x) (y := y) (z := z)
              (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hstate)) (List.mem_cons_self ..)
              (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hcache)) hfrs)
        · intro st hst ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, hc⟩
          have hx0 : x ≠ 0 := ne0_of_then (ev_rfield_wv (ws := [x, y, z])
            (lv_ev hL (List.mem_cons_self ..)) (i := 0) (by simp)) hc
          exact ⟨hL, Γ, q, he, hh, hsc, hE.1.1, hE.1.2.1, hE.1.2.2.1, hE.2 x y z rfl hx0⟩
      · obtain ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, -⟩ := (⟨h.1, h.2⟩ : _ ∧ _)
        exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩
    · refine gc_assign ha.hH ?_
      intro s' hs' hL v hv
      rw [ev_add2 (lv_ev hL (List.mem_cons_of_mem _ (List.mem_cons_self ..))) (ev_cw s' 1)] at hv
      cases hv
      have hB : LV B s'.locals := lv_mono hL (fun p hp => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp))
      have h1 := lv_set hB (fun p hp => hfr p hp (nm "i") (List.mem_cons_self ..)) (.val (.word (I + BitVec.ofNat 64 1)))
      have h2 := lv_cons h1 (x := nm "i") (v := .val (.word (I + BitVec.ofNat 64 1)))
        (by simp [setVarHOLFinite, FUPDATE])
      have h3 := lv_cons h2 (x := nm "s2") (v := wv [x, y, z])
        (lk_keep (x := nm "i") (y := nm "s2") (by decide) (hL _ (List.mem_cons_self ..)))
      exact ⟨x, y, z, I + BitVec.ofNat 64 1, h3⟩


end InitECandidate.Solver.MemSafe.Trie
