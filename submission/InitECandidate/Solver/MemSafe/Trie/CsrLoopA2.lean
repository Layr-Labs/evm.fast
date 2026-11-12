import InitECandidate.Solver.MemSafe.Trie.CsrIB

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: the value buffer and the handle (`csr_vbuf_1`, `csr_mpt_1`)
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- The names declared in the body of the first loop below `vbuf`. -/
def nsV : List MlS := [nm "pass", nm "j", nm "icount", nm "e", nm "v", nm "z", nm "n", nm "w", nm "enc", nm "root"]

set_option maxHeartbeats 0 in
theorem stage_vbuf {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M INN ADDR : BitVec 64}
    (hinn : (nm "inner", ValueHOL.val (.word INN)) ∈ B) (hmpt : (nm "mpt", ValueHOL.val (.word M)) ∈ B)
    (haddr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ x ∈ nm "vbuf" :: nsV, p.1 ≠ x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (LV B) (IM a (KAd SW ADDR) C NR SW AW ND M)) csr_vbuf_1
      (GP a (LV B) (IM a (KAd SW ADDR) C NR SW AW ND M) Rv) := by
  have hK := kad_stable SW ADDR
  unfold csr_vbuf_1
  refine gp_allocQ ha haC hCb haH (n := 96) (by norm_num) (by norm_num) (x := nm "vbuf")
    (fun p hp => hfr p hp _ (by decide)) (E := IM a (KAd SW ADDR) C NR SW AW ND M)
    (Q := fun H Γ q mm => IA a (KAd SW ADDR) C NR SW AW ND M H Γ q mm) ?_ ?_
    (L2 := fun m => ∃ H : BitVec 64, LV ((nm "vbuf", ValueHOL.val (.word H)) :: B) m)
    (fun m0 m _ ⟨H, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s st Γ Γ' q q' H hext hh hh' hmo hnf hmd hE hHn hFB hmem
    refine ia_of_im (im_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE) hFB ?_
    have := hE.2.2.1.1.2.2.1
    omega
  · intro H
    let B' : List (MlS × ValueHOL 64) := (nm "vbuf", ValueHOL.val (.word H)) :: B
    have hfr' : ∀ p ∈ B', ∀ x ∈ nsV, p.1 ≠ x := fresh_cons (fun p hp x hx => hfr p hp x (List.mem_cons_of_mem _ hx))
      (by decide)
    refine gp_weakL' (L := LV B') (fun m hm => ⟨H, hm⟩) (gp_weakE' (E := fun Γ q mm => IA a (KAd SW ADDR) C NR SW AW ND M H Γ q mm)
      (fun Γ q mm h => im_of_ia h) ?_)
    refine stage_passes ha haC hCb haH hgr hcI hcH (INN := INN) (ADDR := ADDR) (List.mem_cons_of_mem _ hinn)
      (List.mem_cons_self ..) (List.mem_cons_of_mem _ hmpt) (List.mem_cons_of_mem _ haddr)
      (List.mem_cons_of_mem _ hnr) ?_
    frj hfr'

theorem sa_mfw {a : Act σ} (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) :
    SumSpecA σ guestCtx a.Cb a.H (nm "mpt_from_witness") mfwSig MfwPre
      (fun _ s Γ x => CapPW [] s Γ x)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M : BitVec 64, v = .val (.word M) ∧ HRecU p0 Γ' p' t.memory M) := by
  rw [hCb, haH]
  exact sumSpecA_mono sumSpecA_mpt_from_witness (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim)
    (fun _ _ _ _ _ _ h => h)

