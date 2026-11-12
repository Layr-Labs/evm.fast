import InitECandidate.Solver.Band7.Cmps

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
theorem cstage_write {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {kv : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB x0 x1 x2 x3 e0 e1 e2 : BitVec 64}
    (hv : (nm "v", wv [x0, x1, x2, x3]) ∈ kv) (hvb : (nm "vbuf", .val (.word VB)) ∈ kv)
    (hmpt : (nm "mpt", .val (.word M)) ∈ kv) (he : (nm "e", wv [e0, e1, e2]) ∈ kv)
    (hfr : ∀ p ∈ kv, p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV kv) (IA a K C NR SW AW ND M VB)) csr_n_1
      (GP a (LV kv) (IA a K C NR SW AW ND M VB) Rv) (cb csr_n_1) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold csr_n_1
  have hn' : ∀ p ∈ kv, p.1 ≠ nm "n" := fun p hp => (hfr p hp).1
  have hvbL : ∀ m : LocalsH, LV kv m → m.lookup (nm "vbuf") = some (.val (.word VB)) :=
    fun m hm => hm _ hvb
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH u256min_R) (funSpec_u256_to_be_min hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => LV kv m ∧ m.lookup (nm "n") = some v ∧ ∃ N : BitVec 64, v = .val (.word N))
    (E1 := fun v Γ q mm => IA a K C NR SW AW ND M VB Γ q mm ∧ ∀ N : BitVec 64, v = .val (.word N) → N.toNat ≤ 32)
    (L2 := fun m => ∃ N : BitVec 64, LV ((nm "n", .val (.word N)) :: kv) m) (E2 := IA a K C NR SW AW ND M VB)
    ?_ ?_ ?_ ?_ (fun m0 m _ ⟨N, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp)) hn' _)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [lv (nm "v"), .op .add [lv (nm "vbuf"), cw 8]] =
        some [wv [x0, x1, x2, x3], .val (.word (VB + BitVec.ofNat 64 8))] :=
      evs_cons (lv_ev hL hv) (evs_cons (ev_vb8 (hvbL _ hL) 8) evs_nil)
    rw [hev] at hvs
    cases hvs
    obtain ⟨e8, hb, hbo⟩ := blk_buf hCb hE.2.2.2.1 (heap_ord hh) (off := 8) (n := 32) (by omega) (by omega)
    refine ⟨argsOK_ab hb, fun x hx => ?_, fun _ => trivial⟩
    exact Or.inr (Or.inr (Or.inl (hbo x (argCells_ab hx)).2.1))
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hev : evs s [lv (nm "v"), .op .add [lv (nm "vbuf"), cw 8]] =
        some [wv [x0, x1, x2, x3], .val (.word (VB + BitVec.ofNat 64 8))] :=
      evs_cons (lv_ev hL hv) (evs_cons (ev_vb8 (hvbL _ hL) 8) evs_nil)
    rw [hev] at hvs
    cases hvs
    obtain ⟨e8, hb, hbo⟩ := blk_buf hCb hE.2.2.2.1 (heap_ord hh) (off := 8) (n := 32) (by omega) (by omega)
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh => ⟨?_, ?_⟩⟩
    · subst hv
      refine ia_call haC hCb hK (cs := []) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' (fun y hy => ?_) hE
      have := (hbo y (argCells_ab hy))
      have hM := hE.2.2.2.2.1
      exact ⟨this.1, by omega, by omega⟩
    · intro N hN
      subst hv
      have hseh : heapEnd ≤ scratchEnd := by decide
      have hU := hLc (by simp [Good]) x0 x1 x2 x3 (VB + BitVec.ofNat 64 8) rfl (by
        have := hE.2.2.2.1.2.2.2.1; have := (heap_ord hh).2.1; rw [e8]; omega)
      obtain ⟨-, -, hrr⟩ := hU
      obtain ⟨hvv, -⟩ := hrr _ rfl
      have h2 := hN.symm.trans hvv
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h2
      rw [h2]
      exact Rec.ubyF_le _ _ _ _
  · intro s st v hL hsh
    exact ⟨lv_set hL hn' v, by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩
  intro v
  by_cases hw : ∃ N : BitVec 64, v = .val (.word N)
  swap
  · exact ch_false fun s _ h => hw h.1.2.2
  obtain ⟨N, rfl⟩ := hw
  let kv1 : List (MlS × ValueHOL 64) := (nm "n", .val (.word N)) :: kv
  refine ch_pre (P := GI a (LV kv1) (fun Γ q mm => IA a K C NR SW AW ND M VB Γ q mm ∧ N.toNat ≤ 32)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨lv_cons hL hk, Γ, q, he, hh, hsc, hE.1, hE.2 N rfl⟩)
  unfold csr_w_1
  have hw' : ∀ p ∈ kv1, p.1 ≠ nm "w" := by
    intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · (dsimp only; decide)
    · exact (hfr p hp).2.1
  have hvbL1 : ∀ m : LocalsH, LV kv1 m → m.lookup (nm "vbuf") = some (.val (.word VB)) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ hvb)
  have hnL1 : ∀ m : LocalsH, LV kv1 m → m.lookup (nm "n") = some (.val (.word N)) :=
    fun m hm => hm _ (List.mem_cons_self ..)
  have hsum : (BitVec.ofNat 64 8 + BitVec.ofNat 64 32 : BitVec 64) = BitVec.ofNat 64 40 := by decide
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH rlpEB_R)
    (Helpers.footRet_rlp_encode_bytes hX Helpers.alignedDom_guestCtx)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => LV kv1 m ∧ m.lookup (nm "w") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ q mm => (IA a K C NR SW AW ND M VB Γ q mm ∧ N.toNat ≤ 32) ∧
      ∀ W : BitVec 64, v = .val (.word W) → W.toNat ≤ 33)
    (L2 := fun m => ∃ W : BitVec 64, LV ((nm "w", .val (.word W)) :: kv1) m) (E2 := IA a K C NR SW AW ND M VB)
    ?_ ?_ ?_ ?_ (fun m0 m _ ⟨W, h⟩ => ⟨N, lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp)) hw' _⟩)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [.op .add [lv (nm "vbuf"), cw 8, cw 32], .op .add [lv (nm "vbuf"), cw 8], lv (nm "n")] =
        some [.val (.word (VB + (BitVec.ofNat 64 8 + BitVec.ofNat 64 32))),
          .val (.word (VB + BitVec.ofNat 64 8)), .val (.word N)] :=
      evs_cons (ev_add3 (ev_lw (hvbL1 _ hL)) (ev_cw s 8) (ev_cw s 32))
        (evs_cons (ev_vb8 (hvbL1 _ hL) 8) (evs_cons (ev_lw (hnL1 _ hL)) evs_nil))
    rw [hev, hsum] at hvs
    cases hvs
    obtain ⟨hIA, hN⟩ := hE
    obtain ⟨e40, hb, hbo⟩ := blk_buf hCb hIA.2.2.2.1 (heap_ord hh) (off := 40) (n := 1 * N.toNat + 9)
      (by omega) (by omega)
    refine ⟨argsOK_rlp hb, fun x hx => ?_, fun _ => trivial⟩
    exact Or.inr (Or.inr (Or.inl (hbo x (argCells_rlp hx)).2.1))
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hev : evs s [.op .add [lv (nm "vbuf"), cw 8, cw 32], .op .add [lv (nm "vbuf"), cw 8], lv (nm "n")] =
        some [.val (.word (VB + (BitVec.ofNat 64 8 + BitVec.ofNat 64 32))),
          .val (.word (VB + BitVec.ofNat 64 8)), .val (.word N)] :=
      evs_cons (ev_add3 (ev_lw (hvbL1 _ hL)) (ev_cw s 8) (ev_cw s 32))
        (evs_cons (ev_vb8 (hvbL1 _ hL) 8) (evs_cons (ev_lw (hnL1 _ hL)) evs_nil))
    rw [hev, hsum] at hvs
    cases hvs
    obtain ⟨hIA, hN⟩ := hE
    obtain ⟨e40, hb, hbo⟩ := blk_buf hCb hIA.2.2.2.1 (heap_ord hh) (off := 40) (n := 1 * N.toNat + 9)
      (by omega) (by omega)
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh => ⟨⟨?_, hN⟩, ?_⟩⟩
    · refine ia_call haC hCb hK (cs := []) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' (fun y hy => ?_) hIA
      have := hbo y (argCells_rlp hy)
      have hM := hIA.2.2.2.2.1
      exact ⟨this.1, by omega, by omega⟩
    · intro W hW
      subst hv
      have hseh : heapEnd ≤ scratchEnd := by decide
      have hqe := (heap_ord hh).2.1
      have hh1 : Helpers.hdrLen N.toNat = 1 := MptE.hdrLen_one (by omega)
      have hU := hLc (by simp [Good]) ⟨VB + BitVec.ofNat 64 40, N, rfl, rfl, by
        have := hIA.2.2.2.1.2.2.2.1; rw [e40, hh1]; omega⟩
      obtain ⟨-, -, hrr⟩ := hU
      obtain ⟨k, hkv, hk1, hk2, -⟩ := hrr _ rfl N rfl
      have h2 := hW.symm.trans hkv
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h2
      have hk33 : k ≤ 33 := by rw [hh1] at hk2; omega
      rw [h2, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      exact hk33
  · intro s st v hL hsh
    exact ⟨lv_set hL hw' v, by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩
  intro v2
  by_cases hw2 : ∃ W : BitVec 64, v2 = .val (.word W)
  swap
  · exact ch_false fun s _ h => hw2 h.1.2.2
  obtain ⟨W, rfl⟩ := hw2
  let kv2 : List (MlS × ValueHOL 64) := (nm "w", .val (.word W)) :: kv1
  refine ch_pre (P := GI a (LV kv2) (fun Γ q mm => (IA a K C NR SW AW ND M VB Γ q mm ∧ N.toNat ≤ 32) ∧
      W.toNat ≤ 33)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨lv_cons hL hk, Γ, q, he, hh, hsc, hE.1, hE.2 W rfl⟩)
  unfold csr_enc_1
  have hen' : ∀ p ∈ kv2, p.1 ≠ nm "enc" := by
    intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · (dsimp only; decide)
    rcases List.mem_cons.mp hp with rfl | hp
    · (dsimp only; decide)
    · exact (hfr p hp).2.2
  have hvbL2 : ∀ m : LocalsH, LV kv2 m → m.lookup (nm "vbuf") = some (.val (.word VB)) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hvb))
  have hwL2 : ∀ m : LocalsH, LV kv2 m → m.lookup (nm "w") = some (.val (.word W)) :=
    fun m hm => hm _ (List.mem_cons_self ..)
  have hmptL2 : ∀ m : LocalsH, LV kv2 m → m.lookup (nm "mpt") = some (.val (.word M)) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hmpt))
  have heL2 : ∀ m : LocalsH, LV kv2 m → m.lookup (nm "e") = some (wv [e0, e1, e2]) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ he))
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH Dn.alloc_R) (funSpec_allocRel hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => LV kv2 m ∧ m.lookup (nm "enc") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
    (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) →
      (IA a K C NR SW AW ND M VB Γ q mm ∧ W.toNat ≤ 33) ∧ FBlk a.p0 H 40 Γ q ∧ VB.toNat + 96 ≤ H.toNat)
    (L2 := fun m => ∃ H : BitVec 64, LV ((nm "enc", .val (.word H)) :: kv2) m) (E2 := IA a K C NR SW AW ND M VB)
    ?_ ?_ ?_ ?_ (fun m0 m _ ⟨H, h⟩ => ⟨W, lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp)) hen' _⟩)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [cw 40] = some [.val (.word (BitVec.ofNat 64 40))] := evs_cons (ev_cw s 40) evs_nil
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => argCells_any (by simp) hx |>.elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hev : evs s [cw 40] = some [.val (.word (BitVec.ofNat 64 40))] := evs_cons (ev_cw s 40) evs_nil
    rw [hev] at hvs
    cases hvs
    obtain ⟨⟨hIA, hN⟩, hW33⟩ := hE
    have hnoarg : ∀ y, ¬ ArgCells [PT.any] [.val (.word (BitVec.ofNat 64 40))] y :=
      fun y => argCells_any (by simp)
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh H hH => ?_⟩
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [.val (.word (BitVec.ofNat 64 40))] Γ Γ' q q'
        s st r := ⟨hh, hext, hh', hmo, hnf, hnfp,
      fun x hw hal => hmd x hw (hnoarg x) (by rintro ⟨-, c, hc, -⟩; simp [capSub] at hc) hal, hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv (by decide)
    rw [hv'] at hH
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
    subst hH
    refine ⟨⟨?_, hW33⟩, hFB, ?_⟩
    · exact ia_call haC hCb hK (cs := []) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh'
        (fun y hy => (hnoarg y hy).elim) hIA
    · have := hIA.2.2.2.1.2.2.2.1
      omega
  · intro s st v hL hsh
    exact ⟨lv_set hL hen' v, by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩
  intro v3
  by_cases hw3 : ∃ H : BitVec 64, v3 = .val (.word H)
  swap
  · exact ch_false fun s _ h => hw3 h.1.2.2
  obtain ⟨H, rfl⟩ := hw3
  let kv3 : List (MlS × ValueHOL 64) := (nm "enc", .val (.word H)) :: kv2
  refine ch_pre (P := GI a (LV kv3) (fun Γ q mm => (IA a K C NR SW AW ND M VB Γ q mm ∧ W.toNat ≤ 33) ∧
      FBlk a.p0 H 40 Γ q ∧ VB.toNat + 96 ≤ H.toNat)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨lv_cons hL hk, Γ, q, he, hh, hsc, hE H rfl⟩)
  have hvbL3 : ∀ m : LocalsH, LV kv3 m → m.lookup (nm "vbuf") = some (.val (.word VB)) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hvb)))
  have hwL3 : ∀ m : LocalsH, LV kv3 m → m.lookup (nm "w") = some (.val (.word W)) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_self ..))
  have hencL3 : ∀ m : LocalsH, LV kv3 m → m.lookup (nm "enc") = some (.val (.word H)) :=
    fun m hm => hm _ (List.mem_cons_self ..)
  have hmptL3 : ∀ m : LocalsH, LV kv3 m → m.lookup (nm "mpt") = some (.val (.word M)) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hmpt)))
  have heL3 : ∀ m : LocalsH, LV kv3 m → m.lookup (nm "e") = some (wv [e0, e1, e2]) :=
    fun m hm => hm _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ he)))
  refine gc_seq (L := LV kv3) (E := fun Γ q mm => (IA a K C NR SW AW ND M VB Γ q mm ∧ W.toNat ≤ 33) ∧ VO H Γ) ?_ ?_
  · -- `memcpy(enc, vbuf + 40, w)` and the adoption of `enc`
    refine gc_callTA ha (cs := []) (capSub_nil _) (sa_cast hCb haH Dn.memcpy_R) (funSpec_true _)
      (by simp [Helpers.sigMemcpy]) (fun h => by simp [Helpers.sigMemcpy] at h) ?_ ?_
    · intro s Γ q hs hL hh hE vs hvs
      have hev : evs s [lv (nm "enc"), .op .add [lv (nm "vbuf"), cw 40], lv (nm "w")] =
          some [.val (.word H), .val (.word (VB + BitVec.ofNat 64 40)), .val (.word W)] :=
        evs_cons (ev_lw (hencL3 _ hL)) (evs_cons (ev_vb8 (hvbL3 _ hL) 40) (evs_cons (ev_lw (hwL3 _ hL)) evs_nil))
      rw [hev] at hvs
      cases hvs
      obtain ⟨⟨hIA, hW33⟩, hFB, hHV⟩ := hE
      obtain ⟨-, hb, hbo⟩ := blk_buf hCb hFB (heap_ord hh) (off := 0) (n := 1 * W.toNat + 0) (by omega) (by omega)
      have e0 : H + BitVec.ofNat 64 0 = H := by simp
      rw [e0] at hb hbo
      refine ⟨argsOK_memcpyV hb, fun x hx => ?_, fun _ => trivial⟩
      exact Or.inr (Or.inr (Or.inl (hbo x (argCells_memcpyV hx)).2.1))
    · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
      have hev : evs s [lv (nm "enc"), .op .add [lv (nm "vbuf"), cw 40], lv (nm "w")] =
          some [.val (.word H), .val (.word (VB + BitVec.ofNat 64 40)), .val (.word W)] :=
        evs_cons (ev_lw (hencL3 _ hL)) (evs_cons (ev_vb8 (hvbL3 _ hL) 40) (evs_cons (ev_lw (hwL3 _ hL)) evs_nil))
      rw [hev] at hvs
      cases hvs
      obtain ⟨⟨hIA, hW33⟩, hFB, hHV⟩ := hE
      refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun _ => ?_⟩
      have hord := heap_ord hh
      have hord' := heap_ord hh'
      obtain ⟨-, hb, hbo⟩ := blk_buf hCb hFB hord (off := 0) (n := 1 * W.toNat + 0) (by omega) (by omega)
      have e0 : H + BitVec.ofNat 64 0 = H := by simp
      rw [e0] at hb hbo
      have hIA' : IA a K C NR SW AW ND M VB Γ' q' st.memory :=
        ia_call haC hCb hK (cs := []) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' (fun y hy => by
          have := hbo y (argCells_memcpyV hy)
          have hM := hIA.2.2.2.2.1
          exact ⟨this.1, by omega, by omega⟩) hIA
      have hFB' : FBlk a.p0 H 40 Γ' q' := fblk_persist_g hFB hord hord' hnf hmo
      obtain ⟨h8, hs8, hbase, hq', hc'⟩ := hFB'
      have hnw : nw 40 = 5 := by decide
      obtain ⟨Γ'', hx, hh2, hnew, hVO⟩ := adopt_val2 ha haC haH hgr hh' (Ar := H) (L := 40) (by omega) hbase
        (by rw [hnw]; have := hord'.2.1; omega) h8
        (fun x ⟨hx8, hx1, hx2⟩ => by
          rw [hnw] at hx2
          exact ⟨(hc' x.toNat (by omega) (by omega)).1, by unfold Ptrs.Allocated; left; exact ⟨by omega, by omega⟩⟩)
        (fun x ⟨hx8, hx1, hx2⟩ => by
          rw [hnw] at hx2
          exact (hc' x.toNat (by omega) (by omega)).2)
      rw [hnw] at hnew hVO
      have hnew' : ∀ o ∈ Γ'', o ∈ Γ' ∨ (o.lo = H.toNat ∧ o.hi = H.toNat + 8 * 5) := fun o ho =>
        (hnew o ho).elim Or.inl (fun h => Or.inr ⟨h.2.1, h.2.2⟩)
      refine ⟨Γ'', hx, hh2, scrOld_adopt_val hnew, ⟨ia_adopt hK hx hnew' hHV (gamOK_of_layout (layout_of_heap haC hh2)) hIA', hW33⟩, ?_⟩
      obtain ⟨x, hxm, hty, hlo, hhi⟩ := hVO
      exact ⟨x, hxm, hty, hlo, by omega⟩
  · -- `mpt_set(mpt, e.1, 32, enc, w)`
    have hms : SumSpecA σ guestCtx a.Cb a.H (nm "mpt_set") mpsSig MpsPre
        (fun _ s Γ x => CapPW insCaps s Γ x)
        (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
          ptrsOf t = some p' → ∃ M, argW vs 0 = some M ∧ HRec Γ' p' t.memory M) := by
      rw [hCb, haH]; exact sumSpecA_mpt_set
    have hevm : ∀ s : State σ, LV kv3 s.locals → evs s [lv (nm "mpt"), .rfield 1 (lv (nm "e")), cw 32,
        lv (nm "enc"), lv (nm "w")] = some [.val (.word M), .val (.word e1), .val (.word (BitVec.ofNat 64 32)),
        .val (.word H), .val (.word W)] := fun s hL =>
      evs_cons (ev_lw (hmptL3 _ hL)) (evs_cons (ev_rfield_wv (x := lv (nm "e")) (ws := [e0, e1, e2])
        (by rw [ev_lv]; exact heL3 _ hL) (i := 1) (by simp))
        (evs_cons (ev_cw s 32) (evs_cons (ev_lw (hencL3 _ hL)) (evs_cons (ev_lw (hwL3 _ hL)) evs_nil))))
    refine ch_weakL (L := LV kv3) (fun m hm => ⟨H, hm⟩) (gc_callX ha (cs := insCaps) hcI hms (funSpec_true _) (by simp [mpsSig]) (fun _ => hgr) cc_ms ?_ ?_ ?_)
    · intro s Γ q hs hL hh hE vs hvs callee
      rw [hevm s hL] at hvs
      cases hvs
      obtain ⟨⟨hIA, hW33⟩, hVO⟩ := hE
      exact preMs_of_heap haC haH hh callee ⟨M, e1, BitVec.ofNat 64 32, H, W, rfl, mrecF_of_hRec hh.2.1 hIA.2.2.1.1, by decide⟩
    · intro s Γ q hs hL hh hE vs hvs
      rw [hevm s hL] at hvs
      cases hvs
      obtain ⟨⟨hIA, hW33⟩, hVO⟩ := hE
      have hHR := hIA.2.2.1
      refine ⟨argsOK_mps (bufok_hrec hHR.1), fun x hx => ?_, fun callee => ?_⟩
      · exact Or.inr (Or.inr (Or.inl (hHR.2 x (argCells_mps hx))))
      · refine ⟨M, e1, BitVec.ofNat 64 32, H, W, rfl, mrecF_of_hRec hh.2.1 hHR.1, by decide, ?_⟩
        obtain ⟨x, hx, hty, hlo, hhi⟩ := hVO
        right
        exact ⟨x, hx, hty, by omega, by omega⟩
    · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
      rw [hevm s hL] at hvs
      cases hvs
      obtain ⟨⟨hIA, hW33⟩, hVO⟩ := hE
      obtain ⟨hTB, hND, hHR, hFB, hMV, hKΓ⟩ := hIA
      refine ⟨hQ.1, fun ⟨v, hv⟩ => ?_⟩
      have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
        (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh.2.1
      obtain ⟨M', hM', hHR'⟩ := hQ.2 v hv q q' hq0 hh'.2.1
      simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hM'
      subst hM'
      have hord := heap_ord hh
      have hord' := heap_ord hh'
      have hL' : Layout Types.guestC q Γ := layout_of_heap haC hh
      refine ⟨tb_ext hext hTB, ?_, ⟨hHR', hHR.2⟩, fblk_persist_g hFB hord hord' hnf hmo, hMV, hK _ _ hext (gamOK_of_layout (layout_of_heap haC hh')) hKΓ⟩
      exact ndk_call haC hCb (by unfold CapsAvoid insCaps leafCaps brCaps; decide) hmd hext hh
        (fun y hy => hrec_cells hHR.1 (argCells_mps hy)) hND


end InitECandidate.Solver.MemSafe.Trie
