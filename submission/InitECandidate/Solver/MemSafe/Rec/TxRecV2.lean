import InitECandidate.Solver.MemSafe.Rec.TxRecV

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: `txrV` (declare `k`, `w`, the chain id, declare `v`, then `txr_nonce`)
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

variable {σ : Type} {X : Ctx 64}

def BLw (Ar A T NF K : BitVec 64) (m : LocalsH) : Prop :=
  LV [(nm "tx", Wd Ar), (nm "arr", Wd A), (nm "t", Wd T), (nm "nfields", Wd NF), (nm "k", Wd K)] m ∧
  ∃ W : BitVec 64, m.lookup (nm "w") = some (Wd W)

def BLws (Ar A : BitVec 64) (tt s : Nat) : LocalsH → Prop :=
  BLw Ar A (BitVec.ofNat 64 tt) (BitVec.ofNat 64 (txrNfOf tt)) (BitVec.ofNat 64 (txrKst s tt))

theorem blw_tx {Ar A T NF K : BitVec 64} {m : LocalsH} (h : BLw Ar A T NF K m) :
    m.lookup (nm "tx") = some (Wd Ar) := h.1 (nm "tx", Wd Ar) (by simp)
theorem blw_t {Ar A T NF K : BitVec 64} {m : LocalsH} (h : BLw Ar A T NF K m) :
    m.lookup (nm "t") = some (Wd T) := h.1 (nm "t", Wd T) (by simp)

theorem blw_setw {Ar A T NF K : BitVec 64} {s : State σ} (W' : BitVec 64) (h : BLw Ar A T NF K s.locals) :
    BLw Ar A T NF K (setVarHOLFinite (nm "w") (Wd W') s).locals :=
  ⟨lv_set h.1 (bl_kv_ne ⟨by decide, by decide, by decide, by decide, by decide⟩) _,
    ⟨W', lk_set_self _ _ _⟩⟩

theorem blw_setk {Ar A T NF K : BitVec 64} {s : State σ} (K' : BitVec 64) (h : BLw Ar A T NF K s.locals) :
    BLw Ar A T NF K' (setVarHOLFinite (nm "k") (Wd K') s).locals := by
  obtain ⟨h1, ⟨W, hW⟩⟩ := h
  refine ⟨?_, ⟨W, ?_⟩⟩
  · intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "tx")]; exact h1 (nm "tx", Wd Ar) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "arr")]; exact h1 (nm "arr", Wd A) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "t")]; exact h1 (nm "t", Wd T) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "nfields")]; exact h1 (nm "nfields", Wd NF) (by simp)
    · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide)]; exact hW

theorem condw_true {s : State σ} {Ar A T NF K : BitVec 64} (o : Cmp) (c : Nat)
    (hL : BLw Ar A T NF K s.locals)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o T (BitVec.ofNat 64 c) = true) :
    ev s (.cmp o txrT (cw c)) = some (.val (.word 1)) := by
  unfold txrT; rw [ev_cmp (ev_lw (blw_t hL)) (ev_cw _ c), if_pos h]

theorem condw_false {s : State σ} {Ar A T NF K : BitVec 64} (o : Cmp) (c : Nat)
    (hL : BLw Ar A T NF K s.locals)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o T (BitVec.ofNat 64 c) = false) :
    ev s (.cmp o txrT (cw c)) = some (.val (.word 0)) := by
  unfold txrT; rw [ev_cmp (ev_lw (blw_t hL)) (ev_cw _ c), if_neg (by simp [h])]

/-- `txr_st` for locals with `tx` -/
theorem txr_stL2 {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64} {L : LocalsH → Prop}
    (htx : ∀ m, L m → m.lookup (nm "tx") = some (Wd Ar))
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (off len : Nat) (hoff : off % 8 = 0) (hle : off + 8 * len ≤ 400)
    (hfn : ∀ f ∈ txFacts, f < off / 8 ∨ off / 8 + len ≤ f) {e : ExpHOL 64}
    (he : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → (flattenHOL v).length = len) :
    HoareG σ X (DI a Ar 400 L E) (txrSt off e) (DQ a Ar 400 L E) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDINE ha (by omega) ?_ ?_
  · intro s hs hL w v hw hv
    rw [ev_add2 (ev_lw (htx _ hL)) (ev_cw _ off)] at hw
    cases hw
    have hl := he s hs hL v hv
    refine ⟨off / 8, by omega, ?_⟩
    rw [show 8 * (off / 8) = off by omega]
  · intro s Γ q v j mem hs hL hv hj hw hmod hB hEs
    have hl := he s hs hL v hv
    rw [ev_add2 (ev_lw (htx _ hL)) (ev_cw _ off)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := off) (b := 8 * j) (by omega) (by omega) hw
    have hj8 : j = off / 8 := by omega
    rw [hl] at hmod
    exact hS hAr Γ q s.memory mem s.globals j len (by omega) (by rw [hj8]; exact hfn) hmod hB hEs

