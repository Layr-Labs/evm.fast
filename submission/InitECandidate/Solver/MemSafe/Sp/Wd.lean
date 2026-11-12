import InitECandidate.Solver.MemSafe.Sp.Mid

/-!
# Sp: the withdrawal part of `payload_header` with cost (mirrors of `Exb.ph_tail`, `ph_wd2`, `ph_wd`)

The loop over the withdrawals costs the table analyzer's bound of `phWdLoop` (`encode_withdrawal_rlp` has a table cost).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Exb InitECandidate.Solver.MemSafe.Wg

variable {σ : Type}

def bLoopPh : Nat := 6465364971497830807021602650068426424367

theorem costFin_phWdLoop : costFin phWdLoop = some bLoopPh := by decide_cbv

def bTailE (Bbmi : Nat) : Nat := (1 + Bbmi + 0) + (1 + cEer + ((1 + cCrh + 0) + ((1 + cKec + 0) + 0)))

def bWd2E (Bbmi : Nat) : Nat := (1 + 2 + 0) + (bLoopPh + bTailE Bbmi)


theorem ch_tail {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgr : a.sg.grows = true) {Bbmi : Nat} (hBmiC : Eb.HypBmiCost σ Bbmi) (hgw : a.sg.gw = []) (hjr : Frames.JrNZ a.s0)
    (hev : Eb.EvCc a.s0) {PL C H WR RH BH WD NWw : BitVec 64} {NW : Nat} (hNW : NWw.toNat = NW) (hN32 : NW < 2 ^ 32)
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    CH (PJ a (Trie.LV (phKvT H WR RH BH NWw)) (EC a.p0 PL C H WR RH BH WD NW NW)) phTail
      (PP a L2 E2 (PhR a.p0 PL C H WR RH BH WD NW)) (bTailE Bbmi) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hBmi : SumSpecA σ guestCtx a.Cb a.H (nm "build_mpt_indexed") Trie.bmiSig Trie.BmiPre
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ Γ _ _ Γ' => Γ' = Γ) := by
    rw [hCb, haH]
    exact sumSpecA_mono Trie.sumSpecA_build_mpt_indexed (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim)
      (fun _ _ _ _ _ _ h => h)
  have hCrh : SumSpecA σ guestCtx a.Cb a.H (nm "compute_requests_hash") crhSig CrhPre
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ Γ _ _ Γ' => ScrOld Γ Γ') := by
    rw [hCb, haH]
    exact sumSpecA_mono sumSpecA_compute_requests_hash (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim)
      (fun _ _ _ _ _ _ h => h)
  have hEer := Aw.awSpec_encode_execution_requests (σ := σ) (C := Types.guestC) (H := Hooks.guestHooksR (σ := σ)) hX hF.hal
    Aw.domBelow_guestCtx hF.hH InitECandidate.Solver.MemSafe.Helpers.tagSlots_guestC Annot.drv_allocG
  have hgwE : FunSpec σ guestCtx (nm "encode_execution_requests") _ :=
    funSpec_ph_gw (σ := σ) hX (f := nm "encode_execution_requests") (by conv => lhs; cbv)
  have hgwC : FunSpec σ guestCtx (nm "compute_requests_hash") _ :=
    funSpec_ph_gw (σ := σ) hX (f := nm "compute_requests_hash") (by conv => lhs; cbv)
  have hgwK : FunSpec σ guestCtx (nm "keccak256") _ :=
    funSpec_ph_gw (σ := σ) hX (f := nm "keccak256") (by conv => lhs; cbv)
  have hgwT : FunSpec σ guestCtx (nm "build_mpt_indexed") _ :=
    Trie.funSpec_trie_gw (σ := σ) hX (g := nm "wd_rlp_slices") (Trie.typed_of_some (by decide)) Trie.trie_has_bmi
  unfold phTail
  -- build_mpt_indexed(wd_rlp_slices, nwd, wr)
  have hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → Trie.LV (phKvT H WR RH BH NWw) s.locals →
      Heap a Γ q s → EC a.p0 PL C H WR RH BH WD NW NW Γ q s.memory s.globals →
      ∀ vs, evs s [gv (nm "wd_rlp_slices"), lv (nm "nwd"), lv (nm "wr")] = some vs →
      (ArgsOK a.Cb Γ q Trie.bmiSig.params vs ∧ (∀ x, ArgCells Trie.bmiSig.params vs x → a.Foot x) ∧
        ∀ callee, Trie.BmiPre vs (callEntryStateHOLFinite s callee) Γ) ∧
      ∃ A N O : BitVec 64, vs = [Wv A, Wv N, Wv O] ∧ N.toNat < 2 ^ 50 := by
    intro s Γ q _ hL hh hE vs hvs
    have e1 : ev s (gv (nm "wd_rlp_slices")) = some (Wv WD) := hE.gl
    rw [evs_cons e1 (evs_cons (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp [phKvT]))
      (evs_cons (Trie.lv_ev hL (x := nm "wr") (v := Wv WR) (by simp [phKvT])) evs_nil))] at hvs
    cases hvs
    have hord := heap_ord hh
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub hE.fW (off := 0) (n := 32) (by omega) (by omega)
    refine ⟨⟨Ra.ao_aab _ _ WR (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun callee => ⟨WD, NWw, WR, rfl, q, hh.2.1, fun j hj => ?_⟩⟩, _, _, _, rfl, by omega⟩
    rw [hNW] at hj
    rw [ivMul168 j, ivMul16 j]
    obtain ⟨-, n1, n2, n3⟩ := fblk_cell (d := 16 * j.toNat) hord hE.fD (by omega)
    obtain ⟨-, m1, m2, m3⟩ := fblk_cell (d := 16 * j.toNat + 8) hord hE.fD (by omega)
    exact ⟨⟨Or.inl ⟨n2, n3⟩, fun h => n1 (inObj_of_kept h)⟩, ⟨Or.inl ⟨m2, m3⟩, fun h => m1 (inObj_of_kept h)⟩,
      Or.inr (hE.wc _ hj)⟩
  refine ch_seq (ch_bmi ha hBmiC haC haH hgw hjr hev
    (pp_call ha hBmi hgwT (by simp [Trie.bmiSig]) (fun _ => hgr)
      (E' := EC a.p0 PL C H WR RH BH WD NW NW) (fun s Γ q hs hL hh hE vs hvs => (hargs s Γ q hs hL hh hE vs hvs).1) ?_)
    (fun s Γ q hs hL hh hE vs hvs => by
      obtain ⟨⟨hA, -, hpb⟩, A, N, O, hv, hN⟩ := hargs s Γ q hs hL hh hE vs hvs
      rw [hCb] at hA
      exact ⟨A, N, O, hv, hN, hA, hpb⟩)) ?_
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    subst hQ
    rw [evs_cons (show ev s (gv (nm "wd_rlp_slices")) = some (Wv WD) from hE.gl)
      (evs_cons (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp [phKvT]))
      (evs_cons (Trie.lv_ev hL (x := nm "wr") (v := Wv WR) (by simp [phKvT])) evs_nil))] at hvs
    cases hvs
    refine ec_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (newFresh_refl _ _ _) hmo hLc le_rfl
      (fun x hni h1 h2 hout => keep_of_mod haC hCb hh hmd hni h1 h2 fun hac => ?_) hE
    obtain ⟨o1, o2⟩ := ovl_in (Ra.ac_aab hac) hE.fW.1
    have := hE.oW
    have := hE.dW
    omega
  -- var reqs = encode_execution_requests(...)
  refine ch_decCallAW ha haC hCb haH hfp hsp hgr hEer (by simp) hgwE
    (hc := Wire.calleeCost_guest (f := nm "encode_execution_requests") (B := cEer) rfl)
    (L1 := fun v => Trie.LV ((nm "reqs", v) :: phKvT H WR RH BH NWw))
    (E1 := fun v Γ q m g => EC a.p0 PL C H WR RH BH WD NW NW Γ q m g ∧ Aw.EerRet v) (L2 := fun _ => False)
    (fun _ _ _ _ h => h.i.2.1) (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_
    (fun s st v hL _ => Trie.lv_new (s := { st with locals := s.locals }) hL (by ph_fresh) v) ?_ (fun _ _ _ h => h.elim)
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hh hh' hext hnf hmo hB' hmod hPost hLc _
    exact ⟨Γ', ext_refl _, hh', ec_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext hnf hmo hLc le_rfl
      (fun x hni h1 h2 _ => keep_of_aw (heap_ord hh) (Ra.layout_heap haC hh) hmod hni h1 h2) hE, hPost⟩
  intro v
  have hmemR : (nm "rh", Wv RH) ∈ (nm "reqs", v) :: phKvT H WR RH BH NWw := by simp [phKvT]
  have hevsC : ∀ s : State σ, Trie.LV ((nm "reqs", v) :: phKvT H WR RH BH NWw) s.locals → ∀ A N : BitVec 64,
      v = .rStruct [Wv A, Wv N] →
      evs s [.rfield 0 (lv (nm "reqs")), .rfield 1 (lv (nm "reqs")), lv (nm "rh")] = some [Wv A, Wv N, Wv RH] := by
    intro s hL A N hv
    subst hv
    have er := Trie.lv_ev hL (x := nm "reqs") (v := .rStruct [Wv A, Wv N]) (by simp)
    have e0 : ev s (.rfield 0 (lv (nm "reqs"))) = some (Wv A) := ev_rfield er 0
    have e1 : ev s (.rfield 1 (lv (nm "reqs"))) = some (Wv N) := ev_rfield er 1
    exact evs_cons e0 (evs_cons e1 (evs_cons (Trie.lv_ev hL hmemR) evs_nil))
  -- compute_requests_hash(reqs.0, reqs.1, rh)
  refine ch_seq (chCrh <| pp_call ha hCrh hgwC (by simp [crhSig]) (fun h => by simp [crhSig] at h)
    (E' := fun Γ q m g => EC a.p0 PL C H WR RH BH WD NW NW Γ q m g ∧ Aw.EerRet v) ?_ ?_) ?_
  · intro s Γ q _ hL hh hE vs hvs
    obtain ⟨A, N, hv, hN⟩ := hE.2
    rw [hevsC s hL A N hv] at hvs
    cases hvs
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub hE.1.fR (off := 0) (n := 32) (by omega) (by omega)
    exact ⟨Ra.ao_aab _ _ RH (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun callee => ⟨A, N, RH, rfl, by omega⟩⟩
  · intro s st vs callee v' Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    obtain ⟨A, N, hv, hN⟩ := hE.2
    rw [hevsC s hL A N hv] at hvs
    cases hvs
    refine ⟨ec_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (hnfp rfl) hmo hLc le_rfl
      (fun x hni h1 h2 hout => keep_of_mod haC hCb hh hmd hni h1 h2 fun hac => ?_) hE.1, hE.2⟩
    obtain ⟨o1, o2⟩ := ovl_in (Ra.ac_aab hac) hE.1.fR.1
    have := hE.1.oR
    have := hE.1.dR
    omega
  -- keccak256(bal, bal_n, bh)
  have hK : SumSpecA σ guestCtx a.Cb a.H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ (fun _ _ _ => True)
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ _ _ _ _ => True) := Trie.sa_cast hCb haH Ra.keccak_C
  refine ch_seq (chKec <| pp_call ha hK hgwK (by simp) (fun h => by simp at h)
    (E' := fun Γ q m g => EC a.p0 PL C H WR RH BH WD NW NW Γ q m g ∧ Aw.EerRet v) ?_ ?_) ?_
  · intro s Γ q _ hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    rw [Trie.lv_ev hL (x := nm "bh") (v := Wv BH) (by simp [phKvT])] at h3
    cases h3
    rw [evs_nil] at hvs3
    cases hvs3
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub hE.1.fB (off := 0) (n := 32) (by omega) (by omega)
    exact ⟨Ra.ao_aab _ _ BH (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun _ => trivial⟩
  · intro s st vs callee v' Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    rw [Trie.lv_ev hL (x := nm "bh") (v := Wv BH) (by simp [phKvT])] at h3
    cases h3
    rw [evs_nil] at hvs3
    cases hvs3
    refine ⟨ec_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (hnfp rfl) hmo hLc le_rfl
      (fun x hni h1 h2 hout => keep_of_mod haC hCb hh hmd hni h1 h2 fun hac => ?_) hE.1, hE.2⟩
    obtain ⟨o1, o2⟩ := ovl_in (Ra.ac_aab hac) hE.1.fB.1
    have := hE.1.oB
    have := hE.1.dB
    omega
  -- return h
  refine ch_leaf (pp_ret ha.hH fun s Γ q _ hL _ _ hE v' hv' => ⟨?_, hE.1⟩) (cost_return _)
  rw [Trie.lv_ev hL (x := nm "h") (v := Wv H) (by simp [phKvT])] at hv'
  cases hv'
  rfl


section body
variable {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
  (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
  (hgr : a.sg.grows = true) (hPl : HypPlS σ) (hWd : HypWdFresh σ)
include ha haC hCb haH hfp hsp hgr hWd

/-- From the count: the allocation, the loop and the tail. -/
theorem ch_wd2 {Bbmi : Nat} (hBmiC : Eb.HypBmiCost σ Bbmi) (hgw : a.sg.gw = []) (hjr : Frames.JrNZ a.s0)
    (hev : Eb.EvCc a.s0) {PL C H WR RH BH NWw : BitVec 64} (hN : NWw.toNat < 2 ^ 32)
    (hM : rd a.s0.memory (PL + BitVec.ofNat 64 56) = NWw) {L2 : LocalsH → Prop}
    {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    CH (PJ a (Trie.LV ((nm "nwd", Wv NWw) :: phKvB PL H WR RH BH)) (EB a.p0 PL C H WR RH BH))
      (.seq (.call (some (some (.global, nm "wd_rlp_slices"), none)) (nm "alloc")
          [.op .add [.panop .mul [lv (nm "nwd"), cw 16], cw 16]])
        (.dec (nm "i") .one (cw 0) (.seq phWdLoop phTail)))
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) (bWd2E Bbmi) := by
  refine ch_seq (ch_leaf (ph_wdAlloc ha haC hCb haH hN fun s hL => ?_) cost_allocCall) ?_
  · have e := ev_add2 (ev_mul2 (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp)) (ev_cw s 16)) (ev_cw s 16)
    rw [nw_size hN] at e
    exact evs_cons e evs_nil
  refine ch_exE fun WD => ?_
  refine ch_dec ha.hH (L1 := fun m => (BitVec.ofNat 64 0).toNat ≤ NWw.toNat ∧ (BitVec.ofNat 64 0).toNat < 2 ^ 63 ∧
      Trie.LV ((nm "i", Wv (BitVec.ofNat 64 0)) :: phKvT H WR RH BH NWw) m) (L2 := fun _ => False) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ _ v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨by simp, by simp, Trie.lv_mono (Trie.lv_new hL (by ph_freshB) _) ?_⟩
    intro p hp
    simp only [phKvT, phKvB, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> simp
  refine ch_seq (ch_leaf (hoareG_pre (ph_wdLoop ha haC hCb haH hfp hsp hgr hWd hN rfl) fun s _ h => ⟨BitVec.ofNat 64 0, h⟩)
    (cost_guest_costA costFin_phWdLoop)) ?_
  exact ch_rv (ch_tail ha haC hCb haH hfp hsp hgr hBmiC hgw hjr hev rfl hN) fun Γ q m g v h => ⟨WD, NWw.toNat, hN, by rw [hM], h⟩


include hPl

theorem ch_wd {Bbmi : Nat} (hBmiC : Eb.HypBmiCost σ Bbmi) (hgw : a.sg.gw = []) (hjr : Frames.JrNZ a.s0)
    (hev : Eb.EvCc a.s0) {PL C H WR RH BH : BitVec 64} (hPE : PlE a PL) {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    CH (PJ a (Trie.LV (phKvB PL H WR RH BH)) (EB a.p0 PL C H WR RH BH)) phWd
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) (bWd2E Bbmi) := by
  unfold phWd
  refine ch_dec ha.hH (L1 := fun m => ∃ NWw : BitVec 64, NWw.toNat < 2 ^ 32 ∧
      rd a.s0.memory (PL + BitVec.ofNat 64 56) = NWw ∧
      Trie.LV ((nm "nwd", Wv NWw) :: phKvB PL H WR RH BH) m) (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hh hE v hv
    have hv' := iv_load hL (x := nm "pl") (X := PL) (by simp [phKvB]) hv
    obtain ⟨o, ho, hb, ht⟩ := hE.i.1
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
      have := hh.1
      rwa [haC, haH] at this
    obtain ⟨-, h32, -⟩ := hPl Γ s o hG ho ht
    rw [txF_eq hb 7] at h32
    subst hv'
    have hc := pl_cell_const (k := 7) haC hPE.1 hPE.2.1 hh hPE.2.2.1 hPE.2.2.2 (by omega)
    refine ⟨_, h32, ?_, Trie.lv_new hL (by ph_freshB) _⟩
    rw [← hc]
  refine ⟨?_, ?_⟩
  · intro s hs h hg
    obtain ⟨⟨NWw, hN, hM, hL⟩, Γ, q, he, hh, hE⟩ := h
    exact (ch_wd2 ha haC hCb haH hfp hsp hgr hWd hBmiC hgw hjr hev hN hM (L2 := fun _ => False) (E2 := E2) (C := C) (H := H) (WR := WR) (RH := RH) (BH := BH)).1 s hs ⟨hL, Γ, q, he, hh, hE⟩ hg
  · intro s hs h hg
    obtain ⟨⟨NWw, hN, hM, hL⟩, Γ, q, he, hh, hE⟩ := h
    exact (ch_wd2 ha haC hCb haH hfp hsp hgr hWd hBmiC hgw hjr hev hN hM (L2 := fun _ => False) (E2 := E2) (C := C) (H := H) (WR := WR) (RH := RH) (BH := BH)).2 s hs ⟨hL, Γ, q, he, hh, hE⟩ hg

end body

end InitECandidate.Solver.MemSafe.Sp
