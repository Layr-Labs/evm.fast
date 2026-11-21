import InitECandidate.Solver.MemSafe.Rec.TxRecFirst

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Rec

open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-- A nonempty array of transaction slices begins after the transaction record. -/
def SlicesAfterRecord (Ar A cnt : BitVec 64) : Prop :=
  0 < cnt.toNat → Ar.toNat + 400 ≤ A.toNat

/-- Extend the existing decoder invariant by a pure relation between the two allocations. -/
def ET2WithSliceOrder (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (b27 b35 : Bool) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  withP (SlicesAfterRecord Ar A cnt) (ET2 a Ar A cnt Pt Nt b27 b35)

theorem et2WithSliceOrder_store (a : Act σ) {Ar A cnt Pt Nt : BitVec 64} (b27 b35 : Bool) :
    StoreKeep Ar (ET2WithSliceOrder a Ar A cnt Pt Nt b27 b35) :=
  storeKeep_withP (SlicesAfterRecord Ar A cnt) (et2_store a b27 b35)

theorem et2WithSliceOrder_call {a : Act σ} (hCb : a.Cb = Types.guestC)
    {Ar A cnt Pt Nt : BitVec 64} (b27 b35 : Bool) :
    CallKeep a Ar (ET2WithSliceOrder a Ar A cnt Pt Nt b27 b35) :=
  callKeep_withP (SlicesAfterRecord Ar A cnt) (et2_call hCb b27 b35)

/-- The last eight-byte cell in a live transaction record is below `heap_ptr`. -/
theorem tx_record_end_le_heap {Ar : BitVec 64} {Γ : Gam} {q : Ptrs}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (ordered : q.Ordered) (record : BlkF Ar 400 Γ q) : Ar.toNat + 400 ≤ q.hp := by
  have limit := heapEnd_lt64
  have address := tnl Ar 392 (by omega)
  have allocated := (record _ (blkcell hAr (k := 49) (by decide))).2
  change q.Allocated (Ar + BitVec.ofNat 64 392).toNat at allocated
  rw [address] at allocated
  obtain ⟨_, _, frame, _, _, aligned, _, _⟩ := ordered
  rcases allocated with h | h | h <;> omega

/-- At the slice call, its fresh return address follows the live transaction record. -/
theorem slices_after_record_of_fresh_call {Ar A cnt : BitVec 64} {Γ : Gam} {q : Ptrs}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (ordered : q.Ordered) (record : BlkF Ar 400 Γ q)
    (fresh : 0 < cnt.toNat → q.hp ≤ A.toNat) : SlicesAfterRecord Ar A cnt :=
  fun positive => (tx_record_end_le_heap hAr ordered record).trans (fresh positive)

/-- The decoder's successful field-count check requires at least nine 16-byte slices. -/
theorem txrNfOf_min {tt : Nat} (htt : tt ≤ 4) : 9 ≤ txrNfOf tt := by
  interval_cases tt <;> decide

/-- The final decoder invariant retains both allocations. They occupy at least 544 bytes
    above the heap pointer at decoder entry. -/
theorem tx_record_and_slices_growth {a : Act σ} {Ar A cnt Pt Nt : BitVec 64}
    {Γ : Gam} {q : Ptrs} {mem : Mem} {tt : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (ordered : q.Ordered) (htt : tt ≤ 4)
    (count : cnt.toNat = txrNfOf tt)
    (fresh : ∀ x : BitVec 64, Overlap Ar.toNat 400 x → ¬ a.p0.Allocated x.toNat)
    (slices : EAr a Ar A cnt Pt Nt Γ q mem) (after : SlicesAfterRecord Ar A cnt) :
    a.p0.hp + 544 ≤ q.hp := by
  have first : a.p0.hp ≤ Ar.toNat := by
    by_contra! earlier
    exact fresh Ar ⟨hAr.1, by omega, by omega⟩ (Or.inl ⟨hAb, earlier⟩)
  have enough : 9 ≤ cnt.toNat := count ▸ txrNfOf_min htt
  have after' := after (by omega)
  obtain ⟨frozen, _, _, _, lastBound, _, _⟩ := slices
  let last := A.toNat + 16 * cnt.toNat - 1
  have limit := heapEnd_lt64
  have address : (BitVec.ofNat 64 last).toNat = last := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by dsimp [last]; omega)]
  have allocated := (frozen (BitVec.ofNat 64 last) (by rw [address]; dsimp [last]; omega)
    (by rw [address]; dsimp [last]; omega)).2
  rw [address] at allocated
  obtain ⟨_, _, frame, _, _, _, _, _⟩ := ordered
  dsimp [last] at allocated
  rcases allocated with h | h | h <;> omega