set_option maxHeartbeats 0 in
theorem stage_mpt {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND OR INN ADDR : BitVec 64}
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B) (hor : (nm "old_root", ValueHOL.val (.word OR)) ∈ B)
    (hinn : (nm "inner", ValueHOL.val (.word INN)) ∈ B)
    (haddr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ x ∈ nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (LV B) (IB a (KAd SW ADDR) C NR SW AW ND)) csr_mpt_1
      (GP a (LV B) (IB a (KAd SW ADDR) C NR SW AW ND) Rv) := by
  have hK := kad_stable SW ADDR
  unfold csr_mpt_1
  refine gp_decCallX ha (cs := []) (capSub_nil _) (sa_mfw hCb haH) (funSpec_true _) (by simp [mfwSig])
    (fun _ => hgr)
    (L1 := fun v m => ∃ M : BitVec 64, v = .val (.word M) ∧ LV ((nm "mpt", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ M : BitVec 64, v = .val (.word M) →
      IM a (KAd SW ADDR) C NR SW AW ND M Γ q mm)
    (L2 := fun m => ∃ M : BitVec 64, LV ((nm "mpt", ValueHOL.val (.word M)) :: B) m)
    (E2 := IB a (KAd SW ADDR) C NR SW AW ND) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨M, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [lv (nm "nodedb"), lv (nm "old_root"), cw 1] =
        some [.val (.word ND), .val (.word OR), .val (.word (BitVec.ofNat 64 1))] :=
      evs_cons (lv_ev hL hnd) (evs_cons (lv_ev hL hor) (evs_cons (ev_cw s 1) evs_nil))
    rw [hev] at hvs
    cases hvs
    refine ⟨(anyArgsG (by simp [mfwSig]) rfl hev).1, fun x hx => (argCells_nb (by decide) hx).elim,
      fun callee => ?_⟩
    have hGc : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) := by
      have := Struct.G_congr (s := s) ha.hH rfl rfl rfl rfl hh.1
      rw [haC, haH] at this
      exact this
    obtain ⟨ow, how, hty, hndv⟩ := hE.2.1
    have hdw := dwTPre_of_obj hGc how hty (.val (.word OR))
    have e : rd (callEntryStateHOLFinite s callee).memory ow.base = ND := hndv.symm
    rw [e] at hdw
    exact ⟨ND, OR, BitVec.ofNat 64 1, rfl, hdw⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hev : evs s [lv (nm "nodedb"), lv (nm "old_root"), cw 1] =
        some [.val (.word ND), .val (.word OR), .val (.word (BitVec.ofNat 64 1))] :=
      evs_cons (lv_ev hL hnd) (evs_cons (lv_ev hL hor) (evs_cons (ev_cw s 1) evs_nil))
    rw [hev] at hvs
    cases hvs
    refine ⟨hQ.1, fun v hv hsh M hM => ?_⟩
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh.2.1
    obtain ⟨M', hM', hHR⟩ := hQ.2 v hv q q' hq0 hh'.2.1
    rw [hM] at hM'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hM'
    subst hM'
    exact im_of_ib (ib_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hh hh' hE)
      ⟨hHR.1, fun c hc => Struct.notAlloc_mono hh.2.2.1 (hHR.2 c hc)⟩
  · intro s st v hL hsh
    obtain ⟨M, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨M, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ M : BitVec 64, v = .val (.word M)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨M, hM, -⟩ := h.1; exact ⟨M, hM⟩)
    obtain ⟨M, rfl⟩ := hw
    let B' : List (MlS × ValueHOL 64) := (nm "mpt", ValueHOL.val (.word M)) :: B
    have hfr' : ∀ p ∈ B', ∀ x ∈ nm "vbuf" :: nsV, p.1 ≠ x := fresh_cons
      (fun p hp x hx => hfr p hp x (List.mem_cons_of_mem _ hx)) (by decide)
    refine hoareG_pre (P := GI a (LV B') (IM a (KAd SW ADDR) C NR SW AW ND M)) ?_
      (fun s _ ⟨⟨M', hM', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hM'
        subst hM'
        exact ⟨hL, Γ, q, he, hh, hsc, hE M rfl⟩)
    refine gp_weakL' (L := LV B') (fun m hm => ⟨M, hm⟩) (gp_weakE' (E := fun Γ q mm => IM a (KAd SW ADDR) C NR SW AW ND M Γ q mm)
      (fun Γ q mm h => ib_of_im h) ?_)
    exact stage_vbuf ha haC hCb haH hgr hcI hcH (INN := INN) (List.mem_cons_of_mem _ hinn)
      (List.mem_cons_self ..) (List.mem_cons_of_mem _ haddr) (List.mem_cons_of_mem _ hnr) hfr'

set_option maxHeartbeats 0 in
theorem stage_oldroot {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND INN ADDR : BitVec 64}
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B)
    (hinn : (nm "inner", ValueHOL.val (.word INN)) ∈ B)
    (haddr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ x ∈ nm "old_root" :: nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (LV B) (IB a (KAd SW ADDR) C NR SW AW ND)) csr_old_root_1
      (GP a (LV B) (IB a (KAd SW ADDR) C NR SW AW ND) Rv) := by
  have hK := kad_stable SW ADDR
  unfold csr_old_root_1
  refine gp_decCallX ha (cs := []) (capSub_nil _) (sa_cast hCb haH wsroot_R) (funSpec_true _)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ OR : BitVec 64, v = .val (.word OR) ∧ LV ((nm "old_root", v) :: B) m)
    (E1 := fun _ => IB a (KAd SW ADDR) C NR SW AW ND)
    (L2 := fun m => ∃ OR : BitVec 64, LV ((nm "old_root", ValueHOL.val (.word OR)) :: B) m)
    (E2 := IB a (KAd SW ADDR) C NR SW AW ND) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨OR, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [lv (nm "addr")] = some [.val (.word ADDR)] := evs_cons (lv_ev hL haddr) evs_nil
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => (argCells_nb (by decide) hx).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv' hsh => ?_⟩
    exact ib_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hh hh' hE
  · intro s st v hL hsh
    obtain ⟨OR, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨OR, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ OR : BitVec 64, v = .val (.word OR)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨OR, hOR, -⟩ := h.1; exact ⟨OR, hOR⟩)
    obtain ⟨OR, rfl⟩ := hw
    let B' : List (MlS × ValueHOL 64) := (nm "old_root", ValueHOL.val (.word OR)) :: B
    have hfr' : ∀ p ∈ B', ∀ x ∈ nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ x := fresh_cons
      (fun p hp x hx => hfr p hp x (List.mem_cons_of_mem _ hx)) (by decide)
    refine hoareG_pre (P := GI a (LV B') (IB a (KAd SW ADDR) C NR SW AW ND)) ?_
      (fun s _ ⟨⟨OR', hOR', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hOR'
        subst hOR'
        exact ⟨hL, Γ, q, he, hh, hsc, hE⟩)
    refine gp_weakL' (L := LV B') (fun m hm => ⟨OR, hm⟩) ?_
    exact stage_mpt ha haC hCb haH hgr hcI hcH (OR := OR) (INN := INN) (List.mem_cons_of_mem _ hnd)
      (List.mem_cons_self ..) (List.mem_cons_of_mem _ hinn) (List.mem_cons_of_mem _ haddr)
      (List.mem_cons_of_mem _ hnr) hfr'

set_option maxHeartbeats 0 in
theorem stage_hasset {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND INN ADDR : BitVec 64}
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B)
    (hinn : (nm "inner", ValueHOL.val (.word INN)) ∈ B)
    (haddr : (nm "addr", ValueHOL.val (.word ADDR)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ x ∈ nm "has" :: nm "old_root" :: nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (LV B) (IB a (KAd SW ADDR) C NR SW AW ND)) csr_has_1
      (GP a (LV B) (IB a (KAd SW ADDR) C NR SW AW ND) Rv) := by
  have hK := kad_stable SW ADDR
  unfold csr_has_1
  refine gp_decCallX ha (cs := []) (capSub_nil _) (sa_cast hCb haH has_R) (funSpec_true _)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ HS : BitVec 64, v = .val (.word HS) ∧ LV ((nm "has", v) :: B) m)
    (E1 := fun _ => IB a (KAd SW ADDR) C NR SW AW ND)
    (L2 := fun m => ∃ HS : BitVec 64, LV ((nm "has", ValueHOL.val (.word HS)) :: B) m)
    (E2 := IB a (KAd SW ADDR) C NR SW AW ND) ?_ ?_ ?_ ?_
    (fun m0 m _ ⟨HS, h⟩ => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [lv (nm "cache"), lv (nm "addr")] = some [.val (.word C), .val (.word ADDR)] :=
      evs_cons (lv_ev hL hcache) (evs_cons (lv_ev hL haddr) evs_nil)
    rw [hev] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => (argCells_nb (by decide) hx).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv' hsh => ?_⟩
    exact ib_nb haC hCb hK (by decide) (by intro c hc; simp at hc) hmd hext hh hh' hE
  · intro s st v hL hsh
    obtain ⟨HS, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨HS, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ HS : BitVec 64, v = .val (.word HS)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨HS, hHS, -⟩ := h.1; exact ⟨HS, hHS⟩)
    obtain ⟨HS, rfl⟩ := hw
    let B' : List (MlS × ValueHOL 64) := (nm "has", ValueHOL.val (.word HS)) :: B
    have hfr' : ∀ p ∈ B', ∀ x ∈ nm "old_root" :: nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ x := fresh_cons
      (fun p hp x hx => hfr p hp x (List.mem_cons_of_mem _ hx)) (by decide)
    refine hoareG_pre (P := GI a (LV B') (IB a (KAd SW ADDR) C NR SW AW ND)) ?_
      (fun s _ ⟨⟨HS', hHS', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hHS'
        subst hHS'
        exact ⟨hL, Γ, q, he, hh, hsc, hE⟩)
    refine gp_weakL' (L := LV B') (fun m hm => ⟨HS, hm⟩) ?_
    refine gp_seq (L := LV B') (E := IB a (KAd SW ADDR) C NR SW AW ND) ?_ ?_
    · refine gp_ite ?_ (gp_skip (fun s h => h.1))
      refine hoareG_pre (hset_stmt ha hCb haH hgr (th := Types.tHTb20) (by decide) hcC (T := C) (key := ADDR)
        (val := BitVec.ofNat 64 1) (E := IB a (KAd SW ADDR) C NR SW AW ND) (L := LV B') ?_ ?_ ?_ ?_ ?_)
        (fun s _ h => h.1)
      · exact fun s hL => evs_cons (lv_ev hL (List.mem_cons_of_mem _ hcache))
          (evs_cons (lv_ev hL (List.mem_cons_of_mem _ haddr)) (evs_cons (ev_cw s 1) evs_nil))
      · exact fun s Γ q hh hE => hE.1.1
      · intro s Γ q hh hE
        have : valK Types.tHTb20 = FK.scalar := by decide
        rw [this]; trivial
      · intro s Γ q hh hE
        have hT : ∃ od ∈ Γ, od.base = C ∧ od.ty = Types.tHTb20 := hE.1.1
        have hkl : htKL Types.tHTb20 = 20 := by decide
        refine rdkey_core (gamOK_of_layout (layout_of_heap haC hh)) (th := Types.tHTb20) (t := Types.tHTbt20)
          (by decide) (by decide) (by decide) (B := SW) (key := ADDR) (by decide) ?_ hT
        rw [hkl]
        exact hE.2.2
      · intro s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE
        exact ib_nb haC hCb hK (setSigR_nb _) (by unfold CapsAvoid HtabEntries.capsHT; decide) hmd hext hh hh' hE
    · exact stage_oldroot ha haC hCb haH hgr hcI hcH (INN := INN) (List.mem_cons_of_mem _ hnd)
        (List.mem_cons_of_mem _ hinn) (List.mem_cons_of_mem _ haddr) (List.mem_cons_of_mem _ hnr)
        (fun p hp x hx => hfr' p hp x hx)

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.stage_hasset