/-- stage 0 -> 1 before `v` is declared -/
theorem txr_chain_w {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (hC : CallKeep a Ar E) (tt : Nat) (htt : tt ≤ 4) :
    HoareG σ X (DI a Ar 400 (BLws Ar A tt 0) E) txrChain (DQ a Ar 400 (BLws Ar A tt 1) E) := by
  unfold txrChain
  by_cases h0 : tt = 0
  · subst h0
    refine hoareG_iteF (fun s hs hD => condw_false .notEqual 0 hD.1 (by rw [(txrCmpT 0 htt).1]; decide)) ?_
    refine hoareG_skip fun s hs hD => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
    exact di_mono (fun m h => by simpa [BLws, txrKst] using h) (fun _ _ _ _ h => h) hD
  · refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => condw_true .notEqual 0 hD.1 (by rw [(txrCmpT tt htt).1]; simpa using h0)) ?_
    have hcall : HoareG σ X (DI a Ar 400 (BLws Ar A tt 0) E) (txrW "tx_scalar_word" [txrArr, cw 0, cw 8, cw 12])
        (DQ a Ar 400 (BLws Ar A tt 0) E) := by
      unfold txrW
      refine hoareG_callAL ha hcs.word (funSpec_true _) (by simp [txwSig]) (by simp [txwSig])
        (by simp [txwSig]) (by simp [txwSig]) ?_ ?_
      · intro s st vs callee v hL _ hval
        obtain ⟨W, hW⟩ := hL.2
        obtain ⟨w', rfl⟩ := valid_wordL hW hval
        exact blw_setw w' hL
      · intro s st vs callee v Γ Γ' q q' hs hL hvs _ he hh hB hn hEs co hval
        exact hC hAr txwSig vs Γ Γ' q q' s st s.globals st.globals co
          (fun x hx => argCells_any (by simp [txwSig]) hx) hB hEs
    refine hoareG_seqDQ hcall (hoareG_seqDQ (L := BLws Ar A tt 0) (E := E) ?_ ?_)
    · refine txr_stL2 ha (fun m hm => blw_tx hm) hAr hS 8 1 (by norm_num) (by norm_num) (by decide) ?_
      intro s hs hL v hv
      obtain ⟨W, hW⟩ := hL.2
      rw [ev_lw hW] at hv; cases hv; simp [flattenHOL]
    · refine hoareG_assignDI ha.hH ?_
      intro s hs hL v hv
      rw [ev_cw] at hv
      cases hv
      have e : txrKst 1 tt = 1 := by simp [txrKst, h0]
      unfold BLws; rw [e]
      exact blw_setk _ hL


def txrLB (Ar A : BitVec 64) (tt : Nat) (m : LocalsH) : Prop :=
  LV [(nm "tx", Wd Ar), (nm "arr", Wd A), (nm "t", Wd (BitVec.ofNat 64 tt)),
    (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt)))] m

theorem txr_V {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (txrLB Ar A tt) (ET2 a Ar A cnt Pt Nt true true)) txrV (NQM a Rv) := by
  unfold txrV
  refine hoareG_decDIM ha.hH (L' := fun m => txrLB Ar A tt m ∧ m.lookup (nm "k") = some (Wd (BitVec.ofNat 64 0))) ?_ ?_
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨?_, lk_set_self _ _ _⟩
    intro q hq
    simp only [txrLB, List.mem_cons, List.not_mem_nil, or_false] at hq
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
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "tx")]; exact hL (nm "tx", Wd Ar) (by simp [txrLB])
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "arr")]; exact hL (nm "arr", Wd A) (by simp [txrLB])
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "t")]; exact hL (nm "t", _) (by simp [txrLB])
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "nfields")]; exact hL (nm "nfields", _) (by simp [txrLB])
    · rw [lk_set_ne _ _ (by decide : nm "w" ≠ nm "k")]; exact hk
  refine hoareG_seqDIM (txr_chain_w ha hcs hAr (et2_store a true true) (et2_call hcs.hCb true true) tt htt) ?_
  refine hoareG_decDIM ha.hH (L' := BLs Ar A tt 1) ?_ (txr_nonce ha hcs hgr hAr hAb tt htt hcnt hRv)
  intro s hs ⟨hL, W, hW⟩ v hv
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  rw [evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hvs
  cases hvs
  refine ⟨?_, ⟨W, ?_⟩, ⟨BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
    lk_set_self _ _ _⟩⟩
  · refine lv_set hL (bl_kv_ne ⟨by decide, by decide, by decide, by decide, by decide⟩) _
  · rw [lk_set_ne _ _ (by decide)]; exact hW

end InitECandidate.Solver.MemSafe.Rec