theorem tx_record_and_slices_growth_of_inv {a : Act σ} {Ar A cnt Pt Nt : BitVec 64}
    {L : LocalsH → Prop} {t : State σ} {tt : Nat} {b27 b35 : Bool}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (htt : tt ≤ 4) (count : cnt.toNat = txrNfOf tt)
    (invariant : DI a Ar 400 L (ET2WithSliceOrder a Ar A cnt Pt Nt b27 b35) t) :
    ∃ q, ptrsOf t = some q ∧ a.p0.hp + 544 ≤ q.hp := by
  obtain ⟨_, Γ, q, _, heap, _, fresh, ⟨⟨_, slices⟩, after⟩⟩ := invariant
  exact ⟨q, heap.2.1, tx_record_and_slices_growth hAr hAb (heap_ord heap) htt count fresh slices after⟩

/-- The actual decoder return adopts the `tTX` and retains the 544-byte heap increase. -/
theorem txr_ret_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt s : Nat) (b27 b35 : Bool)
    (htt : tt ≤ 4) (count : cnt.toNat = txrNfOf tt)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2WithSliceOrder a Ar A cnt Pt Nt b27 b35)) (.return (lv (nm "tx")))
      (NQM a Rv) := by
  have hMono : HooksMono a.C a.H := by rw [hcs.hCC, hcs.hH]; exact Hooks.guestHooksR_mono
  refine hoareG_return fun t hs' ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ v hv => ?_
  rw [ev_lw (bl_tx hL)] at hv
  cases hv
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  have hreg : (a.C.ty Types.tTX).region = .heap := by rw [hcs.hCC]; exact Hooks.tx_heap
  have hprot : ∀ k, (a.C.ty Types.tTX).slot k = .prot := by rw [hcs.hCC]; exact Hooks.tx_prot
  have hnt : a.C.tags.lookup Types.tTX = none := by
    rw [hcs.hCC]; exact Types.recIds_untagged Types.tTX (by simp)
  have hmin : (a.C.ty Types.tTX).minSz ≤ 400 := by
    rw [hcs.hCC]; exact Types.recIds_minSz.1
  obtain ⟨⟨⟨hT, -, -⟩, hEA⟩, after⟩ := hE
  have grown := tx_record_and_slices_growth hAr hAb (heap_ord hh) htt count hn hEA after
  obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono he hh (Ar := Ar) (n := 400) (ty := Types.tTX)
    hreg hprot hnt (by norm_num) (by norm_num) hmin ⟨hAb, hAr.2⟩ hAr.1 hB hn hgr
    (fun hLn => by
      rw [hcs.hH]
      exact Hooks.wf_of_txW rfl (List.mem_append_right _ (List.mem_singleton_self _))
        (Hooks.gamOK_of_layout (by rw [hcs.hCC] at hLn; exact hLn))
        (txw_of_tf hAr (Struct.ext_snoc Γ _) hT))
  refine ⟨_, q, hExt, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh2, fun v' hv' => ?_⟩
  cases hv'
  exact hRv _ q _ Ar ⟨_, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
    hEA.2.2.2.2.2.2 grown

