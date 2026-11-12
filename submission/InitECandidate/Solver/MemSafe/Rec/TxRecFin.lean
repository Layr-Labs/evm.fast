import InitECandidate.Solver.MemSafe.Rec.TxRecData

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the last fields, `return tx` and the adoption of the record

`txw_of_tf`: the facts `TF` give `TxW` (the crude `TxLen` bound).  `txr_ret`: `return tx` adopts the block
as a `tTX` object of `Γ` (`heap_adopt`, `wf_of_txW`).  `txr_fin`: stage 10 -> end.
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

theorem accSum_le (m : Mem) (P : BitVec 64) :
    ∀ n, (∀ j, j < n → (rd m (P + BitVec.ofNat 64 (24 * j + 16))).toNat < 2 ^ 28) →
      Hooks.accSum m P n ≤ n * (39 + 33 * 2 ^ 28)
  | 0, _ => by simp [Hooks.accSum]
  | n + 1, h => by
      have ih := accSum_le m P n (fun j hj => h j (by omega))
      have hn := h n (by omega)
      show Hooks.accSum m P n + (39 + 33 * Hooks.accNs m P n) ≤ (n + 1) * (39 + 33 * 2 ^ 28)
      unfold Hooks.accNs
      have : (n + 1) * (39 + 33 * 2 ^ 28) = n * (39 + 33 * 2 ^ 28) + (39 + 33 * 2 ^ 28) := by ring
      omega

def txrObj (Ar : BitVec 64) : Obj := ⟨Ar, Types.tTX, 400⟩

theorem txw_of_tf {Γ Γ' : Gam} {mem : Mem} {Ar : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (he : Ext Γ Γ') (h : TF Ar Γ mem) :
    Hooks.TxW Γ' mem (txrObj Ar) := by
  obtain ⟨h25, h33, ⟨han, hP, hns⟩, h35, hA⟩ := h
  refine ⟨le_rfl, by unfold txrObj Obj.lo; exact hAr.2, ?_, txrSubArrExt he hP, txrSubArrExt he hA⟩
  have e : ∀ k, Hooks.txF mem (txrObj Ar) k = cl Ar mem k := fun k => rfl
  unfold Hooks.TxLen
  simp only [e]
  have h1 := accSum_le mem (cl Ar mem 26) (cl Ar mem 27).toNat hns
  have h2 : (cl Ar mem 27).toNat * (39 + 33 * 2 ^ 28) ≤ 2 ^ 28 * (39 + 33 * 2 ^ 28) :=
    Nat.mul_le_mul_right _ (le_of_lt han)
  norm_num at h2 h1 h25 h33 h35 han ⊢
  constructor <;> omega

theorem txr_ret {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt s : Nat) (b27 b35 : Bool)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2 a Ar A cnt Pt Nt b27 b35)) (.return (lv (nm "tx")))
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
  obtain ⟨⟨hT, -, -⟩, hEA⟩ := hE
  obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono he hh (Ar := Ar) (n := 400) (ty := Types.tTX)
    hreg hprot hnt (by norm_num) (by norm_num) hmin ⟨hAb, hAr.2⟩ hAr.1 hB hn hgr
    (fun hLn => by
      rw [hcs.hH]
      exact Hooks.wf_of_txW rfl (List.mem_append_right _ (List.mem_singleton_self _))
        (Hooks.gamOK_of_layout (by rw [hcs.hCC] at hLn; exact hLn))
        (txw_of_tf hAr (Struct.ext_snoc Γ _) hT))
  refine ⟨_, q, hExt, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh2, fun v' hv' => ?_⟩
  cases hv'
  exact hRv _ _ _ _ ⟨_, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩ hEA.2.2.2.2.2.2


/-- stage 10 -> end -/
theorem txr_fin {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 10) (ET2 a Ar A cnt Pt Nt false false)) txrFin (NQM a Rv) := by
  unfold txrFin
  have hU : ∀ args : List (ExpHOL 64), args.length = 3 → ∀ s,
      HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2 a Ar A cnt Pt Nt false false)) (txrU args)
        (DQ a Ar 400 (BLs Ar A tt s) (ET2 a Ar A cnt Pt Nt false false)) :=
    fun args hl s => txr_cv ha hAr (et2_call hcs.hCb false false) hcs.u256 (by simp [txfSig])
      (by simp [txfSig, hl]) (by simp [txfSig]) (by simp [txfSig])
  have hSt : ∀ f, f + 4 ≤ 50 → (∀ g ∈ txFacts, g < f ∨ f + 4 ≤ g) → ∀ s,
      HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2 a Ar A cnt Pt Nt false false)) (txrSt (8 * f) (lv (nm "v")))
        (DQ a Ar 400 (BLs Ar A tt s) (ET2 a Ar A cnt Pt Nt false false)) :=
    fun f h1 h2 s => txr_stv ha hAr (et2_store a false false) f h1 h2
  exact hoareG_seqDIM (hU _ rfl 10) (hoareG_seqDIM (hSt 36 (by norm_num) (by decide) 10)
    (hoareG_seqDIM (hU _ rfl 10) (hoareG_seqDIM (hSt 40 (by norm_num) (by decide) 10)
      (hoareG_seqDIM (hU _ rfl 10) (hoareG_seqDIM (hSt 44 (by norm_num) (by decide) 10)
        (txr_ret ha hcs hgr hAr hAb tt 10 false false hRv))))))

end InitECandidate.Solver.MemSafe.Rec
