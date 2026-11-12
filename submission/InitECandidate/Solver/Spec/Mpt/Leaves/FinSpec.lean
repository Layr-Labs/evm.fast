import InitECandidate.Solver.Spec.Mpt.Leaves.FinSecond

/-!
# `FinishSpec`: `_node_rlp_finish` writes only cache cells, keccak cells and fresh memory

`finishSpec : FinishSpec σ X` under `AlignedDom X`, `DomTop X` and `NullSafe X`.

The buffer `buf = alloc(hl + payload)` starts at the entry `heap_ptr` (`alloc_ret_hp`; an empty
block, `hl + payload ≡ 0`, would otherwise be unconstrained) and `alloc` leaves
`buf + ((hl + payload) mod 2^64) ≤ heap_ptr`. The second pass ends with a ghost offset
`off < 2^63` (every good write ends below `2^63`) and `off ≡ hl + payload`, so
`off = (hl + payload) mod 2^64`: the encoding lies in the allocated block (`fin_tail`). The cells
written are `node + 8`, `node + 16` (`fin_tail`), the hash cells `c + 24` of the children and the
keccak cells (`node_write_ref`), and fresh heap.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword gHeap)

/-- The return post of `FinishSpec`. -/
def FinPost (s0 : State σ) (p : Ptrs) (ND : BitVec 64) (t : State σ) : Prop :=
  AllocKeep s0 t p ∧ ∀ a, t.memory a ≠ s0.memory a → CacheW s0.memory ND a ∨ KBuf s0 a ∨
    Unlive p a.toNat

theorem ofNat_inj_lt {a b : Nat} (ha : a < 2 ^ 64) (hb : b < 2 ^ 64)
    (h : BitVec.ofNat 64 a = BitVec.ofNat 64 b) : a = b := by
  have := congrArg BitVec.toNat h
  rwa [BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha, Nat.mod_eq_of_lt hb] at this

/-! ## `st node + 8, buf; st node + 16, off; return 0` -/