/-- The actual decoder tail carries the heap bound through its final calls and stores. -/
theorem txr_fin_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (count : cnt.toNat = txrNfOf tt)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 10) (ET2WithSliceOrder a Ar A cnt Pt Nt false false)) txrFin (NQM a Rv) := by
  unfold txrFin
  have hU : ∀ args : List (ExpHOL 64), args.length = 3 → ∀ s,
      HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2WithSliceOrder a Ar A cnt Pt Nt false false)) (txrU args)
        (DQ a Ar 400 (BLs Ar A tt s) (ET2WithSliceOrder a Ar A cnt Pt Nt false false)) :=
    fun args hl s => txr_cv ha hAr (et2WithSliceOrder_call hcs.hCb false false) hcs.u256 (by simp [txfSig])
      (by simp [txfSig, hl]) (by simp [txfSig]) (by simp [txfSig])
  have hSt : ∀ f, f + 4 ≤ 50 → (∀ g ∈ txFacts, g < f ∨ f + 4 ≤ g) → ∀ s,
      HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2WithSliceOrder a Ar A cnt Pt Nt false false)) (txrSt (8 * f) (lv (nm "v")))
        (DQ a Ar 400 (BLs Ar A tt s) (ET2WithSliceOrder a Ar A cnt Pt Nt false false)) :=
    fun f h1 h2 s => txr_stv ha hAr (et2WithSliceOrder_store a false false) f h1 h2
  exact hoareG_seqDIM (hU _ rfl 10) (hoareG_seqDIM (hSt 36 (by norm_num) (by decide) 10)
    (hoareG_seqDIM (hU _ rfl 10) (hoareG_seqDIM (hSt 40 (by norm_num) (by decide) 10)
      (hoareG_seqDIM (hU _ rfl 10) (hoareG_seqDIM (hSt 44 (by norm_num) (by decide) 10)
        (txr_ret_grows_by_544 ha hcs hgr hAr hAb tt 10 false false htt count hRv))))))

