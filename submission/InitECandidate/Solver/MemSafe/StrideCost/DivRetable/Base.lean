import InitECandidate.Solver.MemSafe.StrideCost.CoreNext
import InitECandidate.Solver.MemSafe.DivCost.Main
import InitECandidate.Solver.MemSafe.DivCost.Wrappers
import InitECandidate.Solver.MemSafe.ModexpCost.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def seed0 := BlsCost.Callers.table12
theorem seed0_sound : TblSound σ guestCtx seed0 := BlsCost.Callers.table12_sound
def seed1 := StrideCost.CoreNext.extend seed0 (nm "div64by32") (33)
theorem seed1_sound : TblSound σ guestCtx seed1 := StrideCost.CoreNext.extend_sound seed0_sound (DivCost.Div32.callee_cost guestCtx_code)
def seed2 := StrideCost.CoreNext.extend seed1 (nm "udivmod") (66)
theorem seed2_sound : TblSound σ guestCtx seed2 := StrideCost.CoreNext.extend_sound seed1_sound (DivCost.Scalar.cc_udivmod)
def seed3 := StrideCost.CoreNext.extend seed2 (nm "udiv") (67)
theorem seed3_sound : TblSound σ guestCtx seed3 := StrideCost.CoreNext.extend_sound seed2_sound (DivCost.Wrappers.cc_udiv)
def seed4 := StrideCost.CoreNext.extend seed3 (nm "umod") (67)
theorem seed4_sound : TblSound σ guestCtx seed4 := StrideCost.CoreNext.extend_sound seed3_sound (DivCost.Wrappers.cc_umod)
def seed5 := StrideCost.CoreNext.extend seed4 (nm "divmnu") (10^32)
theorem seed5_sound : TblSound σ guestCtx seed5 := StrideCost.CoreNext.extend_sound seed4_sound (DivCost.Main.cc_divmnu)
def seed6 := StrideCost.CoreNext.extend seed5 (nm "pre_modexp") (10^47)
theorem seed6_sound : TblSound σ guestCtx seed6 := StrideCost.CoreNext.extend_sound seed5_sound (ModexpCost.cc_pre_modexp)
def table0 := seed6
theorem table0_sound : TblSound σ guestCtx table0 := seed6_sound
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