theorem fin_tail {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop}
    {FR ND PL CB CL ks kp BUF HL : BitVec 64} (hX : FinCtx s0 p p1 Nd ND ks kp BUF)
    (hsz : BUF.toNat + (HL + PL).toNat ≤ p1.hp) :
    Hoare σ X (fun t => ∃ off, S2 s0 p1 p.hp FR ND (rd s0.memory ND) PL CB CL
        HL BUF (WB s0.memory ND ks kp) off 0 t ∧ BitVec.ofNat 64 off = HL + PL) finTail
      (fun r t => ∀ v, r = some (.returned v) → FinPost s0 p ND t) := by
  refine hoare_exists fun off => ?_
  let TS : State σ → Prop := fun t => ∃ t0 : State σ, (S2 s0 p1 p.hp FR ND (rd s0.memory ND) PL
      CB CL HL BUF (WB s0.memory ND ks kp) off 0 t0 ∧ BitVec.ofNat 64 off = HL + PL) ∧
    t.locals = t0.locals ∧ t.globals = t0.globals ∧
    ∀ a, t.memory a ≠ t0.memory a → a = ND + BitVec.ofNat 64 8 ∨ a = ND + BitVec.ofNat 64 16
  unfold finTail
  refine hoare_seq (R := fun r t => r = none ∧ TS t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store fun t _ hP w v mem hw hv hmem => ?_
    rw [ev_add_cw hP.1.fl.node 8] at hw
    cases hw
    rw [ev_lw hP.1.bufv] at hv
    cases hv
    obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
    refine ⟨rfl, t, hP, rfl, rfl, fun a ha => Or.inl ?_⟩
    by_contra hne
    exact ha (Spec.Inv.upd_ne hne)
  refine hoare_seq (R := fun r t => r = none ∧ TS t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store fun t _ ⟨_, t0, h0, hl, hg, hm⟩ w v mem hw hv hmem => ?_
    rw [ev_add_cw (by rw [hl]; exact h0.1.fl.node) 16] at hw
    cases hw
    rw [ev_lw (by rw [hl]; exact h0.1.offv)] at hv
    cases hv
    obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
    refine ⟨rfl, t0, h0, hl, hg, fun a ha => ?_⟩
    by_cases e : a = ND + BitVec.ofNat 64 16
    · exact Or.inr e
    · rw [show ({ t with memory := Spec.Inv.upd t.memory (ND + BitVec.ofNat 64 16) _ } : State σ).memory a
        = t.memory a from Spec.Inv.upd_ne e] at ha
      exact hm a ha
  refine hoare_return fun t _ ⟨_, t0, ⟨h, hoff⟩, hl, hg, hm⟩ v _ w _ => ?_
  obtain ⟨hgl, p', hp', ho', hle', hw⟩ := h.af
  have hb := h.bnd
  have hoffE : off = (HL + PL).toNat := by
    rw [← hoff, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have hpt : ptrsOf (emptyLocalsHOLFinite t) = some p' := by
    show ptrsOf t = _; rw [ptrsOf_frame hg]; exact hp'
  have hgl' : ∀ g, g ≠ gHeap → t.globals.lookup g = s0.globals.lookup g := fun g hgn => by
    rw [hg]; exact hgl g hgn
  have hord := hX.ord
  have hle1 := hX.le1
  refine ⟨⟨p', hpt, ho', by omega, ?_, ?_, ?_⟩, fun a ha => ?_⟩
  · exact ptrs_sp_eq hX.hp hpt (hgl' _ (by decide))
  · unfold gword; rw [show (emptyLocalsHOLFinite t).globals = t.globals from rfl,
      hgl' _ (by decide)]
  · unfold gword; rw [show (emptyLocalsHOLFinite t).globals = t.globals from rfl,
      hgl' _ (by decide)]
  · by_cases e8 : a = ND + BitVec.ofNat 64 8
    · exact Or.inl (Or.inl e8)
    by_cases e16 : a = ND + BitVec.ofNat 64 16
    · exact Or.inl (Or.inr (Or.inl e16))
    have ht0 : t.memory a = t0.memory a := by
      by_contra hne
      rcases hm a hne with h1 | h1
      · exact e8 h1
      · exact e16 h1
    have ha' : t0.memory a ≠ s0.memory a := by rw [← ht0]; exact ha
    rcases hw a ha' with ⟨h1, h2 | h2⟩ | (h2 | h2)
    · refine Or.inr (Or.inr ⟨fun h => by omega, fun h => ?_⟩)
      have := ho'.2.1
      have := hord.2.2.1
      have := hord.2.2.2.1
      omega
    · refine Or.inr (Or.inr ⟨fun h => by omega, fun h => ?_⟩)
      have := ho'.2.1
      have := hord.2.2.1
      have := hord.2.2.2.1
      omega
    · exact Or.inl (Or.inr (Or.inr h2))
    · exact Or.inr (Or.inl (kIn_kbuf hX.kok h2))

/-! ## The second pass, from the header -/

theorem fin_second (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) {s0 : State σ} {p : Ptrs} {Nd : BitVec 64 → Prop}
    {FR ND PL0 CB CL ks kp : BitVec 64}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) (htrie : TrieOK s0 Nd p.hp) (hNd : Nd ND)
    (hrk : RecKind (rd s0.memory ND)) (hK : KOK s0 ks kp)
    (hRC3 : rd s0.memory ND = 3 → PL0 = 0)
    (hRC2 : rd s0.memory ND = 2 → PL0 = encLen (ld8W s0 CB) CL)
    (hRC1 : rd s0.memory ND = 1 → PL0 = encLen (ld8W s0 CB) CL +
      valLen (ld8W s0 (rd s0.memory (ND + 48))) (rd s0.memory (ND + 56)))
    (hCB : rd s0.memory ND ≠ 3 → (panByteAlignHOL CB).toNat < p.hp) :
    Hoare σ X (fun t => FP1 s0 FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL t) finSecond
      (fun r t => ∀ v, r = some (.returned v) → FinPost s0 p ND t) := by
  set K := rd s0.memory ND with hK'
  set PL := pl1 s0 ND PL0 with hPL
  set hlN := MemSafe.Helpers.hdrLen PL.toNat with hhlN
  have hHL' : hdrLen PL = BitVec.ofNat 64 hlN := hdrLen_eq PL
  let QF : Option (PanSemResultExact 64) → State σ → Prop := fun r t => ∀ v, r = some (.returned v) →
    FinPost s0 p ND t
  unfold finSecond
  -- `var hl = rlp_list_header_len(payload)`
  refine hoare_decCallS ((ret_rlp_list_header_len hC).and (Spec.Inv.funSpec_be _))
    fun t _ hP vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
  obtain ⟨u, rfl, hu⟩ := evs_one_inv hvs
  rw [ev_lw hP.1.payload] at hu
  cases hu
  obtain ⟨hg1, hm1, rfl⟩ := hR v rfl PL rfl
  refine hoare_conseq (Q := QF) ?_ (fun _ _ h => h) fun r t' _ _ h => h
  set t1 := setVarHOLFinite (nm "hl") (.val (.word (hdrLen PL))) { st with locals := t.locals }
    with ht1
  have h1m : t1.memory = s0.memory := hm1.trans hP.2.1
  have h1g : t1.globals = s0.globals := hg1.trans hP.2.2.1
  have h1b : t1.be = s0.be := hbe.trans hP.2.2.2
  have h1L : FL FR ND K PL CB CL t1.locals := fL_upd hP.1 fLN_hl _
  have h1hl : t1.locals.lookup (nm "hl") = some (.val (.word (hdrLen PL))) := lk_set_self _ _ _
  -- `var buf = alloc(hl + payload)`
  refine hoare_decCallS (((MemSafe.allocSpec_alloc hC).and (alloc_ret_hp hC)).and
    (Spec.Inv.funSpec_be _)) fun t2 _ ht2 vs2 hvs2 callee2 v2 st2 ⟨⟨hR2, hR2'⟩, hbe2⟩ _ _ => ?_
  subst ht2
  obtain ⟨u2, rfl, hu2⟩ := evs_one_inv hvs2
  rw [ev_add2 (ev_lw h1hl) (ev_lw h1L.payload)] at hu2
  cases hu2
  have hpt1 : ptrsOf (callEntryStateHOLFinite t1 callee2) = some p := by
    show ptrsOf t1 = _; rw [ptrsOf_frame h1g]; exact hp
  obtain ⟨hm2, hg2, p1, hp1, ho1, hmono, hq⟩ := hR2 (by simp [Good]) _ p rfl hpt1 hord
  obtain ⟨q, rfl, hq8, ⟨hq1, hq2⟩, -⟩ := hq _ rfl
  obtain ⟨q', hq', hqp⟩ := hR2' _ rfl p hpt1
  cases hq'
  have hX : FinCtx s0 p p1 Nd ND ks kp q := ⟨hp, hord, htrie, hNd, hK, hqp, hmono.1⟩
  refine hoare_conseq (Q := QF) ?_ (fun _ _ h => h) fun r t' _ _ h => h
  set t3 := setVarHOLFinite (nm "buf") (.val (.word q)) { st2 with locals := t1.locals } with ht3
  have h3m : t3.memory = s0.memory := hm2.trans h1m
  have h3g : ∀ g, g ≠ gHeap → t3.globals.lookup g = s0.globals.lookup g := fun g hgn => by
    show st2.globals.lookup g = _; rw [hg2 g hgn]; show t1.globals.lookup g = _; rw [h1g]
  have h3p : ptrsOf t3 = some p1 := hp1
  have h3b : t3.be = s0.be := hbe2.trans h1b
  have h3L : FL FR ND K PL CB CL t3.locals := fL_upd h1L fLN_buf _
  have h3hl : t3.locals.lookup (nm "hl") = some (.val (.word (hdrLen PL))) := by
    rw [lk_set_ne _ _ (by decide)]; exact h1hl
  have h3buf : t3.locals.lookup (nm "buf") = some (.val (.word q)) := lk_set_self _ _ _
  -- `rlp_encode_list_header(buf, payload)`
  refine hoare_seq (R := fun r u => r = none ∧ u.locals = t3.locals ∧ u.globals = t3.globals ∧
      u.be = s0.be ∧ q.toNat + hlN < 2 ^ 63 ∧
      ∀ a, u.memory a ≠ s0.memory a → Overlap q.toNat hlN a) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD ((ret_rlp_encode_list_header hC hT).and (Spec.Inv.funSpec_be _))
      fun u _ hu vs3 hvs3 callee3 v3 st3 ⟨hR3, hbe3⟩ _ => ?_
    subst hu
    rw [evs_cons (ev_lw h3buf) (evs_cons (ev_lw h3L.payload) evs_nil)] at hvs3
    cases hvs3
    obtain ⟨hg3, hm3, -, hb3⟩ := hR3 v3 rfl q PL rfl
    refine ⟨rfl, rfl, hg3, hbe3.trans h3b, hb3, fun a ha => ?_⟩
    by_contra hn
    exact ha ((hm3 a hn).trans (congrFun h3m a))
  -- `var off = hl`
  refine hoare_dec fun u _ ⟨_, hul, hug, hube, hub, hum⟩ v hv _ => ?_
  rw [ev_lw (by rw [hul]; exact h3hl)] at hv
  cases hv
  refine hoare_conseq (Q := QF) ?_ (fun _ _ h => h) fun r t' _ _ h => h
  have hS2 : S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False) hlN 0
      (setVarHOLFinite (nm "off") (.val (.word (hdrLen PL))) u) := by
    refine ⟨fL_upd (by rw [hul]; exact h3L) fLN_off _, ?_, ?_, ?_, by omega, ?_, hube⟩
    · rw [lk_set_ne _ _ (by decide), hul]; exact h3hl
    · rw [lk_set_ne _ _ (by decide), hul]; exact h3buf
    · rw [lk_set_self, hHL']
    · refine ⟨fun g hgn => ?_, p1, ?_, ho1, le_rfl, fun a ha => ?_⟩
      · show u.globals.lookup g = _; rw [hug]; exact h3g g hgn
      · show ptrsOf u = _; rw [ptrsOf_frame hug]; exact h3p
      · have := ovl_ge hX.hp8 (by rw [hqp]) (hum a ha)
        rw [hqp] at this
        exact Or.inl ⟨this.1, Or.inr (by rw [hqp]; omega)⟩
  refine hoare_pre (P := fun u' => S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False)
    hlN 0 u') ?_ fun u' _ hu' => by subst hu'; exact hS2
  refine hoare_seq (R := fun r u => r = none ∧ ∃ off, S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q
      (WB s0.memory ND ks kp) off 0 u ∧ BitVec.ofNat 64 off = hdrLen PL + PL) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (fin_tail hX hq2) fun _ _ h => h.2)
  refine hoare_ite ?_ ?_
  · refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False)
      hlN 0 u ∧ K ≠ 3) ?_ fun u _ ⟨h, w, hw, hw0⟩ =>
        ⟨h, notEqual_true (cmp_val_true hw hw0 (ev_lw h.fl.k) (ev_cw _ 3))⟩
    exact hoare_pure fun hK3 => fin_non3 hC hA hT hNS hX hK3 hrk hRC2 hRC1 (hCB hK3)
  · refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False)
      hlN 0 u ∧ K = 3) ?_ fun u _ ⟨h, hc⟩ =>
        ⟨h, notEqual_false (cmp_val_false hc (ev_lw h.fl.k) (ev_cw _ 3))⟩
    exact hoare_pure fun hK3 => fin_br hC hA hT hNS hX hK3 (hRC3 hK3)

/-! ## `FinishSpec` -/

/-- **`FinishSpec`**: `_node_rlp_finish(fr, nd)` keeps the allocator facts and writes only the
cache cells of `nd` and its children, keccak cells and cells unallocated at entry. -/
theorem finishSpec (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) : FinishSpec σ X := by
  intro vs body callee rs hl s0 hs hloc r hr v hv FR ND p hvs hp hord ⟨Nd, htrie, hNd, hrk⟩ hRC hCB
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA0, hB0⟩ := lookupCode_two code_node_rlp_finish (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hfr0 : s0.locals.lookup (nm "fr") = some (.val (.word FR)) := by rw [hloc]; exact hA0
  have hnd0 : s0.locals.lookup (nm "node") = some (.val (.word ND)) := by rw [hloc]; exact hB0
  have hE := heapEnd_lt'
  have hpE := hord.2.1
  obtain ⟨ks, kp, k1, k2, k3, k4, -, k6, -, k8, -⟩ := htrie.2.2.1
  have hK : KOK s0 ks kp := ⟨k1, k2, k3, k4, by omega, by omega⟩
  obtain ⟨hRC3, hRC2, hRC1⟩ := hRC
  let QF : Option (PanSemResultExact 64) → State σ → Prop := fun r t => ∀ v, r = some (.returned v) →
    FinPost s0 p ND t
  have H : Hoare σ X (fun t => t = s0) finBody QF := by
    unfold finBody
    refine hoare_decL (fun _ _ _ h => h) fun s1 _ hs1 v1 hv1 _ => ?_
    subst s1
    obtain rfl := ev_ldN hnd0 hv1
    rw [rd_add0]
    refine hoare_decL (fun _ _ _ h => h) fun s2 _ hs2 v2 hv2 _ => ?_
    subst hs2
    obtain ⟨w2, hw2, -, rfl⟩ := ev_load1_inv' hv2
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide)]; exact hfr0) 40] at hw2
    cases hw2
    refine hoare_decL (fun _ _ _ h => h) fun s3 _ hs3 v3 hv3 _ => ?_
    subst hs3
    obtain ⟨w3, hw3, -, rfl⟩ := ev_load1_inv' hv3
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hfr0) 24]
      at hw3
    cases hw3
    refine hoare_decL (fun _ _ _ h => h) fun s4 _ hs4 v4 hv4 _ => ?_
    subst hs4
    obtain ⟨w4, hw4, -, rfl⟩ := ev_load1_inv' hv4
    rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact hfr0) 32] at hw4
    cases hw4
    refine hoare_pre (fin_first hC (s0 := s0) (FR := FR) (ND := ND)
      (PL0 := rd s0.memory (FR + BitVec.ofNat 64 40)) (CB := rd s0.memory (FR + BitVec.ofNat 64 24))
      (CL := rd s0.memory (FR + BitVec.ofNat 64 32))
      (fin_second hC hA hT hNS hp hord htrie hNd hrk hK hRC3 hRC2 hRC1
      fun h3 => (hCB h3).2)) fun t _ ht => ?_
    subst ht
    refine ⟨⟨?_, ?_, ?_, ?_, ?_, ?_⟩, rfl, rfl, rfl⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]; exact hfr0
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]; exact hnd0
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · exact lk_set_self _ _ _
  have := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

end InitECandidate.Solver.Spec.Mpt.Leaves