/-- The slice call and field-count guard establish the strengthened decoder invariant. -/
theorem txr_Lst_withSliceOrder {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a)
    {Ar Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4)
    (hPN : heapBase ≤ Pt.toNat ∧ Pt.toNat + Nt.toNat ≤ a.p0.hp)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (finish : ∀ (A c : BitVec 64), c.toNat = txrNfOf tt →
      HoareG σ X (DI a Ar 400 (txrLB Ar A tt) (ET2WithSliceOrder a Ar A c Pt Nt true true))
        txrV (NQM a Rv)) :
    HoareG σ X (DI a Ar 400 (txrL1 Ar tt Pt Nt) (EZ Ar)) txrLst (NQM a Rv) := by
  have hse := heapEnd_lt64
  unfold txrLst
  have hps : ∀ pt ∈ rlsSig.params, pt = .any := by simp [rlsSig]
  refine hoareG_decCallDIM ha hcs.rls (freshFoot_rlp_list_to_slices_tile hcs.hC) hps (by simp [rlsSig])
    (by simp [rlsSig])
    (L' := fun v m => ∃ A c : BitVec 64, (txrL1 Ar tt Pt Nt m ∧ m.lookup (nm "lst") = some v) ∧
      v = .rStruct [Wd A, Wd c])
    (E' := fun v Γ q mem g => EZ Ar Γ q mem g ∧ ∀ A c : BitVec 64,
      v = .rStruct [Wd A, Wd c] → EAr a Ar A c Pt Nt Γ q mem ∧ SlicesAfterRecord Ar A c) ?_ ?_ ?_ ?_
  · intro s' hs hL vs hvs
    rw [evs_len2 hvs]; simp [rlsSig]
  · intro s' st v hL hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    exact ⟨x, y, ⟨txrL1_set (s := ({ st with locals := s'.locals } : State σ))
      ⟨by decide, by decide, by decide, by decide⟩ _ hL, lk_set_self _ _ _⟩, rfl⟩
  · intro s' st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    obtain ⟨hl1, a', d', htop⟩ := hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w htop rfl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w htop rfl) evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh)
      ⟨Pt, Nt, rfl, hPN.1, q, hpe, by omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨h0, h1, hrest⟩ := hQ x y rfl
    obtain ⟨hsin, hcn, -, -⟩ := hrest Pt Nt rfl
    have hqo := (heap_ord co.heap).2.1
    have hEZ := ez_call hcs.hCb hAr rlsSig [Wd Pt, Wd Nt] Γ Γ' q p' s' st s'.globals st.globals
        (coa_of_co co _) (fun x hx => argCells_any hps hx) hB hE
    refine ⟨Γ', p', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, hEZ, ?_⟩
    · intro A c hv
      simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
        HolWordLab.word.injEq, and_true] at hv
      obtain ⟨rfl, rfl⟩ := hv
      have after := slices_after_record_of_fresh_call (cnt := y) hAr (heap_ord hh) hB h0
      refine ⟨⟨fzB_arr co.heap0 co.heap (co.nfp rfl) (fun hn => h0 (by omega)) h1, hsin, hPN.1, hPN.2,
        by omega, ?_, Or.inl hEZ.2, fun j hj => ?_⟩, after⟩
      swap
      · rw [hEZ.1.2.1 rfl] at hj
        exact absurd hj (by simp)
      intro z hz ⟨hz1, hz2⟩
      have hal := (hB z hz).2
      have hpos : 0 < y.toNat := by omega
      have hq := h0 hpos
      unfold Ptrs.Allocated at hal
      obtain ⟨hz8, hz3, hz4⟩ := hz
      have hord := heap_ord hh
      obtain ⟨o1, o2, o3, o4, o5, -, -, -⟩ := hord
      obtain ⟨hAr1, hAr2⟩ := hAr
      unfold heapBase heapEnd scratchEnd at *
      omega
  · intro v
    refine txrExL (fun A => txrExL (fun c => ?_))
    refine hoareG_exP (fun hv => ?_)
    subst hv
    have hnf : txrNfOf tt ≤ 14 := by interval_cases tt <;> simp [txrNfOf]
    refine hoareG_decDIM ha.hH (L' := fun m => ((txrL1 Ar tt Pt Nt m ∧
      m.lookup (nm "lst") = some (.rStruct [Wd A, Wd c])) ∧ m.lookup (nm "arr") = some (Wd A))) ?_ ?_
    · intro s hs hL v' hv'
      rw [Spec.Mpt.Dec.ev_rfield_w hL.2 rfl] at hv'
      cases hv'
      refine ⟨⟨txrL1_set (s := s) ⟨by decide, by decide, by decide, by decide⟩ _ hL.1, ?_⟩,
        lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide : nm "arr" ≠ nm "lst")]; exact hL.2
    · refine hoareG_seqDIM (hoareG_guardDL ha.hH
        (L' := fun m => ((txrL1 Ar tt Pt Nt m ∧ m.lookup (nm "lst") = some (.rStruct [Wd A, Wd c])) ∧
          m.lookup (nm "arr") = some (Wd A)) ∧ c = BitVec.ofNat 64 (txrNfOf tt)) ?_) ?_
      · intro s hs hL hc
        obtain ⟨⟨⟨h1, a', d', htop⟩, hlst⟩, harr⟩ := hL
        have hnfl := h1 (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt))) (by simp)
        rw [ev_cmp (Spec.Mpt.Dec.ev_rfield_w hlst rfl) (ev_lw hnfl)] at hc
        have hc' : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual c (BitVec.ofNat 64 (txrNfOf tt)) = false := by
          by_contra hne
          have : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual c (BitVec.ofNat 64 (txrNfOf tt)) = true := by
            simpa using hne
          rw [if_pos this] at hc
          simp at hc
        exact ⟨⟨⟨⟨h1, a', d', htop⟩, hlst⟩, harr⟩, ne_false hc'⟩
      · refine hoareG_exP (fun hceq => ?_)
        have hcnt : c.toNat = txrNfOf tt := by
          rw [hceq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
        refine txrDiE (E2 := ET2WithSliceOrder a Ar A c Pt Nt true true) (fun Γ q mem g ⟨hz, hE⟩ => ?_)
          (hoareG_diL (finish A c hcnt) ?_)
        · obtain ⟨slices, after⟩ := hE A c rfl
          exact ⟨⟨hz.1, slices⟩, after⟩
        rintro m ⟨⟨⟨h1, -⟩, -⟩, harr⟩
        intro q hq
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
        rcases hq with rfl | rfl | rfl | rfl
        · exact h1 (nm "tx", Wd Ar) (by simp)
        · exact harr
        · exact h1 (nm "t", Wd (BitVec.ofNat 64 tt)) (by simp)
        · exact h1 (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt))) (by simp)

