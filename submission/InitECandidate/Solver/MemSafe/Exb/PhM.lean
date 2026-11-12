import InitECandidate.Solver.MemSafe.Exb.PhW
import InitECandidate.Solver.MemSafe.Exb.PhNw

/-!
# `payload_header`, the middle: the size check, the transaction root, `wd_rlp_slices`

`EB`: the header and the three later buffers are fresh blocks above it, its coinbase cell holds `C`. `ph_wdAlloc`: the allocation of the array into the scalar global.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

structure EB (p0 : Ptrs) (PL C H WR RH BH : BitVec 64) (Γ : Gam) (q : Ptrs) (m : Mem) (_g : LocalsH) : Prop where
  i : PhI PL C Γ q
  fH : Trie.FBlk p0 H 248 Γ q
  fW : Trie.FBlk p0 WR 32 Γ q
  fR : Trie.FBlk p0 RH 32 Γ q
  fB : Trie.FBlk p0 BH 32 Γ q
  oW : H.toNat + 248 ≤ WR.toNat
  oR : H.toNat + 248 ≤ RH.toNat
  oB : H.toNat + 248 ≤ BH.toNat
  ck : rd m (H + BitVec.ofNat 64 24) = C

theorem eb_step {p0 : Ptrs} {PL C H WR RH BH : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} {m m' : Mem} {g g' : LocalsH}
    (hord : q.Ordered) (hord' : q'.Ordered) (hL' : Layout Types.guestC q' Γ') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' q q) (hmo : q.Mono q')
    (hkeep : ∀ x : BitVec 64, ¬ InObj Γ x.toNat → heapBase ≤ x.toNat → x.toNat < q.hp → x.toNat < H.toNat + 248 → m' x = m x)
    (h : EB p0 PL C H WR RH BH Γ q m g) : EB p0 PL C H WR RH BH Γ' q' m' g' := by
  have hqe := hord.2.1
  refine ⟨phI_step hord' hL' hext hnf hmo h.i, Trie.fblk_persist h.fH hqe hnf hmo, Trie.fblk_persist h.fW hqe hnf hmo,
    Trie.fblk_persist h.fR hqe hnf hmo, Trie.fblk_persist h.fB hqe hnf hmo, h.oW, h.oR, h.oB, ?_⟩
  rw [← h.ck]
  obtain ⟨e, h1, h2, h3⟩ := fblk_cell (d := 24) hord h.fH (by omega)
  exact Hooks.rd_congr (hkeep _ h1 h2 h3 (by omega))

/-- **`wd_rlp_slices = alloc(nwd * 16 + 16);`**: `EB` becomes `EC … 0` for some `WD`. -/
theorem ph_wdAlloc {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {PL C H WR RH BH : BitVec 64} {NW : Nat} (hN32 : NW < 2 ^ 32)
    {kv : List (MlS × ValueHOL 64)} {e : ExpHOL 64}
    (hev : ∀ s : State σ, Trie.LV kv s.locals → evs s [e] = some [Wv (BitVec.ofNat 64 (NW * 16 + 16))])
    {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV kv) (EB a.p0 PL C H WR RH BH))
      (.call (some (some (.global, nm "wd_rlp_slices"), none)) (nm "alloc") [e])
      (PP a (Trie.LV kv) (fun Γ q m g => ∃ WD, EC a.p0 PL C H WR RH BH WD NW 0 Γ q m g) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hZ : (BitVec.ofNat 64 (NW * 16 + 16)).toNat = NW * 16 + 16 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine hoareG_callA (FunSpec.and (Trie.sa_cast hCb haH Dn.alloc_R) (Trie.funSpec_allocRel hX)) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st ⟨hR, hLc⟩ _ _
    rw [hev s hL] at hvs
    cases hvs
    have hargs := (anyArgsG (a := a) (sg' := ⟨[.any], [.freshArg 0 1 0], [], false⟩) (Γ := Γ) (q := q) (args := [e]) (by simp) rfl (hev s hL)).1
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, -⟩ := Trie.heap_callGX (r := .returned v) (Pre := fun _ _ _ => True)
      (Q := fun _ _ _ _ _ _ => True) (sg' := ⟨[.any], [.freshArg 0 1 0], [], false⟩) ha hh (capSub_nil _) hR (by simp [Good]) (by simp [Abortive]) hargs
      (fun x hx => (argCells_any (by simp) hx).elim) trivial (by simp) (fun h => by simp at h)
    have hnoarg : ∀ y, ¬ ArgCells ([.any] : List PT) [Wv (BitVec.ofNat 64 (NW * 16 + 16))] y :=
      fun y => argCells_any (by simp)
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [Wv (BitVec.ofNat 64 (NW * 16 + 16))] Γ Γ' q q' s st (.returned v) :=
      ⟨hh, hext, hh', hmo, hnf, hnfp,
        fun x hw hal => hmd x hw (hnoarg x) (by rintro ⟨-, c, hc, -⟩; simp at hc) hal, hret⟩
    obtain ⟨WD, rfl, hHn, hFB, hmem⟩ := Trie.alloc_fblk haC rfl co hLc rfl (by rw [hZ]; omega)
    rw [hZ] at hFB
    have hord := heap_ord hh
    have hord' := heap_ord hh'
    have hLy' := Ra.layout_heap haC hh'
    have hqe := hord.2.1
    have hnf0 := hnfp rfl
    refine ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, ?_, WD, ?_⟩, fun r' h => by cases h⟩
    · refine heap_setScalar ha.hH (by rw [haC]; decide) (by rw [haC]; decide) (by decide) (by decide) (by decide) ?_
      exact heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'
    · have e4 := hE.fW.2.2.2.1
      have e5 := hE.fR.2.2.2.1
      have e6 := hE.fB.2.2.2.1
      refine ⟨phI_step hord' hLy' hext hnf0 hmo hE.i, Trie.fblk_persist hE.fH hqe hnf0 hmo, Trie.fblk_persist hE.fW hqe hnf0 hmo,
        Trie.fblk_persist hE.fR hqe hnf0 hmo, Trie.fblk_persist hE.fB hqe hnf0 hmo, hFB, hE.oW, hE.oR, hE.oB,
        by omega, by omega, by omega, ?_, ?_, fun j hj => absurd hj (by omega)⟩
      · rw [show (setKvarHOLFinite .global (nm "wd_rlp_slices") (.val (.word WD)) { st with locals := s.locals }).memory = s.memory from hmem]
        exact hE.ck
      · show (setKvarHOLFinite .global (nm "wd_rlp_slices") (.val (.word WD)) { st with locals := s.locals }).globals.lookup wdG = _
        simp [setKvarHOLFinite, setGlobalHOLFinite, FUPDATE, wdG]
  · intro s hs hP vs hvs callee r st hR _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

theorem pp_rv {X : Ctx 64} {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {Rv Rv' : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} {P : State σ → Prop} {p : ProgHOL 64}
    (h : HoareG σ X P p (PP a L E Rv)) (hm : ∀ Γ q m g v, Rv Γ q m g v → Rv' Γ q m g v) :
    HoareG σ X P p (PP a L E Rv') :=
  hoareG_conseq h (fun _ _ h => h) fun r t _ _ h => ⟨h.1, fun r' hr => ⟨(h.2 r' hr).1, fun v hv => by
    obtain ⟨Γ, q, he, hh, hr'⟩ := (h.2 r' hr).2 v hv
    exact ⟨Γ, q, he, hh, hm _ _ _ _ _ hr'⟩⟩⟩

def phKvB (PL H WR RH BH : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "pl", Wv PL), (nm "h", Wv H), (nm "wr", Wv WR), (nm "rh", Wv RH), (nm "bh", Wv BH)]

macro "ph_freshB" : tactic =>
  `(tactic| (apply ivFresh_of; simp only [phKvB, phKvT, List.map_cons, List.map_nil]; decide))

/-- The result, with the array and its count existential. -/
def PhRx (p0 : Ptrs) (M0 : Mem) (PL C H WR RH BH : BitVec 64) (Γ : Gam) (q : Ptrs) (m : Mem) (g : LocalsH) (v : ValueHOL 64) : Prop :=
  ∃ (WD : BitVec 64) (NW : Nat), NW < 2 ^ 32 ∧ NW = (rd M0 (PL + BitVec.ofNat 64 56)).toNat ∧ PhR p0 PL C H WR RH BH WD NW Γ q m g v

theorem nw_size {N : BitVec 64} (h : N.toNat < 2 ^ 32) :
    N * 16#64 + 16#64 = BitVec.ofNat 64 (N.toNat * 16 + 16) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

/-- A slot of the payload record, by its byte offset. -/
theorem txF_eq {m : Mem} {o : Obj} {PL : BitVec 64} (hb : o.base = PL) (k : Nat) :
    Hooks.txF m o k = rd m (PL + BitVec.ofNat 64 (8 * k)) := by
  subst hb
  rfl

section body
variable {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
  (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
  (hgr : a.sg.grows = true) (hPl : HypPlS σ) (hWd : HypWdFresh σ)
include ha haC hCb haH hfp hsp hgr hWd

/-- From the count: the allocation, the loop and the tail. -/
theorem ph_wd2 {PL C H WR RH BH NWw : BitVec 64} (hN : NWw.toNat < 2 ^ 32)
    (hM : rd a.s0.memory (PL + BitVec.ofNat 64 56) = NWw) {L2 : LocalsH → Prop}
    {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV ((nm "nwd", Wv NWw) :: phKvB PL H WR RH BH)) (EB a.p0 PL C H WR RH BH))
      (.seq (.call (some (some (.global, nm "wd_rlp_slices"), none)) (nm "alloc")
          [.op .add [.panop .mul [lv (nm "nwd"), cw 16], cw 16]])
        (.dec (nm "i") .one (cw 0) (.seq phWdLoop phTail)))
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) := by
  refine pp_seq (ph_wdAlloc ha haC hCb haH hN fun s hL => ?_) ?_
  · have e := ev_add2 (ev_mul2 (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp)) (ev_cw s 16)) (ev_cw s 16)
    rw [nw_size hN] at e
    exact evs_cons e evs_nil
  rintro s hs ⟨hL, Γ, q, he, hh, WD, hE⟩ hg
  revert s hs hL Γ q he hh hE hg
  suffices H' : HoareG σ guestCtx (PJ a (Trie.LV ((nm "nwd", Wv NWw) :: phKvB PL H WR RH BH))
      (EC a.p0 PL C H WR RH BH WD NWw.toNat 0)) (.dec (nm "i") .one (cw 0) (.seq phWdLoop phTail))
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) from
    fun s hs hL Γ q he hh hE hg => H' s hs ⟨hL, Γ, q, he, hh, hE⟩ hg
  refine pp_dec ha.hH (L1 := fun m => (BitVec.ofNat 64 0).toNat ≤ NWw.toNat ∧ (BitVec.ofNat 64 0).toNat < 2 ^ 63 ∧
      Trie.LV ((nm "i", Wv (BitVec.ofNat 64 0)) :: phKvT H WR RH BH NWw) m) (L2 := fun _ => False) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ _ v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨by simp, by simp, Trie.lv_mono (Trie.lv_new hL (by ph_freshB) _) ?_⟩
    intro p hp
    simp only [phKvT, phKvB, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> simp
  refine pp_seq (hoareG_pre (ph_wdLoop ha haC hCb haH hfp hsp hgr hWd hN rfl) fun s _ h => ⟨BitVec.ofNat 64 0, h⟩) ?_
  exact pp_rv (ph_tail ha haC hCb haH hfp hsp hgr rfl) fun Γ q m g v h => ⟨WD, NWw.toNat, hN, by rw [hM], h⟩

include hPl

theorem ph_wd {PL C H WR RH BH : BitVec 64} (hPE : PlE a PL) {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV (phKvB PL H WR RH BH)) (EB a.p0 PL C H WR RH BH)) phWd
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) := by
  unfold phWd
  refine pp_dec ha.hH (L1 := fun m => ∃ NWw : BitVec 64, NWw.toNat < 2 ^ 32 ∧
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
  rintro s hs ⟨⟨NWw, hN, hM, hL⟩, Γ, q, he, hh, hE⟩ hg
  exact ph_wd2 ha haC hCb haH hfp hsp hgr hWd hN hM s hs ⟨hL, Γ, q, he, hh, hE⟩ hg

/-- **The middle**: the size check, the transaction root, and on to the withdrawals. -/
theorem ph_mid {PL C H TXR WR RH BH : BitVec 64} (hPE : PlE a PL) {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV ((nm "txr", Wv TXR) :: phKvB PL H WR RH BH))
        (fun Γ q m g => EB a.p0 PL C H WR RH BH Γ q m g ∧ Trie.FBlk a.p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat)) phMid
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hTS := Helpers.tagSlots_guestC
  have hAG := Annot.drv_allocG
  have hT := Aw.domBelow_guestCtx
  have hBrl := Aw.awSpec_block_rlp_length (σ := σ) (C := Types.guestC) (H := Hooks.guestHooksR (σ := σ)) hX hF.hH hTS hAG
    (Aw.awSpec_encode_header hX hF.hal hT hF.hH hTS hAG
      (Aw.awSpec_rlp_put_u256 hX hF.hal hT hF.hH hTS hAG Ra.toBeMin_C))
  have hBmi : SumSpecA σ guestCtx a.Cb a.H (nm "build_mpt_indexed") Trie.bmiSig Trie.BmiPre
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ Γ _ _ Γ' => Γ' = Γ) := by
    rw [hCb, haH]
    exact sumSpecA_mono Trie.sumSpecA_build_mpt_indexed (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim)
      (fun _ _ _ _ _ _ h => h)
  unfold phMid
  refine pp_decCallAW ha haC hCb haH hfp hsp hgr hBrl (by simp) (funSpec_true _)
    (L1 := fun _ => Trie.LV ((nm "txr", Wv TXR) :: phKvB PL H WR RH BH))
    (E1 := fun _ Γ q m g => EB a.p0 PL C H WR RH BH Γ q m g ∧ Trie.FBlk a.p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat)
    (L2 := fun _ => False) (fun _ _ _ _ h => h.1.i.2.1) (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_
    (fun s st v hL _ => Trie.lv_set (s := { st with locals := s.locals }) hL (by apply ivFresh_of; simp only [phKvB, List.map_cons, List.map_nil]; decide) v)
    ?_ (fun _ _ _ h => h.elim)
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hh hh' hext hnf hmo hB' hmod hPost hLc _
    have hord := heap_ord hh
    exact ⟨Γ', ext_refl _, hh', eb_step hord (heap_ord hh') (Ra.layout_heap haC hh') hext hnf hmo
      (fun x hni x1 x2 _ => keep_of_aw hord (Ra.layout_heap haC hh) hmod hni x1 x2) hE.1,
      Trie.fblk_persist hE.2.1 hord.2.1 hnf hmo, hE.2.2⟩
  intro _
  refine pp_seq pp_iteRaise ?_
  refine pp_seq (pp_call ha hBmi (funSpec_true _) (by simp [Trie.bmiSig]) (fun _ => hgr)
    (E' := EB a.p0 PL C H WR RH BH) ?_ ?_) ?_
  · intro s Γ q _ hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    have hmemP : (nm "pl", Wv PL) ∈ (nm "txr", Wv TXR) :: phKvB PL H WR RH BH := by simp [phKvB]
    have e1 := iv_load hL hmemP h1
    have e2 := iv_load hL hmemP h2
    rw [Trie.lv_ev hL (x := nm "txr") (v := Wv TXR) (by simp)] at h3
    cases h3
    subst e1 e2
    obtain ⟨o, ho, hb, ht⟩ := hE.1.i.1
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
      have := hh.1
      rwa [haC, haH] at this
    obtain ⟨hIv, -, -⟩ := hPl Γ s o hG ho ht
    rw [txF_eq hb 4, txF_eq hb 5] at hIv
    have hLy := Ra.layout_heap haC hh
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub hE.2.1 (off := 0) (n := 32) (by omega) (by omega)
    refine ⟨Ra.ao_aab _ _ TXR (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun callee => ⟨_, _, TXR, rfl, q, hh.2.1, fun j hj => ?_⟩⟩
    rw [ivMul168 j, ivMul16 j]
    obtain ⟨o1, ho1, ht1, l1, l2⟩ := sla_obj hIv.1 hj (d := 0) (by omega)
    obtain ⟨o2, ho2, ht2, l3, l4⟩ := sla_obj hIv.1 hj (d := 8) (by omega)
    rw [Nat.add_zero] at l1 l2
    exact ⟨⟨Trie.alloc_of_obj hLy ho1 l1 l2, Trie.notInKept hLy ho1 (by rw [ht1]; decide) l1 l2⟩,
      ⟨Trie.alloc_of_obj hLy ho2 l3 l4, Trie.notInKept hLy ho2 (by rw [ht2]; decide) l3 l4⟩, Or.inr (hIv.2 _ hj)⟩
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    subst hQ
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    rw [Trie.lv_ev hL (x := nm "txr") (v := Wv TXR) (by simp)] at h3
    cases h3
    refine eb_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (newFresh_refl _ _ _) hmo
      (fun x hni x1 x2 hout => keep_of_mod haC hCb hh hmd hni x1 x2 fun hac => ?_) hE.1
    obtain ⟨o1, o2⟩ := ovl_in (Ra.ac_aab hac) hE.2.1.1
    have := hE.2.2
    omega
  refine hoareG_pre (ph_wd ha haC hCb haH hfp hsp hgr hPl hWd hPE) fun s _ ⟨hL, Γ, q, he, hh, hE⟩ =>
    ⟨Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ hp, Γ, q, he, hh, hE⟩

end body

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.eb_step
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_wdAlloc
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_wd
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_mid
