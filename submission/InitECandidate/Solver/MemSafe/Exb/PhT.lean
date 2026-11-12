import InitECandidate.Solver.MemSafe.Exb.PhDefs

/-!
# `payload_header`, the tail: `build_mpt_indexed(wd_rlp_slices, nwd, wr)`, the requests hash, the access-list hash, `return h`

`EC`: the header `H` and the buffers `WR`, `RH`, `BH` are fresh blocks in address order, below the array `WD`; the header's coinbase cell holds `C`; the global holds `WD`;
the first `k` array entries are slices in `tVAL` objects. `ec_step`: across a call that adds no object and changes no cell of the header or the array.
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

def wdG : MlS := nm "wd_rlp_slices"

structure EC (p0 : Ptrs) (PL C H WR RH BH WD : BitVec 64) (NW k : Nat) (Γ : Gam) (q : Ptrs) (m : Mem) (g : LocalsH) : Prop where
  i : PhI PL C Γ q
  fH : Trie.FBlk p0 H 248 Γ q
  fW : Trie.FBlk p0 WR 32 Γ q
  fR : Trie.FBlk p0 RH 32 Γ q
  fB : Trie.FBlk p0 BH 32 Γ q
  fD : Trie.FBlk p0 WD (NW * 16 + 16) Γ q
  oW : H.toNat + 248 ≤ WR.toNat
  oR : H.toNat + 248 ≤ RH.toNat
  oB : H.toNat + 248 ≤ BH.toNat
  dW : WR.toNat + 32 ≤ WD.toNat
  dR : RH.toNat + 32 ≤ WD.toNat
  dB : BH.toNat + 32 ≤ WD.toNat
  ck : rd m (H + BitVec.ofNat 64 24) = C
  gl : g.lookup wdG = some (Wv WD)
  wc : ∀ j, j < k → SlObj Γ (rd m (WD + BitVec.ofNat 64 (16 * j))) (rd m (WD + BitVec.ofNat 64 (16 * j + 8)))

theorem ofNat_add_toNat {H : BitVec 64} {d : Nat} (h : H.toNat + d < 2 ^ 64) :
    (H + BitVec.ofNat 64 d).toNat = H.toNat + d := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := d) (by omega)]
  exact Nat.mod_eq_of_lt h

/-- A cell of a fresh block: location and freshness. -/
theorem fblk_cell {p0 q : Ptrs} {B : BitVec 64} {sz d : Nat} {Γ : Gam} (hq : q.Ordered) (h : Trie.FBlk p0 B sz Γ q)
    (hd : d < sz) : (B + BitVec.ofNat 64 d).toNat = B.toNat + d ∧ ¬ InObj Γ (B + BitVec.ofNat 64 d).toNat ∧
      heapBase ≤ (B + BitVec.ofNat 64 d).toNat ∧ (B + BitVec.ofNat 64 d).toNat < q.hp := by
  obtain ⟨-, -, hb, hq', hc⟩ := h
  have hqe := hq.2.1
  have he : heapEnd < 2 ^ 63 := by decide
  have e := ofNat_add_toNat (H := B) (d := d) (by omega)
  refine ⟨e, ?_, by omega, by omega⟩
  rw [e]
  exact (hc _ (by omega) (by omega)).1