private theorem txr_tail_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt)
    (after : SlicesAfterRecord Ar A cnt) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 7) (ET2 a Ar A cnt Pt Nt true true))
      (.seq txrAcc (.seq txrBlob (.seq txrAuth txrFin))) (NQM a Rv) :=
  hoareG_seqDIM (txr_acc ha hcs hgr hAr tt htt hcnt)
    (hoareG_seqDIM (txr_blob ha hcs hgr hAr tt htt hcnt)
      (hoareG_seqDIM (txr_auth ha hcs hgr hAr tt htt hcnt) (txrDiE (fun _ _ _ _ h => ⟨h, after⟩)
        (txr_fin_grows_by_544 ha hcs hgr hAr hAb tt htt hcnt hRv))))

private theorem txr_nonce_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt)
    (after : SlicesAfterRecord Ar A cnt) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 1) (ET2 a Ar A cnt Pt Nt true true)) txrNonce (NQM a Rv) := by
  have hS := et2_store a (Ar := Ar) (A := A) (cnt := cnt) (Pt := Pt) (Nt := Nt) true true
  have hC := et2_call (Ar := Ar) (A := A) (cnt := cnt) (Pt := Pt) (Nt := Nt) hcs.hCb true true
  unfold txrNonce txrMid
  refine hoareG_seqDIM (txr_nonce_ite ha hcs hAr hS hC tt htt 1) (hoareG_seqDIM
    (txr_stv ha hAr hS 2 (by norm_num) (by decide)) (hoareG_seqDIM (txr_kinc_s ha tt 1 2 1 (by simp [txrKst]))
    (hoareG_seqDIM (txr_price ha hcs hAr hS hC tt htt) ?_)))
  refine hoareG_seqDIM (txr_cw ha hAr hC hcs.word (by simp [txwSig]) (by simp [txwSig])
    (by simp [txwSig]) (by simp [txwSig])) (hoareG_seqDIM (txr_stw ha hAr hS 18 (by norm_num) (by decide))
    (hoareG_seqDIM (txr_kinc_s ha tt 3 4 1 (by simp [txrKst]))
    (hoareG_seqDIM (txr_toC ha hcs hAr tt htt hcnt) (hoareG_seqDIM (hoareG_dqL (txr_stTO ha hAr) (fun m hm => hm.1))
    (hoareG_seqDIM (txr_kinc_s ha tt 4 5 1 (by simp [txrKst]))
    (hoareG_seqDIM (txr_cv ha hAr hC hcs.u256 (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig]))
    (hoareG_seqDIM (txr_stv ha hAr hS 20 (by norm_num) (by decide))
    (hoareG_seqDIM (txr_kinc_s ha tt 5 6 1 (by simp [txrKst]))
      (txr_data ha hcs hAr tt htt hcnt (txr_tail_grows_by_544 ha hcs hgr hAr hAb tt htt hcnt after hRv))))))))))

