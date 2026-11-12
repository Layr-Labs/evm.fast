import InitECandidate.Solver.MemSafe.Rec.TxRecAcc

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the blob-hashes block (stage 8 -> 9)

```
if t == 3 {
  v = tx_scalar_u256(arr, k, 32);  st tx + 224, v;
  var {1,1} bl = tx_list_item(arr, k + 1);
  var {1,1} bh = decode_blob_hashes(bl.0, bl.1);
  st tx + 256, bh.0;  st tx + 264, bh.1;  k = k + 2;
}
```
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

/-- `txr_st` with a general locals predicate. -/
theorem txr_stL {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64} {L : LocalsH → Prop}
    (hLb : ∀ m, L m → txrBL Ar A T NF K m)
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (off len : Nat) (hoff : off % 8 = 0) (hle : off + 8 * len ≤ 400)
    (hfn : ∀ f ∈ txFacts, f < off / 8 ∨ off / 8 + len ≤ f) {e : ExpHOL 64}
    (he : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → (flattenHOL v).length = len) :
    HoareG σ X (DI a Ar 400 L E) (txrSt off e) (DQ a Ar 400 L E) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDINE ha (by omega) ?_ ?_
  · intro s hs hL w v hw hv
    rw [ev_add2 (ev_lw (bl_tx (hLb _ hL))) (ev_cw _ off)] at hw
    cases hw
    have hl := he s hs hL v hv
    refine ⟨off / 8, by omega, ?_⟩
    rw [show 8 * (off / 8) = off by omega]
  · intro s Γ q v j mem hs hL hv hj hw hmod hB hEs
    have hl := he s hs hL v hv
    rw [ev_add2 (ev_lw (bl_tx (hLb _ hL))) (ev_cw _ off)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := off) (b := 8 * j) (by omega) (by omega) hw
    have hj8 : j = off / 8 := by omega
    rw [hl] at hmod
    exact hS hAr Γ q s.memory mem s.globals j len (by omega) (by rw [hj8]; exact hfn) hmod hB hEs

