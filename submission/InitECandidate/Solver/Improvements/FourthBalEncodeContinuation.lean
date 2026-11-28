import InitECandidate.Solver.Improvements.AcceptedBalEncodeCore
import InitECandidate.Solver.Improvements.AcceptedBalEncodeIdentity
import InitECandidate.Solver.Improvements.FourthCapturedSignedLoop

/-! The actual storage continuation of bal_encode_account, with a captured
heap-key count. Original callee, inner-loop, sorting and tail allowances are
retained. Only this initialized outer storage-slot loop is reduced. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthBalEncodeContinuation
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedBalEncodeCore
open AcceptedIvvhCalleeCore (lv cw)
variable {σ : Type} {X : Ctx 64}

def slotLimit : Nat := 7864320
def SlotsBound (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ O N : BitVec 64,
    s.locals.lookup bSlots = some (.rStruct [.val (.word O), .val (.word N)]) ∧
    (N.toNat < 2^63 → N.toNat ≤ slotLimit)
def countE : ExpHOL 64 := .rfield 1 (lv bSlots)
def afterSlots : ProgHOL 64 := wrapS bHl4 bP bQ keysSec
def storageCost : Nat := slotLimit * (outerB + 1) + wrapCost + keysCost
def boundedCost : Nat := 3 + cB + cK + slotLimit * (outerB + 1) + tailB

theorem slotLimit_small : slotLimit < 2^63 := by decide
theorem slot_keeps : keepsB bSlots slotBody = true := by rfl

theorem count_eval {s : PanSemStateFiniteExact 64 σ} {O N : BitVec 64}
    (hs : s.locals.lookup bSlots = some (.rStruct [.val (.word O), .val (.word N)])) :
    ev s countE = some (.val (.word N)) := by
  rw [countE, ev_rfield (show ev s (lv bSlots) =
    some (.rStruct [.val (.word O), .val (.word N)]) from hs) 1]
  rfl

theorem field_congr {s t : PanSemStateFiniteExact 64 σ}
    (h : t.locals.lookup bSlots = s.locals.lookup bSlots) : ev t countE = ev s countE := by
  simp only [countE, AcceptedIvvhCalleeCore.lv, ev, evalHOLExact, h]

theorem storage_cost (hc : CalleeCosts σ X) :
    AcceptedLoopRules.CostP σ X SlotsBound storSec storageCost := by
  intro s hs ⟨O, N, hslots, hN⟩ hg
  have htail : Cost σ X afterSlots (wrapCost + keysCost) := wrapS_cost hc (keysSec_cost hc)
  have hp := FourthCapturedSignedLoop.cost_initialized_seq
    (i := bI) (E := countE) (C := N) slotLimit_small hN
    (slotBody_cost hc) (stepsB_sound bI true slotBody slot_steps)
    (fun _ => rfl)
    (fun st hexit => field_congr (keepsB_sound bSlots slotBody slot_keeps st hexit))
    (fun st => field_congr (by simp [setVarHOLFinite, FUPDATE, show bI ≠ bSlots by decide]))
    htail
  change AcceptedLoopRules.CostP σ X (FourthCapturedSignedLoop.CountEq countE N)
    (.dec bI .one (cw 0)
      (.seq (.while (.cmp .less (lv bI) countE) slotBody) afterSlots))
    (slotLimit * (outerB + 1) + (wrapCost + keysCost)) at hp
  have hq : AcceptedLoopRules.CostP σ X (FourthCapturedSignedLoop.CountEq countE N)
      (.dec bQ .one (.op .add [lv bP, cw 9])
        (.dec bI .one (cw 0)
          (.seq (.while (.cmp .less (lv bI) countE) slotBody) afterSlots)))
      (slotLimit * (outerB + 1) + (wrapCost + keysCost)) := by
    refine AcceptedLoopRules.costP_dec fun st hctx hP value he hshape => ?_
    have hn' : FourthCapturedSignedLoop.CountEq countE N
        (setVarHOLFinite bQ value st) := by
      exact (field_congr (by simp [setVarHOLFinite, FUPDATE, show bQ ≠ bSlots by decide])).trans hP
    exact hp.pre (fun t ht heq => by subst t; exact hn')
  have heq : slotLimit * (outerB + 1) + (wrapCost + keysCost) = storageCost := by
    unfold storageCost
    omega
  rw [heq] at hq
  exact hq s hs (count_eval hslots) hg

theorem boundedCost_eq : boundedCost =
    45493791155054879972724940561630615966403676903 := by decide

#print axioms storage_cost
end FourthBalEncodeContinuation
