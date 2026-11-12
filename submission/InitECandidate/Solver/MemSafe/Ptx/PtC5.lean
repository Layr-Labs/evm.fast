import InitECandidate.Solver.MemSafe.Ptx.PtC4
import InitECandidate.Solver.MemSafe.Ptx.PtVal

/-!
# F3d: chunk 2b (`validate_transaction` ... `set_account_balance`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem wv_inj {a b : List (BitVec 64)} (h : wv a = wv b) : a = b := by
  unfold wv at h
  injection h with h2
  exact List.map_injective_iff.mpr (fun x y hxy => by simpa using hxy) h2

theorem validate_fin : ptAllNames.contains (nm "validate_transaction") = true := by decide_cbv
theorem check_fin : ptAllNames.contains (nm "check_transaction") = true := by decide_cbv
theorem blobtotal_fin : ptAllNames.contains (nm "calculate_total_blob_gas") = true := by decide_cbv
theorem getacct_fin : ptAllNames.contains (nm "get_account") = true := by decide_cbv
theorem blobprice_fin : ptAllNames.contains (nm "calculate_blob_gas_price") = true := by decide_cbv
theorem feemul_fin : ptAllNames.contains (nm "fee_mul") = true := by decide_cbv
theorem min_fin : ptAllNames.contains (nm "min") = true := by decide_cbv
theorem incnonce_fin : ptAllNames.contains (nm "increment_nonce") = true := by decide_cbv
theorem u256sub_fin : ptAllNames.contains (nm "u256_sub") = true := by decide_cbv
theorem setbal_fin : ptAllNames.contains (nm "set_account_balance") = true := by decide_cbv

/-- `validate_transaction(tx, sender)`: the result `<a, b, c>` with `a <= 2^24`. -/
theorem hdec_validate {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {k : ProgHOL 64} (hQT : ResIns (nm "intrinsic") QT)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ a b c : BitVec 64, Hoare σ guestCtx
      (PA E (En.set (nm "intrinsic") (wv [a, b, c])) (fun f => S f ∨ f = Fct.prop (a.toNat ≤ 2 ^ 24))) k QT) :
    Hoare σ guestCtx (PA E En S)
      (.decCall (nm "intrinsic") (.comb [.one, .one, .one]) (nm "validate_transaction")
        [lv (nm "tx"), lv (nm "sender")] k) QT := by
  refine hdecCallC2 hQT tab_validate_transaction
    (callOK_any csOK_nil (by simp) rfl validate_fin (fun s _ vs hvs => by rw [evs_length hvs]; rfl) hGl)
    validate_val
    (fun v f => ∃ a b c, v = wv [a, b, c] ∧ f = Fct.prop (a.toNat ≤ 2 ^ 24)) ?_ ?_
  · intro s vs callee v st D Γ Γ' p p' hpa hvs hr hL hstep hrun hc hR2 hsh f ⟨a, b, c, hv, hf⟩
    subst hv hf
    obtain ⟨a', b', c', e, ha⟩ := hR2 _ rfl
    have := wv_inj e
    simp only [List.cons.injEq] at this
    show a.toNat ≤ 2 ^ 24
    rw [this.1]; exact ha
  · intro v hsh
    obtain ⟨ws, hlen, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh
    obtain ⟨a, b, c, rfl⟩ : ∃ a b c, ws = [a, b, c] := by
      match ws, hlen with
      | [a, b, c], _ => exact ⟨a, b, c, rfl⟩
    exact hoare_pre (hk a b c) fun t _ ht => pa_mono ht (fun x v h => h)
      (fun f hf => hf.elim Or.inl (fun h => Or.inr ⟨a, b, c, rfl, h⟩))

end InitECandidate.Solver.MemSafe.Ptx
