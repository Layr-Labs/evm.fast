import InitECandidate.Solver.Improvements.FourthEncoderPhase2Prices
import InitECandidate.Solver.Improvements.FourthEncoderTypedPhase2
import InitECandidate.Solver.Improvements.FourthBalEncodeCallee

/-! Discharge the conditional encoder premise from the concrete fourth-lane
source theorem, preserving the original phase-2 caller interface. -/
set_option autoImplicit false
namespace FourthEncoderPhase2Final
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.BalEnc
variable {σ : Type}

def phase2BoundTight : Nat :=
  752052787271381050149172658676012436628682790730509096329565701567
open InitECandidate.Solver.MemSafe.BalCost FourthEncoderPhase2Prices

/-- Shared arithmetic for the sort, size loop, allocator, encoding loop, and tail. -/
private def atPrices (sort size alloc tail body : Nat) : Nat :=
  1 + 6 + (1 + Phase2.keysB + (sort + ((10485759 + 1) * (size + 1) +
    (1 + alloc + ((10485759 + 1) * (body + 1) + tail)))))

private def tableBudget (body : Nat) : Nat :=
  atPrices (Suffix.oldB Suffix.sortCall) Loop.sizeB Suffix.allocB (Suffix.oldB Suffix.encTail) body

private def literalBudget (body : Nat) : Nat :=
  atPrices 5304150966401745246458686339704084127426802285468111480030625
    147573952589676412939 2 55340232221128654858 body

private theorem prices_congr {s s' z z' a a' t t' : Nat}
    (hs : s = s') (hz : z = z') (ha : a = a') (ht : t = t') (body : Nat) :
    atPrices s z a t body = atPrices s' z' a' t' body := by
  subst_vars
  rfl

private theorem budget_eq (body : Nat) : tableBudget body = literalBudget body :=
  prices_congr sortPrice sizePrice allocPrice tailPrice body

private theorem phase_at_prices (E : Nat) :
    FourthEncoderTypedPhase2.phase2Bound E = tableBudget (FourthEncoderCallerBody.encBodyBound E) := by
  unfold FourthEncoderTypedPhase2.phase2Bound FourthEncoderTypedSuffix.afterKeysBound
    FourthEncoderTypedSuffix.cBound tableBudget atPrices
  rfl

theorem phase2Bound_eq :
    FourthEncoderTypedPhase2.phase2Bound FourthBalEncodeCallee.encoderCost = phase2BoundTight :=
  (phase_at_prices FourthBalEncodeCallee.encoderCost).trans
    ((budget_eq _).trans (by decide +kernel))

private theorem cast_price (P : Nat → Prop) (h : P (FourthEncoderTypedPhase2.phase2Bound FourthBalEncodeCallee.encoderCost)) : P phase2BoundTight :=
  Eq.mp (congrArg P phase2Bound_eq) h

theorem phase2_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) :
    Inv.CostP σ guestCtx (AwInv a) phase2 phase2BoundTight := by
  apply cast_price (Inv.CostP σ guestCtx (AwInv a) phase2)
  exact FourthEncoderTypedPhase2.phase2_cost hK hc hgw hBA
    (FourthBalEncodeCallee.callee_cost hK hc)

#print axioms phase2Bound_eq
#print axioms phase2_cost
end FourthEncoderPhase2Final
