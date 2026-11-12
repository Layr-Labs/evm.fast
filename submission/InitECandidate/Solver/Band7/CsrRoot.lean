import InitECandidate.Solver.Band7.CsrInner

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
theorem cstage_root {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    {kv : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB ADDR : BitVec 64}
    (hmpt : (nm "mpt", ValueHOL.val (.word M)) ∈ kv) (haddr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ kv)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ kv)
    (hfr : ∀ p ∈ kv, p.1 ≠ nm "root")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV kv) (IA a (KAd SW ADDR) C NR SW AW ND M VB)) csr_root_1
      (GP a (LV kv) (IA a (KAd SW ADDR) C NR SW AW ND M VB) Rv) (cb csr_root_1) := by
  unfold csr_root_1
  have hK := kad_stable SW ADDR
  refine gc_allocQ ha haC hCb haH (n := 32) (by norm_num) (by norm_num) hfr
    (E := IA a (KAd SW ADDR) C NR SW AW ND M VB)
    (Q := fun H Γ q mm => IA a (KAd SW ADDR) C NR SW AW ND M VB Γ q mm ∧ FBlk a.p0 H 32 Γ q ∧
      VB.toNat + 96 ≤ H.toNat)
    ?_ ?_ (L2 := fun m => ∃ H : BitVec 64, LV ((nm "root", ValueHOL.val (.word H)) :: kv) m)
    (fun m0 m _ ⟨H, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp)) hfr _)
  · intro s st Γ Γ' q q' H hext hh hh' hmo hnf hmd hE hHn hFB hmem
    refine ⟨ia_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE, hFB, ?_⟩
    have := hE.2.2.2.1.2.2.2.1
    omega
  · intro H
    let kvr : List (MlS × ValueHOL 64) := (nm "root", ValueHOL.val (.word H)) :: kv
    have hmptr : (nm "mpt", ValueHOL.val (.word M)) ∈ kvr := List.mem_cons_of_mem _ hmpt
    have haddrr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ kvr := List.mem_cons_of_mem _ haddr
    have hnrr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ kvr := List.mem_cons_of_mem _ hnr
    have hrootr : (nm "root", ValueHOL.val (.word H)) ∈ kvr := List.mem_cons_self ..
    refine ch_weakL (L := LV kvr) (fun m hm => ⟨H, hm⟩) (gc_seq (L := LV kvr)
      (E := IA a (KAd SW ADDR) C NR SW AW ND M VB) ?_ ?_)
    · -- `mpt_root(mpt, root)`
      refine ch_pre (P := GI a (LV kvr) (fun Γ q mm => IA a (KAd SW ADDR) C NR SW AW ND M VB Γ q mm ∧
        FBlk a.p0 H 32 Γ q ∧ VB.toNat + 96 ≤ H.toNat)) ?_ (fun s _ h => h)
      refine gc_callX ha (cs := []) (capSub_nil _) (sa_mpt_root hCb haH) (funSpec_true _)
        (by simp [mrSig]) (fun h => by simp [mrSig] at h) cc_mr ?_ ?_ ?_
      · intro s Γ q hs hL hh hE vs hvs callee
        have hev : evs s [lv (nm "mpt"), lv (nm "root")] = some [.val (.word M), .val (.word H)] :=
          evs_cons (lv_ev hL hmptr) (evs_cons (lv_ev hL hrootr) evs_nil)
        rw [hev] at hvs
        cases hvs
        obtain ⟨hIA, hFB, hVH⟩ := hE
        obtain ⟨e0, hb, hbo⟩ := blk_buf hCb hFB (heap_ord hh) (off := 0) (n := 32) (by omega) (by omega)
        have e0' : H + BitVec.ofNat 64 0 = H := by simp
        rw [e0'] at hb hbo
        rw [hCb] at hb
        exact preMr_of_heap haC haH hh callee (argsOK_ab hb) hIA.2.2.1.1.2.2.2.2.2
      · intro s Γ q hs hL hh hE vs hvs
        have hev : evs s [lv (nm "mpt"), lv (nm "root")] = some [.val (.word M), .val (.word H)] :=
          evs_cons (lv_ev hL hmptr) (evs_cons (lv_ev hL hrootr) evs_nil)
        rw [hev] at hvs
        cases hvs
        obtain ⟨hIA, hFB, hVH⟩ := hE
        obtain ⟨e0, hb, hbo⟩ := blk_buf hCb hFB (heap_ord hh) (off := 0) (n := 32) (by omega) (by omega)
        have e0' : H + BitVec.ofNat 64 0 = H := by simp
        rw [e0'] at hb hbo
        exact ⟨argsOK_ab hb, fun x hx => Or.inr (Or.inr (Or.inl (hbo x (argCells_ab hx)).2.1)),
          fun callee => ⟨M, H, rfl, mrecF_of_hRec hh.2.1 hIA.2.2.1.1⟩⟩
      · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
        have hev : evs s [lv (nm "mpt"), lv (nm "root")] = some [.val (.word M), .val (.word H)] :=
          evs_cons (lv_ev hL hmptr) (evs_cons (lv_ev hL hrootr) evs_nil)
        rw [hev] at hvs
        cases hvs
        obtain ⟨hIA, hFB, hVH⟩ := hE
        refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun _ => ?_⟩
        obtain ⟨e0, hb, hbo⟩ := blk_buf hCb hFB (heap_ord hh) (off := 0) (n := 32) (by omega) (by omega)
        have e0' : H + BitVec.ofNat 64 0 = H := by simp
        rw [e0'] at hbo
        have hM := hIA.2.2.2.2.1
        have hV96 := hIA.2.2.2.1.2.2.2.1
        have hV8 := hIA.2.2.2.1.1
        exact ia_call haC hCb hK (cs := []) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh'
          (fun y hy => by
            have := hbo y (argCells_ab hy)
            have hy8 := (argCells_ab hy).1
            exact ⟨this.1, by omega, by omega⟩) hIA
    · -- `htab_set(new_roots, addr, root)`
      refine chset_stmt ha hCb haH hgr (th := Types.tHTh20) (by decide) hcH (T := NR) (key := ADDR) (val := H)
        (E := IA a (KAd SW ADDR) C NR SW AW ND M VB) (L := LV kvr) ?_ ?_ ?_ ?_ ?_
      · exact fun s hL => evs_cons (lv_ev hL hnrr) (evs_cons (lv_ev hL haddrr) (evs_cons (lv_ev hL hrootr) evs_nil))
      · exact fun s Γ q hh hE => hE.1.2.1
      · intro s Γ q hh hE
        have : valK Types.tHTh20 = FK.scalar := by decide
        rw [this]; trivial
      · intro s Γ q hh hE
        have hT : ∃ od ∈ Γ, od.base = NR ∧ od.ty = Types.tHTh20 := hE.1.2.1
        have hkl : htKL Types.tHTh20 = 20 := by decide
        refine rdkey_core (gamOK_of_layout (layout_of_heap haC hh)) (th := Types.tHTh20) (t := Types.tHTbt20) (B := SW) (key := ADDR)
          (by decide) (by decide) (by decide) (by decide) ?_ hT
        rw [hkl]
        exact hE.2.2.2.2.2
      · intro s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE
        exact ia_nb haC hCb hK (setSigR_nb _) (by unfold CapsAvoid HtabEntries.capsHT; decide) hmd hext hnf hmo hh hh' hE


end InitECandidate.Solver.MemSafe.Trie
