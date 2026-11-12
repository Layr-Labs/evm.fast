import InitECandidate.Solver.Band7.CsrLoopB2

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
theorem cstage_ea2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M H y : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (henc : (nm "enc2", ValueHOL.val (.word H)) ∈ B)
    (haddr3 : (nm "addr3", ValueHOL.val (.word y)) ∈ B) (hfr : ∀ p ∈ B, p.1 ≠ nm "n2")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (fun Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ FBlk a.p0 H 128 Γ q ∧
        M.toNat + 16 ≤ H.toNat)) csr_n2_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_n2_1) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold csr_n2_1
  have hEA : ∀ s : State σ, LV B s.locals → ∀ vs, evs s [.load .one (.op .add [lv (nm "acct"), cw 0]),
      .load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "acct"), cw 8]), lv (nm "sr2"),
      .load .one (.op .add [lv (nm "acct"), cw 48]), lv (nm "enc2")] = some vs →
      ∃ v0 v1 v2 v3 : ValueHOL 64, vs = [v0, v1, v2, v3, .val (.word H)] :=
    fun s hL vs hvs => evs5_last hvs (lv_ev hL henc)
  refine gc_decCallTA ha (cs := []) (capSub_nil _) (sa_ea hCb haH)
    (MptE.funSpec_ea_ret hX Helpers.alignedDom_guestCtx) (by simp [MptE.sigEa]) (fun h => by simp [MptE.sigEa] at h)
    (L1 := fun v m => ∃ N : BitVec 64, v = .val (.word N) ∧ LV ((nm "n2", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ N : BitVec 64, v = .val (.word N) →
      N.toNat ≤ 110 ∧ IM a K C NR SW AW ND M Γ q mm ∧ VOn 128 H Γ)
    (L2 := fun m => ∃ N : BitVec 64, LV ((nm "n2", ValueHOL.val (.word N)) :: B) m)
    (E2 := IM a K C NR SW AW ND M) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨N, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp)) hfr _)
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v0, v1, v2, v3, rfl⟩ := hEA s hL vs hvs
    obtain ⟨hIM, hFB, hMH⟩ := hE
    obtain ⟨e0, hb, hbo⟩ := blk_buf hCb hFB (heap_ord hh) (off := 0) (n := 128) (by omega) (by omega)
    have e0' : H + BitVec.ofNat 64 0 = H := by simp
    rw [e0'] at hb hbo
    exact ⟨argsOK_ea hb, fun x hx => Or.inr (Or.inr (Or.inl (hbo x (argCells_ea hx)).2.1)), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    obtain ⟨v0, v1, v2, v3, rfl⟩ := hEA s hL vs hvs
    obtain ⟨hIM, hFB, hMH⟩ := hE
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh => ?_⟩
    have hord := heap_ord hh
    have hord' := heap_ord hh'
    obtain ⟨e0, hb, hbo⟩ := blk_buf hCb hFB hord (off := 0) (n := 128) (by omega) (by omega)
    have e0' : H + BitVec.ofNat 64 0 = H := by simp
    rw [e0'] at hb hbo
    have hGc : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) := by
      have := Struct.G_congr (s := s) ha.hH rfl rfl rfl rfl hh.1
      rw [haC, haH] at this
      exact this
    obtain ⟨W, hW, hWb, -⟩ := Helpers.scell_of_glob hGc MptH.scalarGlob_mpt_hash_scratch
    have hqe := hord.2.1
    have hse : heapEnd ≤ scratchEnd := by decide
    have hEP : MptE.EaPre [v0, v1, v2, v3, .val (.word H)] (callEntryStateHOLFinite s callee) :=
      ⟨H, W, by simp [argW, wordOf], by have := hFB.2.2.2.1; omega, hW, hWb⟩
    have hgood : Good (some r) := by subst hv; simp [Good]
    obtain ⟨N0, hv0, hN0⟩ := hLc hgood hEP v hv
    obtain ⟨Γ'', hx, hh2, hsc, hnew, hVO⟩ := adopt_blk ha haC haH hgr hh' (H := H) (n := 128) (by norm_num)
      (by decide) (fblk_persist_g hFB hord hord' hnf hmo)
    refine ⟨Γ'', hx, hh2, hsc, fun N hN => ?_⟩
    rw [hv0] at hN
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hN
    subst hN
    refine ⟨hN0, im_adopt hK hx hnew hMH (gamOK_of_layout (layout_of_heap haC hh2)) ?_, hVO⟩
    exact im_call haC hCb hK (cs := []) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh'
      (fun y hy => by
        have := hbo y (argCells_ea hy)
        have hM := hIM.2.2.1.1.2.2.1
        exact ⟨this.1, by omega, by omega⟩) hIM
  · intro s st v hL hsh
    obtain ⟨N, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨N, rfl, lv_cons (lv_set hL hfr _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ N : BitVec 64, v = .val (.word N)
    swap
    · exact ch_false fun s _ h => hw (by obtain ⟨N, hN, -⟩ := h.1; exact ⟨N, hN⟩)
    obtain ⟨N, rfl⟩ := hw
    let B' : List (MlS × ValueHOL 64) := (nm "n2", ValueHOL.val (.word N)) :: B
    refine ch_pre (P := GI a (LV B') (fun Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ VOn 128 H Γ ∧
        N.toNat ≤ 110)) ?_
      (fun s _ ⟨⟨N', hN', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hN'
        subst hN'
        obtain ⟨h1, h2, h3⟩ := hE N rfl
        exact ⟨hL, Γ, q, he, hh, hsc, h2, h3, h1⟩)
    refine ch_weakL (L := LV B') (fun m hm => ⟨N, hm⟩) (ch_weakE (E := fun Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ VOn 128 H Γ ∧ N.toNat ≤ 110)
      (fun Γ q mm h => h.1) ?_)
    refine cmps_stmt ha haC hCb haH hgr hcI (args := [lv (nm "state_mpt"), lv (nm "addr3"), cw 20,
      lv (nm "enc2"), lv (nm "n2")]) (L := LV B') (K := y) (KL := BitVec.ofNat 64 20) (VP := H) (VL := N)
      (M := M) ?_ (by decide) (fun Γ q mm h => h.1.2.2.1) ?_ ?_
    · intro s hL
      exact evs_cons (lv_ev hL (List.mem_cons_of_mem _ hstate))
        (evs_cons (lv_ev hL (List.mem_cons_of_mem _ haddr3))
          (evs_cons (ev_cw s 20) (evs_cons (lv_ev hL (List.mem_cons_of_mem _ henc))
            (evs_cons (lv_ev hL (List.mem_cons_self ..)) evs_nil))))
    · intro Γ q mm h
      obtain ⟨-, ⟨o, ho, hty, hlo, hhi⟩, hN⟩ := h
      exact Or.inr ⟨o, ho, hty, by omega, by omega⟩
    · intro s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR'
      exact ⟨im_mps haC hCb hK hext hh hh' hmo hmd hHR' hE.1, vo_extn hext hE.2.1, hE.2.2⟩



set_option maxHeartbeats 0 in
theorem cstage_enc2b {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M y : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (haddr3 : (nm "addr3", ValueHOL.val (.word y)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "enc2", nm "n2"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_enc2_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_enc2_1) := by
  unfold csr_enc2_1
  refine gc_allocQ ha haC hCb haH (n := 128) (by norm_num) (by norm_num) (x := nm "enc2")
    (fun p hp => hfr p hp _ (by decide)) (E := IM a K C NR SW AW ND M)
    (Q := fun H Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ FBlk a.p0 H 128 Γ q ∧ M.toNat + 16 ≤ H.toNat)
    ?_ ?_ (L2 := fun m => ∃ H : BitVec 64, LV ((nm "enc2", ValueHOL.val (.word H)) :: B) m)
    (fun m0 m _ ⟨H, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s st Γ Γ' q q' H hext hh hh' hmo hnf hmd hE hHn hFB hmem
    refine ⟨im_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE, hFB, ?_⟩
    have := hE.2.2.1.1.2.2.1
    omega
  · intro H
    let B' : List (MlS × ValueHOL 64) := (nm "enc2", ValueHOL.val (.word H)) :: B
    refine ch_weakL (L := LV B') (fun m hm => ⟨H, hm⟩) ?_
    exact cstage_ea2 ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate) (List.mem_cons_self ..)
      (List.mem_cons_of_mem _ haddr3) (by
        intro p hp
        rcases List.mem_cons.mp hp with rfl | hp
        · dsimp only; decide
        · exact hfr p hp _ (by decide))


set_option maxHeartbeats 0 in
theorem cstage_sr2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M y p1 p2 : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (haddr3 : (nm "addr3", ValueHOL.val (.word y)) ∈ B)
    (hnr : (nm "nr2", wv [p1, p2]) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "sr2", nm "enc2", nm "n2"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_sr2_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_sr2_1) := by
  unfold csr_sr2_1
  refine gc_dec ha.hH (L1 := fun m => ∃ v : ValueHOL 64, LV ((nm "sr2", v) :: B) m)
    (L2 := fun m => ∃ v : ValueHOL 64, LV ((nm "sr2", v) :: B) m) ?_ ?_
    (fun m0 m _ ⟨v, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s hs hL v hv
    exact ⟨v, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · refine ch_exL fun v0 => ?_
    refine gc_seq (L := fun m => ∃ v : ValueHOL 64, LV ((nm "sr2", v) :: B) m)
      (E := IM a K C NR SW AW ND M) ?_ ?_
    · refine gc_ite ?_ ?_
      · refine ch_pre (gc_assign ha.hH ?_) (fun s _ h => h.1)
        intro s hs hL v hv
        exact ⟨v, lv_cons (lv_set (lv_mono hL (fun p hp => List.mem_cons_of_mem _ hp))
          (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
      · refine ch_pre (gc_callAssignAny ha haC hCb (pers_im haC hCb hK) (f := nm "cache_get_root")
          (sg' := ⟨[.any, .any], [], [], false⟩) (sa_cast hCb haH croot_R) (by simp) rfl rfl
          (args := [lv (nm "cache"), lv (nm "addr3")]) rfl (x := nm "sr2") (L := LV ((nm "sr2", v0) :: B))
          (L' := fun m => ∃ v : ValueHOL 64, LV ((nm "sr2", v) :: B) m) ?_) (fun s _ h => h.1)
        intro s st v hL
        exact ⟨v, lv_cons (lv_set (s := { st with locals := s.locals }) (lv_mono hL (fun p hp => List.mem_cons_of_mem _ hp))
          (fun p hp => hfr p hp _ (by decide)) _) (by simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE])⟩
    · refine ch_exL fun v1 => ?_
      let B1 : List (MlS × ValueHOL 64) := (nm "sr2", v1) :: B
      refine ch_weakL (L := LV B1) (fun m hm => ⟨v1, hm⟩) ?_
      exact cstage_enc2b ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate)
        (List.mem_cons_of_mem _ haddr3) (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw))
          (by decide))


set_option maxHeartbeats 0 in
theorem cstage_nr2 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M y : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (haddr3 : (nm "addr3", ValueHOL.val (.word y)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "nr2", nm "sr2", nm "enc2", nm "n2"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_nr2_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_nr2_1) := by
  unfold csr_nr2_1
  refine gc_decAny ha haC hCb (pers_im haC hCb hK) (f := nm "htab_get")
    (sg' := ⟨[.any, .any], [], [], false⟩) (sa_cast hCb haH get_R) (by simp) rfl rfl
    (args := [lv (nm "new_roots"), lv (nm "addr3")]) rfl (x := nm "nr2") (sh := .comb [.one, .one])
    (fun p hp => hfr p hp _ (by decide)) (fun v => ∃ p1 p2 : BitVec 64, v = wv [p1, p2])
    (fun v hsh => by obtain ⟨p1, p2, hv⟩ := rstruct_of_shape hsh; exact ⟨p1, p2, hv⟩)
    (L2 := fun m => ∃ p1 p2 : BitVec 64, LV ((nm "nr2", wv [p1, p2]) :: B) m) (L3 := LV B) ?_
    (fun m0 m _ ⟨p1, p2, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  intro v ⟨p1, p2, hv⟩
  subst hv
  refine ch_weakL (L := LV ((nm "nr2", wv [p1, p2]) :: B)) (fun m hm => ⟨p1, p2, hm⟩) ?_
  exact cstage_sr2 ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate) (List.mem_cons_of_mem _ haddr3)
    (List.mem_cons_self ..) (fresh_cons (fun p hp w hw => hfr p hp w (by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hw ⊢; tauto)) (by decide))



set_option maxHeartbeats 0 in
theorem cstage_acct {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z : BitVec 64}
    (hs3 : (nm "s3", wv [x, y, z]) ∈ B)
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (haddr3 : (nm "addr3", ValueHOL.val (.word y)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "acct", nm "nr2", nm "sr2", nm "enc2", nm "n2"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_acct_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_acct_1) := by
  unfold csr_acct_1
  refine gc_dec ha.hH (L1 := LV ((nm "acct", ValueHOL.val (.word z)) :: B)) (L2 := LV ((nm "acct", ValueHOL.val (.word z)) :: B))
    ?_ ?_ (fun m0 m _ h => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s hs hL v hv
    rw [ev_rfield_wv (ws := [x, y, z]) (lv_ev hL hs3) (i := 2) (by simp)] at hv
    cases hv
    exact lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])
  · let B' : List (MlS × ValueHOL 64) := (nm "acct", ValueHOL.val (.word z)) :: B
    refine gc_ite ?_ ?_
    · refine ch_pre (cmps_stmt ha haC hCb haH hgr hcI (args := [lv (nm "state_mpt"), lv (nm "addr3"), cw 20,
        cw 0, cw 0]) (L := LV B') (K := y) (KL := BitVec.ofNat 64 20) (VP := BitVec.ofNat 64 0)
        (VL := BitVec.ofNat 64 0) (M := M) (E := IM a K C NR SW AW ND M) ?_ (by decide)
        (fun Γ q mm h => h.2.2.1) (fun Γ q mm _ => Or.inl rfl) ?_) (fun s _ h => h.1)
      · intro s hL
        exact evs_cons (lv_ev hL (List.mem_cons_of_mem _ hstate)) (evs_cons (lv_ev hL (List.mem_cons_of_mem _ haddr3))
          (evs_cons (ev_cw s 20) (evs_cons (ev_cw s 0) (evs_cons (ev_cw s 0) evs_nil))))
      · intro s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR'
        exact im_mps haC hCb hK hext hh hh' hmo hmd hHR' hE
    · refine ch_pre (cstage_nr2 ha haC hCb haH hgr hcI hK (List.mem_cons_of_mem _ hstate)
        (List.mem_cons_of_mem _ haddr3) (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw))
          (by decide))) (fun s _ h => h.1)


set_option maxHeartbeats 0 in
theorem cstage_addr3 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M x y z : BitVec 64}
    (hs3 : (nm "s3", wv [x, y, z]) ∈ B) (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ [nm "addr3", nm "acct", nm "nr2", nm "sr2", nm "enc2", nm "n2"], p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IM a K C NR SW AW ND M)) csr_addr3_1
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_addr3_1) := by
  unfold csr_addr3_1
  refine gc_dec ha.hH (L1 := LV ((nm "addr3", ValueHOL.val (.word y)) :: B))
    (L2 := LV ((nm "addr3", ValueHOL.val (.word y)) :: B)) ?_ ?_
    (fun m0 m _ h => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s hs hL v hv
    rw [ev_rfield_wv (ws := [x, y, z]) (lv_ev hL hs3) (i := 1) (by simp)] at hv
    cases hv
    exact lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])
  · exact cstage_acct ha haC hCb haH hgr hcI hK (z := z) (List.mem_cons_of_mem _ hs3)
      (List.mem_cons_of_mem _ hstate) (List.mem_cons_self ..)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide))


set_option maxHeartbeats 0 in
/-- One iteration of the third loop. -/
theorem cstage_s3 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "i" :: nsC, p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M)) csr_s3_1
      (GP a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M) Rv) (cb csr_s3_1) := by
  have hKt : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → True → True := fun _ _ _ _ h => h
  refine ch_exL fun I => ?_
  let kvi : List (MlS × ValueHOL 64) := (nm "i", ValueHOL.val (.word I)) :: B
  have hfri : ∀ p ∈ kvi, ∀ w ∈ nsC, p.1 ≠ w := fresh_cons
    (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
  unfold csr_s3_1
  refine gc_decAny ha haC hCb (pers_im haC hCb hKt) (f := nm "htab_item")
    (sg' := ⟨[.any, .any], [], [], false⟩) (sa_cast hCb haH item_R) (by simp) rfl rfl
    (args := [lv (nm "aw"), lv (nm "i")]) rfl (x := nm "s3") (sh := .comb [.one, .one, .one])
    (fun p hp => hfri p hp _ (by decide)) (fun v => ∃ x y z : BitVec 64, v = wv [x, y, z])
    (fun v hsh => wv3_of_shape hsh)
    (L2 := fun m => ∃ x y z J : BitVec 64,
      LV ((nm "s3", wv [x, y, z]) :: (nm "i", ValueHOL.val (.word J)) :: B) m)
    (L3 := fun m => ∃ J : BitVec 64, LV ((nm "i", ValueHOL.val (.word J)) :: B) m) ?_
    (fun m0 m _ ⟨x, y, z, J, h⟩ => ⟨J, lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => by
        rcases List.mem_cons.mp hp with rfl | hp
        · dsimp only; decide
        · exact hfr p hp _ (by decide)) _⟩)
  intro v ⟨x, y, z, hv⟩
  subst hv
  let kvs : List (MlS × ValueHOL 64) := (nm "s3", wv [x, y, z]) :: kvi
  refine ch_weakL (L := fun m => ∃ x y z J : BitVec 64,
    LV ((nm "s3", wv [x, y, z]) :: (nm "i", ValueHOL.val (.word J)) :: B) m) (fun m hm => hm) ?_
  refine gc_seq (L := LV kvs) (E := IM a (fun _ => True) C NR SW AW ND M) ?_ ?_
  · refine gc_ite ?_ (gc_skip fun s h => h.1)
    refine ch_pre (cstage_addr3 ha haC hCb haH hgr hcI hKt (x := x) (y := y) (z := z)
      (List.mem_cons_self ..) (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hstate))
      (fresh_cons (fun p hp w hw => hfri p hp w (List.mem_cons_of_mem _ hw)) (by decide))) (fun s _ h => h.1)
  · refine gc_assign ha.hH ?_
    intro s' hs' hL v hv
    rw [ev_add2 (lv_ev hL (List.mem_cons_of_mem _ (List.mem_cons_self ..))) (ev_cw s' 1)] at hv
    cases hv
    have hB : LV B s'.locals := lv_mono hL (fun p hp => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp))
    have h1 := lv_set hB (fun p hp => hfr p hp (nm "i") (List.mem_cons_self ..)) (.val (.word (I + BitVec.ofNat 64 1)))
    have h2 := lv_cons h1 (x := nm "i") (v := .val (.word (I + BitVec.ofNat 64 1)))
      (by simp [setVarHOLFinite, FUPDATE])
    have h3 := lv_cons h2 (x := nm "s3") (v := wv [x, y, z])
      (lk_keep (x := nm "i") (y := nm "s3") (by decide) (hL _ (List.mem_cons_self ..)))
    exact ⟨x, y, z, I + BitVec.ofNat 64 1, h3⟩


end InitECandidate.Solver.MemSafe.Trie
