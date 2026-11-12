import InitECandidate.Solver.Band7.CsrLoopA3

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
theorem cstage_ea {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M H x y z : BitVec 64}
    (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B) (henc : (nm "enc", ValueHOL.val (.word H)) ∈ B)
    (hs2 : (nm "s2", wv [x, y, z]) ∈ B) (hfr : ∀ p ∈ B, p.1 ≠ nm "n")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (fun Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ FBlk a.p0 H 128 Γ q ∧
        M.toNat + 16 ≤ H.toNat)) csr_n_2
      (GP a (LV B) (IM a K C NR SW AW ND M) Rv) (cb csr_n_2) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold csr_n_2
  have hEA : ∀ s : State σ, LV B s.locals → ∀ vs, evs s [.load .one (.op .add [lv (nm "a"), cw 0]),
      .load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "a"), cw 8]), lv (nm "sr"),
      .load .one (.op .add [lv (nm "a"), cw 48]), lv (nm "enc")] = some vs →
      ∃ v0 v1 v2 v3 : ValueHOL 64, vs = [v0, v1, v2, v3, .val (.word H)] :=
    fun s hL vs hvs => evs5_last hvs (lv_ev hL henc)
  refine gc_decCallTA ha (cs := []) (capSub_nil _) (sa_ea hCb haH)
    (MptE.funSpec_ea_ret hX Helpers.alignedDom_guestCtx) (by simp [MptE.sigEa]) (fun h => by simp [MptE.sigEa] at h)
    (L1 := fun v m => ∃ N : BitVec 64, v = .val (.word N) ∧ LV ((nm "n", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ N : BitVec 64, v = .val (.word N) →
      N.toNat ≤ 110 ∧ IM a K C NR SW AW ND M Γ q mm ∧ VOn 128 H Γ)
    (L2 := fun m => ∃ N : BitVec 64, LV ((nm "n", ValueHOL.val (.word N)) :: B) m)
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
    let B' : List (MlS × ValueHOL 64) := (nm "n", ValueHOL.val (.word N)) :: B
    refine ch_pre (P := GI a (LV B') (fun Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ VOn 128 H Γ ∧
        N.toNat ≤ 110)) ?_
      (fun s _ ⟨⟨N', hN', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hN'
        subst hN'
        obtain ⟨h1, h2, h3⟩ := hE N rfl
        exact ⟨hL, Γ, q, he, hh, hsc, h2, h3, h1⟩)
    refine ch_weakL (L := LV B') (fun m hm => ⟨N, hm⟩) (ch_weakE (E := fun Γ q mm => IM a K C NR SW AW ND M Γ q mm ∧ VOn 128 H Γ ∧ N.toNat ≤ 110)
      (fun Γ q mm h => h.1) ?_)
    refine cmps_stmt ha haC hCb haH hgr hcI (args := [lv (nm "state_mpt"), .rfield 1 (lv (nm "s2")), cw 20,
      lv (nm "enc"), lv (nm "n")]) (L := LV B') (K := y) (KL := BitVec.ofNat 64 20) (VP := H) (VL := N)
      (M := M) ?_ (by decide) (fun Γ q mm h => h.1.2.2.1) ?_ ?_
    · intro s hL
      exact evs_cons (lv_ev hL (List.mem_cons_of_mem _ hstate))
        (evs_cons (ev_rfield_wv (x := lv (nm "s2")) (ws := [x, y, z]) (lv_ev hL (List.mem_cons_of_mem _ hs2))
          (i := 1) (by simp))
          (evs_cons (ev_cw s 20) (evs_cons (lv_ev hL (List.mem_cons_of_mem _ henc))
            (evs_cons (lv_ev hL (List.mem_cons_self ..)) evs_nil))))
    · intro Γ q mm h
      obtain ⟨-, ⟨o, ho, hty, hlo, hhi⟩, hN⟩ := h
      exact Or.inr ⟨o, ho, hty, by omega, by omega⟩
    · intro s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR'
      exact ⟨im_mps haC hCb hK hext hh hh' hmo hmd hHR' hE.1, vo_extn hext hE.2.1, hE.2.2⟩


end InitECandidate.Solver.MemSafe.Trie
