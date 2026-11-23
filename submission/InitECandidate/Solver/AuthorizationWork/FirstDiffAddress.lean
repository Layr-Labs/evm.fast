import InitECandidate.Solver.AuthorizationWork.FirstDiffTight
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

set_option autoImplicit false
set_option maxRecDepth 100000

namespace FirstDiffAddress
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv

abbrev slots : Nat := 2 ^ 35 + alignSlack 64 + 1
abbrev price : Nat := slots * 9

private def addr {σ : Type} (s : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  addrOf (lv (nm "a")) (nm "i") s

private theorem access {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    (h : Completes s fdOuter) :
    ∃ w, addr s = some w ∧ Hit s.memaddrs w := by
  have hEval : ∃ v, ev s fdX = some v := by
    unfold Completes fdOuter at h
    rw [evaluateHOLFiniteState_eq_evaluate_def] at h
    dsimp only at h
    split at h
    · simp at h
    · rename_i v hv
      exact ⟨v, hv⟩
  obtain ⟨v, hv⟩ := hEval
  obtain ⟨a, b, ha, hb, _⟩ := Inv.ev_op2_inv hv
  obtain ⟨w, hw, byte, hByte, _⟩ := ev_loadByte_inv ha
  have hAddr : addr s = some w := by
    change ev s (.op .add [lv (nm "a"), lv (nm "i")]) = _ at hw
    obtain ⟨base, index, hBase, hIndex, _⟩ := Inv.ev_op2_inv hw
    rw [ev_add2 hBase hIndex] at hw
    cases hw
    change DLk s "a" base at hBase
    change DLk s "i" index at hIndex
    unfold DLk at hBase hIndex
    simp [addr, addrOf, baseVal, lv, wordLocal, hBase, hIndex]
  exact ⟨w, hAddr, Or.inr (kbyte_isSome.mp (by rw [hByte]; rfl))⟩

theorem bodyCost {σ : Type} : Cost σ guestCtx fdBody price := by
  obtain ⟨L, hBound, ⟨lo, hDomain⟩, _, hSize⟩ := guestCtx_bounded
  have hAlign : alignSlack 64 = 8 := by decide
  have hLS : L + alignSlack 64 ≤ 2 ^ 64 := by omega
  have hLoop := cost_while_addr (c := .cmp .lower (lv (nm "i")) (lv (nm "key_len")))
    addr lo (L + alignSlack 64) 1 (by omega)
    (FirstDiffTight.outerIteration (σ := σ) (X := guestCtx)) (fun _ => rfl) (by
    intro t ht hc
    obtain ⟨w, hw, hHit⟩ := access hc
    have hOffset := hit_offset hDomain hLS (ht.2.1 ▸ hHit)
    refine ⟨w, hw, hOffset, 1, by decide, by decide, ?_⟩
    have h := hw
    unfold addr addrOf at h
    cases hi : wordLocal t (nm "i") with
    | none => rw [hi] at h; split at h <;> simp_all
    | some i =>
      have hIndex := wordLocal_some hi
      have hStep : Steps σ (nm "i") (· + 1) fdOuter :=
        stepsB_sound _ true fdOuter (by decide)
      exact addrOf_step hw hIndex (hStep t i hIndex hc) (baseKept (by decide) hc))
  unfold fdBody
  refine cost_dec ((cost_seq hLoop (cost_return _)).mono ?_)
  simp only [Nat.add_zero]
  exact Nat.mul_le_mul_right _ (by unfold slots; omega)

theorem calleeCost {σ : Type} : CalleeCost σ guestCtx (nm "htab_first_diff") price := by
  intro values body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  rw [guestCtx_code, code_first_diff] at hCode
  have hBody : body = fdBody := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hBody]
  exact bodyCost

#print axioms calleeCost

end FirstDiffAddress
