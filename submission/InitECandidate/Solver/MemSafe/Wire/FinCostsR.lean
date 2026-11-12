import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Frames.FinRb
import InitECandidate.Solver.MemSafe.Wire.FinCosts
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The callee costs of `finish_child` for the final hook family `guestHooksR`. -/
theorem finCosts_guestR {σ : Type} :
    Frames.FinCosts σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) Types.tEV finBsGuest where
  sr := calleeCost_guest (by decide_cbv)
  rf := calleeCost_guest (by decide_cbv)
  fh := calleeCost_guest (by decide_cbv)
  cf := calleeCost_guest (by decide_cbv)
  rb := by
    have h := Frames.rb_condCost (hF := Rec.foldOK_guestR (σ := σ)) (hT := Hooks.htabHooks_guestR)
      (calleeCost_guest (B := 92233720368547758087) (by decide_cbv))
    rw [show (2 : Nat) ^ 59 = 576460752303423488 from rfl] at h
    exact h
  ie := calleeCost_guest (by decide_cbv)
  cr := calleeCost_guest (by decide_cbv)
  sd := calleeCost_guest (by decide_cbv)
  sp := calleeCost_guest (by decide_cbv)
  ios := calleeCost_guest (by decide_cbv)
  au := calleeCost_guest (by decide_cbv)
  mn := calleeCost_guest (by decide_cbv)
  mc := calleeCost_guest (by decide_cbv)
  scr := calleeCost_guest (by decide_cbv)
  fmr := calleeCost_guest (by decide_cbv)
  pc := calleeCost_guest (by decide_cbv)

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.finCosts_guestR
