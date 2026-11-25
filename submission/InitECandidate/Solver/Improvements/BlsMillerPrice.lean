import InitECandidate.Solver.Improvements.BoundedCountdown
import InitECandidate.Solver.Improvements.CompactCostReplay

/-! The BLS Miller loop starts at the literal 63 and decrements once per body. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace BlsMillerPrice
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

private def program : ProgHOL 64 := (declPair Guest.Software.guestFn_pair_miller_loop).2.2
private abbrev copyPrice : Nat := 73786976294838206469
private abbrev setPrice : Nat := 221360928884514619412
private abbrev conjPrice : Nat := 73786976294838206492
private abbrev stepPrice : Nat := 1106804644422573123149
private abbrev restPrice : Nat := (1 + conjPrice) + ((1 + 0) + 0)
private abbrev loopPrice : Nat := 63 * (stepPrice + 1) + restPrice

abbrev price : Nat :=
  (1 + 0) + ((1 + 2) + ((1 + 2) + ((1 + copyPrice) + ((1 + copyPrice) +
    ((1 + 0) + ((1 + setPrice) + loopPrice))))))

theorem price_eq : price = 70171414456391135997305 := by decide

private theorem tableCost {σ : Type} {f : MlS} {B : Nat}
    (h : Shards.finalState.1.lookup f = some B) : CalleeCost σ guestCtx f B :=
  calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 h

private theorem callCost {σ : Type} {f : MlS} {B : Nat} {args : List (ExpHOL 64)}
    (h : Shards.finalState.1.lookup f = some B) :
    Cost σ guestCtx (.call (some (none, none)) f args) (1 + B) :=
  cost_call (Bh := 0) (tableCost h) (by intro _ _ _ _ h; cases h)

private theorem cost_of_price_le {σ : Type} {p : ProgHOL 64} {B : Nat}
    (h : (match CompactCostReplay.price Shards.finalState p with
      | some n => decide (n ≤ B)
      | none => false) = true) :
    Cost σ guestCtx p B := by
  cases hprice : CompactCostReplay.price Shards.finalState p with
  | none => simp [hprice] at h
  | some n =>
    exact (CompactCostReplay.program_cost Shards.finalState_sound_guest hprice).mono
      (of_decide_eq_true (by simpa only [hprice] using h))

private theorem body_cost {σ : Type} : Cost σ guestCtx program price := by
  conv => arg 3; cbv
  refine cost_decCall (tableCost (f := nm "heap_mark") (B := 0) (by rfl)) ?_
  refine cost_decCall (tableCost (f := nm "alloc") (B := 2) (by rfl)) ?_
  refine cost_decCall (tableCost (f := nm "alloc") (B := 2) (by rfl)) ?_
  refine cost_seq (callCost (f := nm "fp2_copy") (B := copyPrice) (by rfl)) ?_
  refine cost_seq (callCost (f := nm "fp2_copy") (B := copyPrice) (by rfl)) ?_
  refine cost_seq (callCost (f := nm "fp2_set_one") (B := 0) (by rfl)) ?_
  refine cost_seq (callCost (f := nm "fp12_set_one") (B := setPrice) (by rfl)) ?_
  refine cost_dec ?_
  refine BoundedCountdown.initialized_cost (i := nm "i") (B := stepPrice) (Bt := restPrice)
    (63 : BitVec 64) (nonzeroVar_sound (by decide_cbv))
    (stepsB_sound (nm "i") false _ (by decide_cbv))
    (cost_of_price_le (by decide_cbv)) ?_
  exact cost_seq (callCost (f := nm "fp12_conj") (B := conjPrice) (by rfl))
    (cost_seq (callCost (f := nm "heap_release") (B := 0) (by rfl)) (cost_return _))

theorem callee_cost {σ : Type} : CalleeCost σ guestCtx (nm "pair_miller_loop") price := by
  have hm : Guest.Software.guestFn_pair_miller_loop ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 785) (by decide)
  obtain ⟨rs, hc⟩ := declPair_valid (d := Guest.Software.guestFn_pair_miller_loop) hm ⟨_, rfl⟩
  intro vs actual callee rs' lookup
  obtain ⟨ps, hcode⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  change guestCode (nm "pair_miller_loop") = some (_, program, rs) at hc
  rw [guestCtx_code, hc] at hcode
  have same : actual = program := (congrArg (fun entry => entry.2.1) (Option.some.inj hcode)).symm
  rw [same]
  exact body_cost

#print axioms callee_cost
end BlsMillerPrice
