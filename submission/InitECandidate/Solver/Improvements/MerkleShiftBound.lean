import InitECandidate.Solver.MemSafe.Aw.Merk
import InitECandidate.Solver.Band3.Core
import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore

/-! The reduction loop consumes the bits of its local counter by right-shifting once per iteration.
The cost keeps the analyzer's per-iteration price and uses the bit length as the rank. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace MerkleShiftBound
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Aw

private def bitLength (n : Nat) : Nat := if n = 0 then 0 else n.log2 + 1

private theorem half_decreases {n : Nat} (hn : n ≠ 0) : bitLength (n / 2) < bitLength n := by
  by_cases h : n / 2 = 0
  · simp [bitLength, h, hn]
  have hpow := Nat.lt_log2_self (n := n)
  rw [Nat.pow_succ] at hpow
  have hlt := (Nat.log2_lt h).2 (by omega : n / 2 < 2 ^ n.log2)
  simpa [bitLength, h, hn] using hlt

private def guard : ExpHOL 64 := .cmp .less (cw 1) (lv curN)
private abbrev genericSlots : Nat := 2 ^ 64 + 1
private abbrev bodyPrice : Nat := genericSlots * (1 + 1)
abbrev reductionPrice : Nat := (64 + 1) * (bodyPrice + 1)

theorem reduction_cost {σ : Type} : Cost σ guestCtx (.while guard merkOuter) reductionPrice := by
  have hc : NonzeroCond σ curN guard := nonzeroVar_sound (by decide)
  have hstep : Steps σ curN (fun n => n >>> (1 : Nat)) merkOuter :=
    stepsShrB_sound curN (1 : BitVec 64) _ (by decide)
  have hbody : Cost σ guestCtx merkOuter bodyPrice :=
    InitECandidate.Solver.Band3.cost_guest_of_costA (by decide_cbv)
  refine cost_while (fun s => bitLength (wordOf s curN)) 64 hbody ?_ ?_
  · intro s _ hg
    obtain ⟨v, hv, hv0⟩ := hc s hg
    have hn : v.toNat ≠ 0 := fun h => hv0 (BitVec.eq_of_toNat_eq (by simpa using h))
    have hb : v.toNat.log2 < 64 := (Nat.log2_lt hn).2 v.isLt
    simp only [wordOf, hv, bitLength, if_neg hn]
    omega
  · intro s _ hg _ hdone
    obtain ⟨v, hv, hv0⟩ := hc s hg
    have hn : v.toNat ≠ 0 := fun h => hv0 (BitVec.eq_of_toNat_eq (by simpa using h))
    have hnext := hstep (decClockHOLFinite s) v hv hdone
    simp only [wordOf, hv, hnext, BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
    exact half_decreases hn

private abbrev copyPrice : Nat := 73786976294838206468
private abbrev restPrice : Nat :=
  1 + 0 + (1 + 2 + ((1 + copyPrice) + ((1 + copyPrice) +
    (reductionPrice + (bodyPrice + ((1 + copyPrice) + ((1 + 0) + 0)))))))
abbrev price : Nat :=
  (1 + genericSlots) + ((1 + genericSlots) + ((1 + 0) + ((1 + copyPrice) + restPrice)))

private theorem tableCost {σ : Type} {f : MlS} {B : Nat}
    (h : Shards.finalState.1.lookup f = some B) : CalleeCost σ guestCtx f B :=
  calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 h

private theorem callCost {σ : Type} {f : MlS} {B : Nat} {args : List (ExpHOL 64)}
    (h : Shards.finalState.1.lookup f = some B) :
    Cost σ guestCtx (.call (some (none, none)) f args) (1 + B) :=
  cost_call (Bh := 0) (tableCost h) (by intro _ _ _ _ h; cases h)

private theorem rest_cost {σ : Type} : Cost σ guestCtx merkRest restPrice := by
  have htail : Cost σ guestCtx (.while (.cmp .less (lv dN) (lv tgN)) merkTail) bodyPrice :=
    InitECandidate.Solver.Band3.cost_guest_of_costA (by decide_cbv)
  unfold merkRest
  refine cost_decCall (tableCost (f := nm "heap_mark") (B := 0) (by rfl)) (cost_dec ?_)
  refine cost_decCall (tableCost (f := nm "alloc") (B := 2) (by rfl)) ?_
  refine cost_seq (callCost (f := nm "memcpy") (B := copyPrice) (by rfl)) ?_
  refine cost_seq (callCost (f := nm "memzero") (B := copyPrice) (by rfl)) (cost_dec ?_)
  refine cost_seq reduction_cost (cost_dec (cost_seq htail ?_))
  refine cost_seq (callCost (f := nm "memcpy") (B := copyPrice) (by rfl)) ?_
  exact cost_seq (callCost (f := nm "heap_release") (B := 0) (by rfl)) (cost_return _)

private theorem body_cost {σ : Type} : Cost σ guestCtx merkBody price := by
  unfold merkBody
  refine cost_decCall (tableCost (f := nm "ceil_log2") (B := genericSlots) (by rfl)) ?_
  refine cost_decCall (tableCost (f := nm "ceil_log2") (B := genericSlots) (by rfl)) ?_
  refine cost_decCall (tableCost (f := nm "max") (B := 0) (by rfl)) ?_
  refine cost_seq ?_ rest_cost
  refine Cost.mono (cost_ite (Ba := 1 + copyPrice) ?_ (cost_skip (σ := σ) (X := guestCtx))) ?_
  · exact cost_seq (Bp := 1 + copyPrice) (Bq := 0)
      (callCost (f := nm "memcpy") (B := copyPrice) (by rfl)) (cost_return _)
  · decide

theorem callee_cost {σ : Type} : CalleeCost σ guestCtx (nm "merkleize") price := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [guestCtx_code, code_merkleize] at hc
  have body : actual = merkBody := (congrArg (fun e => e.2.1) (Option.some.inj hc)).symm
  rw [body]
  exact body_cost

#print axioms callee_cost
end MerkleShiftBound