theorem kinc_r2 {a : Act σ} (ha : ActOK a X) {Ar A : BitVec 64} {tt s s' c : Nat} {nal nrn : MlS}
    {vAl v : ValueHOL 64} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (h : txrKst s' tt = txrKst s tt + c) (h1 : nm "k" ≠ nal) (h2 : nm "k" ≠ nrn) :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s nal nrn vAl v) E) (txrK c)
      (DQ a Ar 400 (Lr2 Ar A tt s' nal nrn vAl v) E) := by
  unfold txrK
  refine hoareG_assignDI ha.hH ?_
  intro s0 hs hL v0 hv0
  obtain ⟨⟨hbl, hal⟩, hacc, hsh⟩ := hL
  rw [ev_add2 (ev_lw (bl_k hbl)) (ev_cw _ c)] at hv0
  cases hv0
  have hb := bl_setk (s := s0) (BitVec.ofNat 64 (txrKst s tt) + BitVec.ofNat 64 c) hbl
  refine ⟨⟨?_, ?_⟩, ?_, hsh⟩
  · unfold BLs; rw [h, ← BitVec.ofNat_add_ofNat]; exact hb
  · rw [lk_set_ne _ _ h1]; exact hal
  · rw [lk_set_ne _ _ h2]; exact hacc

def BhFact (v : ValueHOL 64) : Prop :=
  ∀ buf cnt : BitVec 64, v = .rStruct [Wd buf, Wd cnt] → cnt.toNat < 2 ^ 28

theorem st_cnt_bh {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt s : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {vBl v : ValueHOL 64} :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "bl") (nm "bh") vBl v)
        (withP (BhFact v) (withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true))))
      (txrSt 264 (.rfield 1 (lv (nm "bh"))))
      (DQ a Ar 400 (Lr2 Ar A tt s (nm "bl") (nm "bh") vBl v)
        (withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true))) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 264)] at hw
    cases hw
    exact ⟨33, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    exact ⟨c, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB ⟨⟨hE, hAl⟩, hBh⟩
    obtain ⟨r, c, hvrc, hl⟩ := lr2_shape hL
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 264)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 264) (b := 8 * j) (by omega) (by omega) hw
    have hj33 : j = 33 := by omega
    subst hj33
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    have hx28 : x.toNat < 2 ^ 28 := by rw [← hx]; exact hBh r c hvrc
    have h33 := tf_set33 hmod hrd hx28 hAr hB hT
    exact ⟨et2_upd (a := a) (g := s'.globals) (b27' := false) (b35' := true) 33 (by norm_num) hmod
      h33.1 h33.2 (fun h => absurd h (by simp)) (fun _ => ⟨rfl, by norm_num⟩) hAr hB (Or.inl (by decide))
      ⟨⟨hT, h27, h35⟩, hEA⟩, hAl⟩

theorem txr_blob_inner {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (h9 : txrKst 9 tt = txrKst 8 tt + 2) (vBl : ValueHOL 64) :
    HoareG σ X (DI a Ar 400 (LsN Ar A tt 8 (nm "bl") vBl)
        (withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true)))
      (.decCall (nm "bh") (.comb [.one, .one]) (nm "decode_blob_hashes")
        [.rfield 0 (lv (nm "bl")), .rfield 1 (lv (nm "bl"))]
        (.seq (txrSt 256 (.rfield 0 (lv (nm "bh"))))
          (.seq (txrSt 264 (.rfield 1 (lv (nm "bh")))) (txrK 2))))
      (DQ a Ar 400 (LsN Ar A tt 9 (nm "bl") vBl)
        (withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true))) := by
  refine hoareG_decCallPreQD ha hcs.bh (by simp [bhSig]) (by simp [bhSig]) (fun h => by simp [bhSig] at h)
    (L' := fun v => Lr2 Ar A tt 8 (nm "bl") (nm "bh") vBl v)
    (E' := fun v => withP (BhFact v) (withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true)))
    (L2 := fun v => Lr2 Ar A tt 9 (nm "bl") (nm "bh") vBl v)
    (E2 := fun v => withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true))
    (Lf := LsN Ar A tt 9 (nm "bl") vBl) (Ef := withP (AlFact a Pt Nt vBl) (ET2 a Ar A cnt Pt Nt false true))
    ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · intro s' hs hL vs hvs
    rw [evs_len2 hvs]; simp [bhSig]
  · intro s' st v hL hsh
    obtain ⟨r, c, rfl⟩ := rstruct_of_shape hsh
    refine ⟨⟨bl_set (s := ({ st with locals := s'.locals } : State σ)) (by decide) _ hL.1, ?_⟩,
      lk_set_self _ _ _, r, c, rfl⟩
    rw [lk_set_ne _ _ (by decide : nm "bh" ≠ nm "bl")]; exact hL.2
  · intro s' vs Γ q callee hs hL hvs hh ⟨hE, b, c, hv, h1, h2, h3, h4⟩
    rw [hv] at hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    exact ⟨b, c, rfl, h1, q, hpe, by omega⟩
  · intro s' st vs callee v Γ Γ' q q' hs hL hvs he hh hB hn ⟨hE, b, c, hv, h1, h2, h3, h4⟩ co hret hQ hsh
    rw [hv] at hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) evs_nil)] at hvs
    cases hvs
    obtain ⟨r, c', rfl⟩ := rstruct_of_shape hsh
    have hQ' := hQ _ rfl b c rfl
    refine ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ⟨⟨?_, b, c, hv, h1, h2, h3, h4⟩, ?_⟩⟩
    · exact et2_call hcs.hCb false true hAr bhSig [Wd b, Wd c] Γ Γ' q q' s' st s'.globals st.globals
        (coa_of_co co _) (fun x hx => argCells_any (by simp [bhSig]) hx) hB hE
    · intro buf cnt hv'
      have := hQ' buf cnt hv'
      omega
  · intro v
    refine hoareG_seqDQ (txr_stL ha (fun m hm => hm.1.1) hAr (storeKeep_withP _ (storeKeep_withP _ (et2_store a false true)))
      256 1 (by norm_num) (by norm_num) (by decide) ?_) (hoareG_seqDQ (st_cnt_bh ha hAr) (kinc_r2 ha h9 (by decide) (by decide)))
    intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    simp [flattenHOL]
  · intro m0 m v hL hm
    exact ⟨bl_res (by decide) _ hm.1.1, by rw [lookup_resVarEq_ne _ _ (by decide : nm "bh" ≠ nm "bl")]; exact hm.1.2⟩
  · intro v Γ q mem g h
    exact h


/-- stage 8 -> 9 -/
theorem txr_blob {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 8) (ET2 a Ar A cnt Pt Nt false true)) txrBlob
      (DQ a Ar 400 (BLs Ar A tt 9) (ET2 a Ar A cnt Pt Nt false true)) := by
  unfold txrBlob
  by_cases h3 : tt = 3
  · subst h3
    refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => cond_true .equal 3 hD.1 (by rw [(txrCmpT 3 htt).2.2.2.2]; decide)) ?_
    have hI : txrKst 8 3 + 1 < cnt.toNat := by rw [hcnt]; simp [txrKst, txrNfOf]
    have h9 : txrKst 9 3 = txrKst 8 3 + 2 := by simp [txrKst]
    refine hoareG_seqDQ (txr_cv ha hAr (et2_call hcs.hCb false true) hcs.u256 (by simp [txfSig])
      (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig])) (hoareG_seqDQ
      (txr_stv ha hAr (et2_store a false true) 28 (by norm_num) (by decide)) ?_)
    refine txr_litem ha hcs hAr 3 8 (nm "bl") (by decide) (txrKe 1) (txrKst 8 3 + 1) hI
      (fun s' hL => ?_) (L2 := fun v => LsN Ar A 3 9 (nm "bl") v)
      (E2 := fun v => withP (AlFact a Pt Nt v) (ET2 a Ar A cnt Pt Nt false true))
      (Lf := BLs Ar A 3 9) (Ef := ET2 a Ar A cnt Pt Nt false true) ?_ ?_ ?_
    · unfold txrKe
      rw [ev_add2 (ev_lw (bl_k hL)) (ev_cw _ 1), BitVec.ofNat_add_ofNat]
    · intro v
      exact txr_blob_inner ha hcs hgr hAr 3 h9 v
    · intro m0 m v _ hm
      exact bl_res (by decide) _ hm.1
    · intro v Γ q mem g h
      exact h.1
  · refine hoareG_iteF
      (fun s hs hD => cond_false .equal 3 hD.1 (by rw [(txrCmpT tt htt).2.2.2.2]; simpa using h3)) ?_
    refine hoareG_skip fun s hs hD => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
    exact di_mono (fun m h => by simpa [BLs, txrKst, h3] using h) (fun _ _ _ _ h => h) hD

end InitECandidate.Solver.MemSafe.Rec
