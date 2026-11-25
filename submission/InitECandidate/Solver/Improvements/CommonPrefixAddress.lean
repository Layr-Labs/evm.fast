import InitECandidate.Solver.AuthorizationWork.FirstDiffTight
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

import InitECandidate.Solver.Spec.Mpt.Code

set_option autoImplicit false
set_option maxRecDepth 100000

namespace CommonPrefixAddress
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv InitECandidate.Solver.Spec.Mpt
open Flapjack.Pancake.PanLang (ExpHOL)

abbrev slots : Nat := 2 ^ 35 + alignSlack 64 + 1
abbrev price : Nat := 1 + slots

private def addr {σ : Type} (s : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  addrOf (lv (nm "a")) (nm "i") s

private theorem access {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    (h : Completes s cplLoopBody) :
    ∃ w, addr s = some w ∧ Hit s.memaddrs w := by
  let guard : ExpHOL 64 := .cmp .notEqual
    (.loadByte (.op .add [lv (nm "a"), lv (nm "i")]))
    (.loadByte (.op .add [lv (nm "b"), lv (nm "i")]))
  have he := seq_completes (a := .ite guard (.return (lv (nm "i"))) .skip)
    (noContB_sound _ (by decide)) h
  have hEval : ∃ v, ev s guard = some v := by
    rw [evaluateHOLFiniteState_eq_evaluate_def] at he
    dsimp only at he
    split at he
    · exact ⟨_, by assumption⟩
    · contradiction
  obtain ⟨v, hv⟩ := hEval
  obtain ⟨a, b, ha, hb, _⟩ := ev_cmp_inv hv
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

theorem bodyCost {σ : Type} : Cost σ guestCtx cplBody price := by
  obtain ⟨L, hBound, ⟨lo, hDomain⟩, _, hSize⟩ := guestCtx_bounded
  have hAlign : alignSlack 64 = 8 := by decide
  have hLS : L + alignSlack 64 ≤ 2 ^ 64 := by omega
  have iteration : Cost σ guestCtx cplLoopBody 0 := by
    exact cost_seq (Bp := 0) (Bq := 0) (cost_ite (Ba := 0) (Bb := 0) (cost_return _) cost_skip) (cost_assign _ _ _)
  have hLoop : Cost σ guestCtx (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) cplLoopBody)
      ((L + alignSlack 64 + 1) * (0 + 1)) := cost_while_addr (c := .cmp .lower (lv (nm "i")) (lv (nm "n")))
    addr lo (L + alignSlack 64) 1 (by omega)
    iteration (fun _ => rfl) (by
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
      have hStep : Steps σ (nm "i") (· + 1) cplLoopBody :=
        stepsB_sound _ true cplLoopBody (by decide)
      exact addrOf_step hw hIndex (hStep t i hIndex hc) (baseKept (by decide) hc))
  have min_price : CalleeCost σ guestCtx (nm "min") 0 := by
    intro vs actual callee rs lookup
    obtain ⟨ps, hc⟩ := lookupCode_some lookup
    rw [guestCtx_code, code_min] at hc
    have he : actual = minBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
    rw [he]
    exact cost_seq (Bp := 0) (Bq := 0) (cost_ite (Ba := 0) (Bb := 0) (cost_return _) cost_skip) (cost_return _)
  unfold cplBody
  apply Cost.mono (cost_decCall min_price (cost_dec (cost_seq hLoop (cost_return _))))
  unfold price slots
  omega

theorem calleeCost {σ : Type} : CalleeCost σ guestCtx (nm "common_prefix_length") price := by
  intro values body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  rw [guestCtx_code, code_common_prefix_length] at hCode
  have hBody : body = cplBody := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hBody]
  exact bodyCost

#print axioms calleeCost

end CommonPrefixAddress