private theorem txr_V_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt)
    (after : SlicesAfterRecord Ar A cnt) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (txrLB Ar A tt) (ET2 a Ar A cnt Pt Nt true true)) txrV (NQM a Rv) := by
  unfold txrV
  refine hoareG_decDIM ha.hH (L' := fun m => txrLB Ar A tt m ∧ m.lookup (nm "k") = some (Wd (BitVec.ofNat 64 0))) ?_ ?_
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨?_, lk_set_self _ _ _⟩
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "tx")]; exact hL (nm "tx", Wd Ar) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "arr")]; exact hL (nm "arr", Wd A) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "t")]; exact hL (nm "t", _) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "nfields")]; exact hL (nm "nfields", _) (by simp)
  refine hoareG_decDIM ha.hH (L' := BLws Ar A tt 0) ?_ ?_
  · intro s hs ⟨hL, hk⟩ v hv
    rw [ev_cw] at hv
    cases hv
    have e : txrKst 0 tt = 0 := by simp [txrKst]
    unfold BLws; rw [e]
    refine ⟨?_, BitVec.ofNat 64 0, lk_set_self _ _ _⟩
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "tx")]; exact hL (nm "tx", Wd Ar) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "arr")]; exact hL (nm "arr", Wd A) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "t")]; exact hL (nm "t", _) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "nfields")]; exact hL (nm "nfields", _) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "k")]; exact hk
  refine hoareG_seqDIM (txr_chain_w ha hcs hAr (et2_store a true true) (et2_call hcs.hCb true true) tt htt) ?_
  refine hoareG_decDIM ha.hH (L' := BLs Ar A tt 1) ?_ (txr_nonce_grows_by_544 ha hcs hgr hAr hAb tt htt hcnt after hRv)
  intro s hs ⟨hL, W, hW⟩ v hv
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  rw [evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hvs
  cases hvs
  refine ⟨?_, ⟨W, ?_⟩, ⟨BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
    lk_set_self _ _ _⟩⟩
  · refine lv_set hL (bl_kv_ne ⟨by decide, by decide, by decide, by decide, by decide⟩) _
  · rw [lk_set_ne _ _ (by decide)]; exact hW

/-- The actual slice decode and every succeeding field operation preserve the 544-byte increase. -/
theorem txr_Lst_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4)
    (hPN : heapBase ≤ Pt.toNat ∧ Pt.toNat + Nt.toNat ≤ a.p0.hp)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem →
      a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (txrL1 Ar tt Pt Nt) (EZ Ar)) txrLst (NQM a Rv) := by
  refine txr_Lst_withSliceOrder ha hcs hAr hAb tt htt hPN ?_
  intro A cnt count t hs invariant hgood
  have after : SlicesAfterRecord Ar A cnt := by
    obtain ⟨_, _, _, _, _, _, _, _, relation⟩ := invariant
    exact relation
  exact txr_V_grows_by_544 ha hcs hgr hAr hAb tt htt count after hRv t hs
    (di_mono (fun _ h => h) (fun _ _ _ _ h => h.1) invariant) hgood

private theorem txr_FB_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar P N B0 : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)
    (hN0 : N.toNat ≠ 0) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx P N mem → a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar)) txrFirst (NQM a Rv) := by
  unfold txrFirst
  refine hoareG_seqDIM (txr_FB1 ha hcs hAr hPN hN0) ?_
  refine txrExL (fun tt => txrExL (fun Pt => txrExL (fun Nt => ?_)))
  refine hoareG_exP (fun ⟨htt, hP1, hP2, hE1, hE2⟩ => ?_)
  refine hoareG_seqDIM (txr_stL2 ha (fun m hm => hm.1 (nm "tx", Wd Ar) (by simp)) hAr
    (ez_store (Ar := Ar)) 0 1 (by norm_num) (by norm_num) (by decide) ?_) ?_
  · intro s hs hL v hv
    unfold txrT at hv
    rw [ev_lw (hL.1 (nm "t", Wd (BitVec.ofNat 64 tt)) (by simp))] at hv
    cases hv; simp [flattenHOL]
  refine hoareG_seqDIM (hoareG_guardDI ha.hH) ?_
  exact txr_Lst_grows_by_544 ha hcs hgr hAr hAb tt htt ⟨hP1, hP2⟩
    (fun Γ' p' mem tx ho hK growth => hRv Γ' p' mem tx ho (txk_widen hE1 hE2 hK) growth)

/-- The full `decode_transaction_rlp` body increases the persistent heap by at least
    544 bytes on a normal return. -/
theorem txr_entry_grows_by_544 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {P N : BitVec 64} (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx P N mem →
      a.p0.hp + 544 ≤ p'.hp → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a 0 0 (LV [(nm "p", Wd P), (nm "len", Wd N)]) (fun _ _ _ _ => True)) txrBody
      (NQM a Rv) :=
  txr_entry ha hcs hPN (fun _ _ aligned base stop nonempty =>
    txr_FB_grows_by_544 ha hcs hgr ⟨aligned, stop⟩ base hPN nonempty hRv)

#print axioms slices_after_record_of_fresh_call
#print axioms tx_record_and_slices_growth_of_inv
#print axioms txr_ret_grows_by_544
#print axioms txr_fin_grows_by_544
#print axioms txr_entry_grows_by_544

end InitECandidate.Solver.MemSafe.Rec
