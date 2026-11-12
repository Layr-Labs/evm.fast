import InitECandidate.Solver.MemSafe.Rec.TxRecStg2

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: stage lemmas for the scalar fields

Each lemma is `HoareG (DI a Ar 400 (BLs Ar A tt s) E) code (DQ a Ar 400 (BLs Ar A tt s') E)` for a
generic client predicate `E` that survives non-fact stores (`StoreKeep`) and non-writing calls (`CallKeep`).
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

theorem txr_kinc_s {a : Act σ} (ha : ActOK a X) {Ar A : BitVec 64} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (tt s s' c : Nat) (h : txrKst s' tt = txrKst s tt + c) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt s) E) (txrK c) (DQ a Ar 400 (BLs Ar A tt s') E) := by
  refine hoareG_dqL (txr_kinc ha c) (fun m hm => ?_)
  unfold BLs
  rw [h, ← BitVec.ofNat_add_ofNat]
  exact hm

/-- stage 0 -> 1: the chain id -/
theorem txr_chain {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (hC : CallKeep a Ar E) (tt : Nat) (htt : tt ≤ 4) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 0) E) txrChain (DQ a Ar 400 (BLs Ar A tt 1) E) := by
  unfold txrChain
  by_cases h0 : tt = 0
  · subst h0
    refine hoareG_iteF (fun s hs hD => cond_false .notEqual 0 hD.1 (by rw [(txrCmpT 0 htt).1]; decide)) ?_
    refine hoareG_skip fun s hs hD => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
    exact di_mono (fun m h => by simpa [BLs, txrKst] using h) (fun _ _ _ _ h => h) hD
  · refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => cond_true .notEqual 0 hD.1 (by rw [(txrCmpT tt htt).1]; simpa using h0)) ?_
    refine hoareG_seqDQ (txr_cw ha hAr hC hcs.word (by simp [txwSig]) (by simp [txwSig])
      (by simp [txwSig]) (by simp [txwSig])) ?_
    refine hoareG_seqDQ (txr_stw ha hAr hS 1 (by norm_num) (by simp [txFacts])) ?_
    refine hoareG_dqL (txr_kset ha 1) (fun m hm => ?_)
    have e : txrKst 1 tt = 1 := by simp [txrKst, h0]
    unfold BLs; rw [e]; exact hm

/-- stage 1: the nonce choice (`v` is set); `k` unchanged -/
theorem txr_nonce_ite {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (hC : CallKeep a Ar E) (tt : Nat) (htt : tt ≤ 4) (s : Nat) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt s) E)
      (.ite (.cmp .equal txrT (cw 4))
        (.seq (txrW "tx_scalar_word" [txrArr, lv (nm "k"), cw 8, cw 12])
          (.assign .local (nm "v") (.rstruct [lv (nm "w"), cw 0, cw 0, cw 0])))
        (txrU [txrArr, lv (nm "k"), cw 32])) (DQ a Ar 400 (BLs Ar A tt s) E) := by
  by_cases h4 : tt = 4
  · subst h4
    refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => cond_true .equal 4 hD.1 (by rw [(txrCmpT 4 htt).2.1]; decide)) ?_
    exact hoareG_seqDQ (txr_cw ha hAr hC hcs.word (by simp [txwSig]) (by simp [txwSig])
      (by simp [txwSig]) (by simp [txwSig])) (txr_vw ha)
  · refine hoareG_iteF
      (fun s hs hD => cond_false .equal 4 hD.1 (by rw [(txrCmpT tt htt).2.1]; simpa using h4)) ?_
    exact txr_cv ha hAr hC hcs.u256 (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig])
      (by simp [txfSig])

/-- stage 2 -> 3: the price block -/
theorem txr_price {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (hC : CallKeep a Ar E) (tt : Nat) (htt : tt ≤ 4) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 2) E) txrPrice (DQ a Ar 400 (BLs Ar A tt 3) E) := by
  unfold txrPrice
  have hU : ∀ args : List (ExpHOL 64), args.length = 3 →
      HoareG σ X (DI a Ar 400 (BLs Ar A tt 2) E) (txrU args) (DQ a Ar 400 (BLs Ar A tt 2) E) :=
    fun args hl => txr_cv ha hAr hC hcs.u256 (by simp [txfSig]) (by simp [txfSig, hl]) (by simp [txfSig])
      (by simp [txfSig])
  by_cases h1 : tt ≤ 1
  · refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => cond_true' .notLower 1 hD.1 (by rw [(txrCmpT tt htt).2.2.1]; simpa using h1)) ?_
    refine hoareG_seqDQ (hU _ rfl) (hoareG_seqDQ (txr_stv ha hAr hS 6 (by norm_num) (by decide)) ?_)
    exact txr_kinc_s ha tt 2 3 1 (by simp [txrKst, h1])
  · refine hoareG_iteF
      (fun s hs hD => cond_false' .notLower 1 hD.1 (by rw [(txrCmpT tt htt).2.2.1]; simpa using h1)) ?_
    refine hoareG_seqDQ (hU _ rfl) (hoareG_seqDQ (txr_stv ha hAr hS 10 (by norm_num) (by decide))
      (hoareG_seqDQ (hU _ rfl) (hoareG_seqDQ (txr_stv ha hAr hS 14 (by norm_num) (by decide)) ?_)))
    exact txr_kinc_s ha tt 2 3 2 (by simp [txrKst, h1])

end InitECandidate.Solver.MemSafe.Rec