theorem ec_step {p0 : Ptrs} {PL C H WR RH BH WD : BitVec 64} {NW k : Nat} {Γ Γ' : Gam} {q q' : Ptrs} {m m' : Mem}
    {g g' : LocalsH} (hord : q.Ordered) (hord' : q'.Ordered) (hL' : Layout Types.guestC q' Γ') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' q q) (hmo : q.Mono q') (hg : g'.lookup wdG = g.lookup wdG) (hkN : k ≤ NW)
    (hkeep : ∀ x : BitVec 64, ¬ InObj Γ x.toNat → heapBase ≤ x.toNat → x.toNat < q.hp →
      (x.toNat < H.toNat + 248 ∨ WD.toNat ≤ x.toNat) → m' x = m x)
    (h : EC p0 PL C H WR RH BH WD NW k Γ q m g) : EC p0 PL C H WR RH BH WD NW k Γ' q' m' g' := by
  have hqe := hord.2.1
  have keepD : ∀ d, d < NW * 16 + 16 → m' (WD + BitVec.ofNat 64 d) = m (WD + BitVec.ofNat 64 d) := by
    intro d hd
    obtain ⟨e, h1, h2, h3⟩ := fblk_cell hord h.fD hd
    exact hkeep _ h1 h2 h3 (Or.inr (by omega))
  refine ⟨phI_step hord' hL' hext hnf hmo h.i, Trie.fblk_persist h.fH hqe hnf hmo, Trie.fblk_persist h.fW hqe hnf hmo,
    Trie.fblk_persist h.fR hqe hnf hmo, Trie.fblk_persist h.fB hqe hnf hmo, Trie.fblk_persist h.fD hqe hnf hmo,
    h.oW, h.oR, h.oB, h.dW, h.dR, h.dB, ?_, by rw [hg]; exact h.gl, fun j hj => ?_⟩
  · rw [← h.ck]
    obtain ⟨e, h1, h2, h3⟩ := fblk_cell (d := 24) hord h.fH (by omega)
    exact Hooks.rd_congr (hkeep _ h1 h2 h3 (Or.inl (by omega)))
  · have e1 := keepD (16 * j) (by omega)
    have e2 := keepD (16 * j + 8) (by omega)
    rw [Hooks.rd_congr e1, Hooks.rd_congr e2]
    exact slObj_ext hext (h.wc j hj)

/-- The cells a summarised call with buffer arguments `[lo, hi)` leaves alone. -/
theorem keep_of_mod {a : Act σ} (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ : Gam} {q : Ptrs} {s st : State σ} (hh : Heap a Γ q s) (hmd : Trie.Mod a sg' [] vs Γ q s st) {x : BitVec 64}
    (hni : ¬ InObj Γ x.toNat) (h1 : heapBase ≤ x.toNat) (h2 : x.toNat < q.hp) (ha : ¬ ArgCells sg'.params vs x) :
    st.memory x = s.memory x := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have e : q = p1 := Option.some.inj (hh.2.1.symm.trans hp1)
  subst e
  refine hmd x ?_ ha ?_ (Or.inl ⟨h1, h2⟩)
  · rintro ⟨o, ho, k, hk, -, hc⟩
    exact hni (hc ▸ cell_in hord hL ho hk)
  · rintro ⟨-, c, hc, -⟩
    cases hc

/-- The cells an above-writer call leaves alone. -/
theorem keep_of_aw {Γ : Gam} {q : Ptrs} {m m' : Mem} (hord : q.Ordered) (hL : Layout Types.guestC q Γ)
    (hmod : ModifiesOnly (AwFoot Types.guestC Γ q) m m') {x : BitVec 64} (hni : ¬ InObj Γ x.toNat)
    (h1 : heapBase ≤ x.toNat) (h2 : x.toNat < q.hp) : m' x = m x := by
  refine hmod x ?_
  rintro (h | h | h)
  · omega
  · obtain ⟨o, ho, k, hk, -, hc⟩ := h
    exact hni (hc ▸ cell_in hord hL ho hk)
  · exact h (Or.inl ⟨h1, h2⟩)

/-- An overlap with an aligned block lies inside it. -/
theorem ovl_in {B : BitVec 64} {n : Nat} {x : BitVec 64} (h : Overlap B.toNat n x) (h8 : B.toNat % 8 = 0) :
    B.toNat ≤ x.toNat ∧ x.toNat < B.toNat + n := by
  obtain ⟨h1, h2, h3⟩ := h
  constructor <;> omega

theorem inObj_of_kept {Γ : Gam} {x : Nat} (h : InObj (Trie.kept Γ) x) : InObj Γ x := by
  obtain ⟨o, ho, h1, h2⟩ := h
  exact ⟨o, (Trie.mem_kept.mp ho).1, h1, h2⟩

def phKvT (H WR RH BH NWw : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "h", Wv H), (nm "wr", Wv WR), (nm "rh", Wv RH), (nm "bh", Wv BH), (nm "nwd", Wv NWw)]

macro "ph_fresh" : tactic =>
  `(tactic| (apply ivFresh_of; simp only [phKvT, List.map_cons, List.map_nil]; decide))

/-- The result of the body. -/
def PhR (p0 : Ptrs) (PL C H WR RH BH WD : BitVec 64) (NW : Nat) (Γ : Gam) (q : Ptrs) (m : Mem) (g : LocalsH)
    (v : ValueHOL 64) : Prop :=
  v = Wv H ∧ EC p0 PL C H WR RH BH WD NW NW Γ q m g

theorem ph_tail {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgr : a.sg.grows = true) {PL C H WR RH BH WD NWw : BitVec 64} {NW : Nat} (hNW : NWw.toNat = NW)
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV (phKvT H WR RH BH NWw)) (EC a.p0 PL C H WR RH BH WD NW NW)) phTail
      (PP a L2 E2 (PhR a.p0 PL C H WR RH BH WD NW)) := by
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
  refine pp_seq (pp_call ha hBmi hgwT (by simp [Trie.bmiSig]) (fun _ => hgr)
    (E' := EC a.p0 PL C H WR RH BH WD NW NW) ?_ ?_) ?_
  · intro s Γ q _ hL hh hE vs hvs
    have e1 : ev s (gv (nm "wd_rlp_slices")) = some (Wv WD) := hE.gl
    rw [evs_cons e1 (evs_cons (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp [phKvT]))
      (evs_cons (Trie.lv_ev hL (x := nm "wr") (v := Wv WR) (by simp [phKvT])) evs_nil))] at hvs
    cases hvs
    have hord := heap_ord hh
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub hE.fW (off := 0) (n := 32) (by omega) (by omega)
    refine ⟨Ra.ao_aab _ _ WR (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun callee => ⟨WD, NWw, WR, rfl, q, hh.2.1, fun j hj => ?_⟩⟩
    rw [hNW] at hj
    rw [ivMul168 j, ivMul16 j]
    obtain ⟨-, n1, n2, n3⟩ := fblk_cell (d := 16 * j.toNat) hord hE.fD (by omega)
    obtain ⟨-, m1, m2, m3⟩ := fblk_cell (d := 16 * j.toNat + 8) hord hE.fD (by omega)
    exact ⟨⟨Or.inl ⟨n2, n3⟩, fun h => n1 (inObj_of_kept h)⟩, ⟨Or.inl ⟨m2, m3⟩, fun h => m1 (inObj_of_kept h)⟩,
      Or.inr (hE.wc _ hj)⟩
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
  refine pp_decCallAW ha haC hCb haH hfp hsp hgr hEer (by simp) hgwE
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
  refine pp_seq (pp_call ha hCrh hgwC (by simp [crhSig]) (fun h => by simp [crhSig] at h)
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
  refine pp_seq (pp_call ha hK hgwK (by simp) (fun h => by simp at h)
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
  refine pp_ret ha.hH fun s Γ q _ hL _ _ hE v' hv' => ⟨?_, hE.1⟩
  rw [Trie.lv_ev hL (x := nm "h") (v := Wv H) (by simp [phKvT])] at hv'
  cases hv'
  rfl

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.ec_step
#print axioms InitECandidate.Solver.MemSafe.Exb.keep_of_mod
#print axioms InitECandidate.Solver.MemSafe.Exb.keep_of_aw
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_tail
