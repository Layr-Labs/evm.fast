import InitECandidate.Solver.MemSafe.Rec.TxRecFin

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the field decoding (`txrV`), from `k = 0` to the end

`txr_tail` (acc, blob, auth, fin), `txr_V` (declare `k`, `w`; chain id; declare `v`; nonce ... data; tail).
`BLw`: the locals before `v` is declared.
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

theorem txr_tail {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 7) (ET2 a Ar A cnt Pt Nt true true))
      (.seq txrAcc (.seq txrBlob (.seq txrAuth txrFin))) (NQM a Rv) :=
  hoareG_seqDIM (txr_acc ha hcs hgr hAr tt htt hcnt)
    (hoareG_seqDIM (txr_blob ha hcs hgr hAr tt htt hcnt)
      (hoareG_seqDIM (txr_auth ha hcs hgr hAr tt htt hcnt) (txr_fin ha hcs hgr hAr hAb tt hRv)))

/-- from stage 1 (after the chain id; `v` declared) to the end -/
theorem txr_nonce {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → Rv Γ' p' mem (Wd tx)) :
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
      (txr_data ha hcs hAr tt htt hcnt (txr_tail ha hcs hgr hAr hAb tt htt hcnt hRv))))))))))

end InitECandidate.Solver.MemSafe.Rec
