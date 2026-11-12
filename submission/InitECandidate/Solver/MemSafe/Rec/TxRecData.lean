import InitECandidate.Solver.MemSafe.Rec.TxRecAuth

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the stages gas, to, value and the data field

`txr_to` (the `to` field: `tx_fixed_bytes` / `tx_to_item`), `txr_data` (`tx_bytes_item` located; `DATA_N < 2^28`;
the rest of the function `hrest` is a hypothesis).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

variable {σ : Type} {X : Ctx 64}

/-- stage 4 -> 4 (`w` set): the `to` field -/
theorem txr_to {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hC : CallKeep a Ar E) (tt : Nat) (htt : tt ≤ 4) (s : Nat) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt s) E)
      (.ite (.cmp .notLower txrT (cw 3)) (txrW "tx_fixed_bytes" [txrArr, lv (nm "k"), cw 20])
        (txrW "tx_to_item" [txrArr, lv (nm "k")])) (DQ a Ar 400 (BLs Ar A tt s) E) := by
  by_cases h3 : 3 ≤ tt
  · refine hoareG_iteT (w0 := 1) (by decide)
      (fun s' hs hD => cond_true .notLower 3 hD.1 (by rw [(txrCmpT tt htt).2.2.2.1]; simpa using h3)) ?_
    exact txr_cw ha hAr hC hcs.fixed (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig])
      (by simp [txfSig])
  · refine hoareG_iteF
      (fun s' hs hD => cond_false .notLower 3 hD.1 (by rw [(txrCmpT tt htt).2.2.2.1]; simpa using h3)) ?_
    exact txr_cw ha hAr hC hcs.toit (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
      (by simp [rlsSig])

def DataFact (v : ValueHOL 64) : Prop :=
  ∀ b c : BitVec 64, v = .rStruct [Wd b, Wd c] → c.toNat < 2 ^ 28

theorem st_cnt_data {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt s : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {v : ValueHOL 64} :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "data") (nm "data") v v)
        (withP (DataFact v) (ET2 a Ar A cnt Pt Nt true true)))
      (txrSt 200 (.rfield 1 (lv (nm "data"))))
      (DQ a Ar 400 (Lr2 Ar A tt s (nm "data") (nm "data") v v) (ET2 a Ar A cnt Pt Nt true true)) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 200)] at hw
    cases hw
    exact ⟨25, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    exact ⟨c, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB ⟨hE, hD⟩
    obtain ⟨r, c, hvrc, hl⟩ := lr2_shape hL
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 200)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 200) (b := 8 * j) (by omega) (by omega) hw
    have hj25 : j = 25 := by omega
    subst hj25
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    have hx28 : x.toNat < 2 ^ 28 := by rw [← hx]; exact hD r c hvrc
    have h25 := tf_set25 hmod hrd hx28 hAr hB hT
    exact et2_upd (a := a) (g := s'.globals) (b27' := true) (b35' := true) 25 (by norm_num) hmod
      h25.1 h25.2 (fun _ => ⟨rfl, by norm_num⟩) (fun _ => ⟨rfl, by norm_num⟩) hAr hB (Or.inl (by decide))
      ⟨⟨hT, h27, h35⟩, hEA⟩

/-- stage 6 -> 7 and the rest -/
theorem txr_data {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hrest : HoareG σ X (DI a Ar 400 (BLs Ar A tt 7) (ET2 a Ar A cnt Pt Nt true true))
      (.seq txrAcc (.seq txrBlob (.seq txrAuth txrFin))) (NQM a Rv)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 6) (ET2 a Ar A cnt Pt Nt true true)) txrData (NQM a Rv) := by
  unfold txrData
  have hI : txrKst 6 tt < cnt.toNat := by
    rw [hcnt]; interval_cases tt <;> simp [txrKst, txrNfOf]
  have hps : ∀ pt ∈ rlsSig.params, pt = .any := by simp [rlsSig]
  refine hoareG_decCallDIM ha hcs.bitem (funSpec_tx_bytes_item hcs.hC) hps (by simp [rlsSig])
    (by simp [rlsSig]) (L' := fun v => Lr2 Ar A tt 6 (nm "data") (nm "data") v v)
    (E' := fun v => withP (DataFact v) (ET2 a Ar A cnt Pt Nt true true)) ?_ ?_ ?_ ?_
  · intro s' hs hL vs hvs
    rw [evs_len2 hvs]; simp [rlsSig]
  · intro s' st v hL hsh
    obtain ⟨r, c, rfl⟩ := rstruct_of_shape hsh
    refine ⟨⟨bl_set (s := ({ st with locals := s'.locals } : State σ)) (by decide) _ hL, ?_⟩,
      lk_set_self _ _ _, r, c, rfl⟩
    exact lk_set_self _ _ _
  · intro s' st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨b, c, rfl⟩ := rstruct_of_shape hsh
    unfold txrArr at hvs
    rw [evs_cons (ev_lw (bl_arr hL)) (evs_cons (ev_lw (bl_k hL)) evs_nil)] at hvs
    cases hvs
    obtain ⟨hz, hfz, hsin, hP, hN, hA, hdj⟩ := hE
    have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some q := hh.2.1
    have hso : SlotOut s'.memory A (BitVec.ofNat 64 (txrKst 6 tt)) b c :=
      hLc _ rfl q hpe (heap_ord hh) trivial A (BitVec.ofNat 64 (txrKst 6 tt)) b c rfl rfl
    have h4 := ha.hord0.2.1
    unfold heapEnd at h4
    obtain ⟨hl1, hl2, hl3⟩ := slot_loc hsin hI (by unfold heapEnd; omega) hso
    refine ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ?_⟩
    refine ⟨et2_call hcs.hCb true true hAr rlsSig [Wd A, Wd (BitVec.ofNat 64 (txrKst 6 tt))] Γ Γ' q q' s' st s'.globals st.globals
      (coa_of_co co _) (fun x hx => argCells_any hps hx) hB ⟨hz, hfz, hsin, hP, hN, hA, hdj⟩, ?_⟩
    intro b' c' hv
    obtain ⟨-, h2⟩ := lr2_eq rfl hv
    subst h2
    unfold heapBase heapEnd at *
    omega
  · intro v
    refine hoareG_seqDIM (txr_stL ha (fun m hm => hm.1.1) hAr
      (storeKeep_withP _ (et2_store a true true)) 192 1 (by norm_num) (by norm_num) (by decide) ?_)
      (hoareG_seqDIM (st_cnt_data ha hAr) (hoareG_seqDIM (kinc_r2 ha (s' := 7) (c := 1) ?_ (by decide) (by decide))
        (hoareG_diL hrest (fun m hm => hm.1.1))))
    · intro s' hs hL v' hv'
      obtain ⟨r, c, -, hl⟩ := lr2_shape hL
      rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
      cases hv'
      simp [flattenHOL]
    · simp [txrKst]

/-! ## The located `to` field -/

/-- `hoareG_callALH` whose locals update also sees the client predicate. -/
theorem hoareG_callALE {a : Act σ} (ha : ActOK a X) {w f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {L L' : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    (hL : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ : Gam) (q : Ptrs),
      L s.locals → evs s args = some vs → Heap a Γ q s → E Γ q s.memory s.globals →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      isValidValueHOLExact s.toExact .local w v = true → L' (setVarHOLFinite w v s).locals)
    (hE : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COutA a sg' vs Γ Γ' q q' s st →
      isValidValueHOLExact s.toExact .local w v = true → E' Γ' q' st.memory st.globals) :
    HoareG σ X (DI a Ar n L E) (.call (some (some (.local, w), none)) f args) (DQ a Ar n L' E') := by
  refine hoareG_callA ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL0, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hval
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMA ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    refine ⟨fun _ => ⟨hL s st vs callee v Γ p hL0 hvs hh hEs hLc' hval, Γ', q', ext_trans he he', ?_,
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
    · exact heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local w v { st with locals := s.locals })
        rfl rfl rfl rfl hh'
    · exact hE s st vs callee v Γ Γ' p q' hs hL0 hvs hLc' he hh hB hn hEs
        ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hval
  · intro s hs ⟨hL0, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMA ha hh hR (abn_good' habn) hna hA
      (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- The locals after the `to` call: `w` is 0 or 20 bytes inside `[Pt, Pt + Nt)`. -/
def TOw (Ar A : BitVec 64) (tt : Nat) (Pt Nt : BitVec 64) (m : LocalsH) : Prop :=
  BLs Ar A tt 4 m ∧ ∃ W : BitVec 64, m.lookup (nm "w") = some (Wd W) ∧ (W = 0 ∨ LocIn Pt Nt W 20)

/-- stage 4 (`w` set): the `to` field, located -/
theorem txr_toC {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A cnt Pt Nt : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat) (htt : tt ≤ 4)
    (hcnt : cnt.toNat = txrNfOf tt) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 4) (ET2 a Ar A cnt Pt Nt true true))
      (.ite (.cmp .notLower txrT (cw 3)) (txrW "tx_fixed_bytes" [txrArr, lv (nm "k"), cw 20])
        (txrW "tx_to_item" [txrArr, lv (nm "k")]))
      (DQ a Ar 400 (TOw Ar A tt Pt Nt) (ET2 a Ar A cnt Pt Nt true true)) := by
  have hC := et2_call (Ar := Ar) (A := A) (cnt := cnt) (Pt := Pt) (Nt := Nt) hcs.hCb true true
  have hI : txrKst 4 tt < cnt.toNat := by
    rw [hcnt]; interval_cases tt <;> simp [txrKst, txrNfOf]
  have h4 := ha.hord0.2.1
  unfold heapEnd at h4
  by_cases h3 : 3 ≤ tt
  · refine hoareG_iteT (w0 := 1) (by decide)
      (fun s' hs hD => cond_true .notLower 3 hD.1 (by rw [(txrCmpT tt htt).2.2.2.1]; simpa using h3)) ?_
    unfold txrW
    refine hoareG_callALE ha hcs.fixed (funSpec_tx_fixed_bytes hcs.hC) (by simp [txfSig])
      (by simp [txfSig, txrArr]) (by simp [txfSig]) (by simp [txfSig]) ?_ ?_
    · intro s st vs callee v Γ q hL hvs hh hE hLc hval
      obtain ⟨W, hW⟩ := bl_w hL
      obtain ⟨w', rfl⟩ := valid_wordL hW hval
      unfold txrArr at hvs
      rw [evs_cons (ev_lw (bl_arr hL)) (evs_cons (ev_lw (bl_k hL)) (evs_cons (ev_cw _ 20) evs_nil))] at hvs
      cases hvs
      have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
      have hso := hLc _ rfl q hpe (heap_ord hh) trivial A (BitVec.ofNat 64 (txrKst 4 tt))
        (BitVec.ofNat 64 20) w' rfl rfl
      obtain ⟨hz, hfz, hsin, hP, hN, hA, hdj, hK⟩ := hE
      obtain ⟨hl1, hl2, -⟩ := slot_loc hsin hI (by unfold heapEnd; omega) hso
      refine ⟨bl_setw w' hL, w', lk_set_self _ _ _, Or.inr ⟨hl1, ?_⟩⟩
      have e20 : (BitVec.ofNat 64 20).toNat = 20 := by norm_num
      omega
    · intro s st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hEs co hval
      exact hC hAr txfSig vs Γ Γ' q q' s st s.globals st.globals co
        (fun x hx => argCells_any (by simp [txfSig]) hx) hB hEs
  · refine hoareG_iteF
      (fun s' hs hD => cond_false .notLower 3 hD.1 (by rw [(txrCmpT tt htt).2.2.2.1]; simpa using h3)) ?_
    unfold txrW
    refine hoareG_callALE ha hcs.toit (funSpec_tx_to_item hcs.hC) (by simp [rlsSig])
      (by simp [rlsSig, txrArr]) (by simp [rlsSig]) (by simp [rlsSig]) ?_ ?_
    · intro s st vs callee v Γ q hL hvs hh hE hLc hval
      obtain ⟨W, hW⟩ := bl_w hL
      obtain ⟨w', rfl⟩ := valid_wordL hW hval
      unfold txrArr at hvs
      rw [evs_cons (ev_lw (bl_arr hL)) (evs_cons (ev_lw (bl_k hL)) evs_nil)] at hvs
      cases hvs
      have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
      have hso := hLc _ rfl q hpe (heap_ord hh) trivial A (BitVec.ofNat 64 (txrKst 4 tt)) w' rfl rfl
      refine ⟨bl_setw w' hL, w', lk_set_self _ _ _, ?_⟩
      rcases hso with h0 | hso
      · exact Or.inl h0
      · obtain ⟨hz, hfz, hsin, hP, hN, hA, hdj, hK⟩ := hE
        obtain ⟨hl1, hl2, -⟩ := slot_loc hsin hI (by unfold heapEnd; omega) hso
        refine Or.inr ⟨hl1, ?_⟩
        have e20 : (20 : BitVec 64).toNat = 20 := rfl
        omega
    · intro s st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hEs co hval
      exact hC hAr rlsSig vs Γ Γ' q q' s st s.globals st.globals co
        (fun x hx => argCells_any (by simp [rlsSig]) hx) hB hEs

/-- `st tx + TX_TO, w`: the stored `to` is located. -/
theorem txr_stTO {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) :
    HoareG σ X (DI a Ar 400 (TOw Ar A tt Pt Nt) (ET2 a Ar A cnt Pt Nt true true)) (txrSt 152 (lv (nm "w")))
      (DQ a Ar 400 (TOw Ar A tt Pt Nt) (ET2 a Ar A cnt Pt Nt true true)) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1)) (ev_cw _ 152)] at hw
    cases hw
    exact ⟨19, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨W, hW, -⟩ := hL.2
    rw [ev_lw hW] at hv'
    cases hv'
    exact ⟨W, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB hE
    rw [ev_add2 (ev_lw (bl_tx hL.1)) (ev_cw _ 152)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 152) (b := 8 * j) (by omega) (by omega) hw
    have hj19 : j = 19 := by omega
    subst hj19
    obtain ⟨W, hW, hloc⟩ := hL.2
    rw [ev_lw hW] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    have ho : ∀ f, f ≠ 19 → f ≤ 50 → cl Ar mem f = cl Ar s'.memory f := fun f hf hf50 => by
      unfold cl
      refine rd_congr (hmod _ ?_)
      intro e
      have := ofN_inj Ar (a := 8 * f) (b := 8 * 19) (by omega) (by omega) e
      omega
    have hTF : TF Ar Γ mem := by
      obtain ⟨h25, h33, hP, h35', hA⟩ := hT
      unfold TF
      rw [ho 25 (by norm_num) (by norm_num), ho 26 (by norm_num) (by norm_num),
        ho 27 (by norm_num) (by norm_num), ho 33 (by norm_num) (by norm_num),
        ho 34 (by norm_num) (by norm_num), ho 35 (by norm_num) (by norm_num)]
      exact ⟨h25, h33, pk_store (R := fun y => y = Ar + BitVec.ofNat 64 (8 * 19)) (fun y hy => hmod y hy)
        (fun y hy => by rw [hy]; exact blkcell hAr (by norm_num)) hB hP, h35', hA⟩
    refine et2_upd (a := a) (g := s'.globals) (b27' := true) (b35' := true) 19 (by norm_num) hmod hTF ho
      (fun _ => ⟨rfl, by norm_num⟩) (fun _ => ⟨rfl, by norm_num⟩) hAr hB (Or.inr (Or.inr ⟨?_, ?_⟩))
      ⟨⟨hT, h27, h35⟩, hEA⟩
    · have e19 : cl Ar mem 19 = W := by unfold cl; rw [hrd, hx]
      rw [e19]
      exact hloc
    · intro j hj
      rw [ho 27 (by norm_num) (by norm_num), h27 rfl] at hj
      exact absurd hj (by simp)

end InitECandidate.Solver.MemSafe.Rec
