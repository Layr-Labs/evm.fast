import InitECandidate.Solver.Band7.CsrLoopA2

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
/-- The body of the `then` branch: `addr = s.1; inner = s.2; ...`. -/
theorem cstage_addr {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND x y z : BitVec 64}
    (hs : (nm "s", wv [x, y, z]) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "addr" :: nm "inner" :: nm "has" :: nm "old_root" :: nm "mpt" :: nm "vbuf" :: nsV,
      p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (LV B) (IB a (KAd SW y) C NR SW AW ND)) csr_addr_1
      (GP a (LV B) (IB a (KAd SW y) C NR SW AW ND) Rv) (cb csr_addr_1) := by
  unfold csr_addr_1 csr_inner_1
  let B1 : List (MlS × ValueHOL 64) := (nm "addr", ValueHOL.val (.word y)) :: B
  let B2 : List (MlS × ValueHOL 64) := (nm "inner", ValueHOL.val (.word z)) :: B1
  have hfr1 : ∀ p ∈ B1, ∀ w ∈ nm "inner" :: nm "has" :: nm "old_root" :: nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ w :=
    fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
  have hfr2 : ∀ p ∈ B2, ∀ w ∈ nm "has" :: nm "old_root" :: nm "mpt" :: nm "vbuf" :: nsV, p.1 ≠ w :=
    fresh_cons (fun p hp w hw => hfr1 p hp w (List.mem_cons_of_mem _ hw)) (by decide)
  refine gc_dec ha.hH (L1 := LV B1) (L2 := LV B1) ?_ ?_
    (fun m0 m _ h => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
      (fun p hp => hfr p hp _ (by decide)) _)
  · intro s' hs' hL v hv
    have hx : ev s' (lv (nm "s")) = some (wv [x, y, z]) := lv_ev hL hs
    rw [ev_rfield_wv (ws := [x, y, z]) hx (i := 1) (by simp)] at hv
    cases hv
    exact lv_cons (lv_set hL (fun p hp => hfr p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])
  · refine gc_dec ha.hH (L1 := LV B2) (L2 := LV B2) ?_ ?_
      (fun m0 m _ h => lv_res (lv_mono h (fun p hp => List.mem_cons_of_mem _ hp))
        (fun p hp => hfr1 p hp _ (by decide)) _)
    · intro s' hs' hL v hv
      have hx : ev s' (lv (nm "s")) = some (wv [x, y, z]) := lv_ev hL (List.mem_cons_of_mem _ hs)
      rw [ev_rfield_wv (ws := [x, y, z]) hx (i := 2) (by simp)] at hv
      cases hv
      exact lv_cons (lv_set hL (fun p hp => hfr1 p hp _ (by decide)) _) (by simp [setVarHOLFinite, FUPDATE])
    · exact cstage_hasset ha haC hCb haH hgr hcI hcH hcC (INN := z) (ADDR := y)
        (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hcache))
        (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hnd)) (List.mem_cons_self ..)
        (List.mem_cons_of_mem _ (List.mem_cons_self ..)) (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hnr)) hfr2


set_option maxHeartbeats 0 in
/-- One iteration of the first loop: `s = htab_item(sw, i); if s.0 != 0 { ... } i = i + 1`. -/
theorem cstage_item {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND : BitVec 64}
    (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "i" :: nsA, p.1 ≠ w)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IB a (fun _ => True) C NR SW AW ND)) csr_s_1
      (GP a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IB a (fun _ => True) C NR SW AW ND) Rv) (cb csr_s_1) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hKt : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → True → True := fun _ _ _ _ h => h
  refine ch_exL fun I => ?_
  let kvi : List (MlS × ValueHOL 64) := (nm "i", ValueHOL.val (.word I)) :: B
  have hfri : ∀ p ∈ kvi, ∀ w ∈ nsA, p.1 ≠ w := fresh_cons
    (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
  unfold csr_s_1
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH item_R) (HtabEntries.funSpec_item_j hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => (∃ x y z : BitVec 64, v = wv [x, y, z]) ∧ LV ((nm "s", v) :: kvi) m)
    (E1 := fun v Γ q mm => IB a (fun _ => True) C NR SW AW ND Γ q mm ∧
      ∀ x y z : BitVec 64, v = wv [x, y, z] → x ≠ 0 → KeyIn Γ SW Types.tHTbt20 y 20)
    (L2 := fun m => ∃ x y z J : BitVec 64,
      LV ((nm "s", wv [x, y, z]) :: (nm "i", ValueHOL.val (.word J)) :: B) m)
    (E2 := IB a (fun _ => True) C NR SW AW ND) ?_ ?_ ?_ ?_
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
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh => ⟨ib_nb haC hCb hKt
      (by decide) (by intro c hc; simp at hc) hmd hext hh hh' hE, ?_⟩⟩
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
    let kvs : List (MlS × ValueHOL 64) := (nm "s", wv [x, y, z]) :: kvi
    have hfrs : ∀ p ∈ kvs, ∀ w ∈ nm "addr" :: nm "inner" :: nm "has" :: nm "old_root" :: nm "mpt" ::
        nm "vbuf" :: nsV, p.1 ≠ w := fresh_cons
      (fun p hp w hw => hfri p hp w (List.mem_cons_of_mem _ hw)) (by decide)
    refine ch_pre (P := GI a (LV kvs) (fun Γ q mm => IB a (fun _ => True) C NR SW AW ND Γ q mm ∧
        ∀ x' y' z' : BitVec 64, wv [x, y, z] = wv [x', y', z'] → x' ≠ 0 → KeyIn Γ SW Types.tHTbt20 y' 20)) ?_
      (fun s _ ⟨⟨_, hL⟩, rest⟩ => ⟨hL, rest⟩)
    refine ch_weakL (L := fun m => ∃ x y z J : BitVec 64,
      LV ((nm "s", wv [x, y, z]) :: (nm "i", ValueHOL.val (.word J)) :: B) m) (fun m hm => hm) ?_
    refine gc_seq (L := LV kvs) (E := IB a (fun _ => True) C NR SW AW ND) ?_ ?_
    · refine gc_ite ?_ (gc_skip fun s h => ?_)
      · refine ch_pre (P := GI a (LV kvs) (IB a (KAd SW y) C NR SW AW ND)) ?_ ?_
        · exact ch_weakE (fun Γ q mm h => ⟨h.1, h.2.1, trivial⟩)
            (cstage_addr ha haC hCb haH hgr hcI hcH hcC (x := x) (y := y) (z := z) (List.mem_cons_self ..)
              (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hcache))
              (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hnd))
              (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hnr))
              hfrs)
        · intro st hst ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, hc⟩
          have hx0 : x ≠ 0 := ne0_of_then (ev_rfield_wv (ws := [x, y, z])
            (lv_ev hL (List.mem_cons_self ..)) (i := 0) (by simp)) hc
          exact ⟨hL, Γ, q, he, hh, hsc, hE.1.1, hE.1.2.1, hE.2 x y z rfl hx0⟩
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
      have h3 := lv_cons h2 (x := nm "s") (v := wv [x, y, z])
        (lk_keep (x := nm "i") (y := nm "s") (by decide) (hL _ (List.mem_cons_self ..)))
      exact ⟨x, y, z, I + BitVec.ofNat 64 1, h3⟩


end InitECandidate.Solver.MemSafe.Trie
