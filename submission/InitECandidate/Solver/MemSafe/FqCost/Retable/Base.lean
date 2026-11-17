import InitECandidate.Solver.MemSafe.FqCost.CombCore
import InitECandidate.Solver.MemSafe.DivCost.Reverse.Main
import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S057
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def seed0 := StrideCost.DivRetable.table57
theorem seed0_sound : TblSound σ guestCtx seed0 := StrideCost.DivRetable.table57_sound
def seed1 := FqCost.CombCore.extend seed0 (nm "divmnu") (10^23)
theorem seed1_sound : TblSound σ guestCtx seed1 := FqCost.CombCore.extend_sound seed0_sound DivCost.Reverse.cc_divmnu
def seed2 := FqCost.CombCore.extend seed1 (nm "fq_mul_small") (600)
theorem seed2_sound : TblSound σ guestCtx seed2 := FqCost.CombCore.extend_sound seed1_sound FqCost.Small.cc_fq_mul_small
def seed3 := FqCost.CombCore.extend seed2 (nm "fq12_reduce") (20000)
theorem seed3_sound : TblSound σ guestCtx seed3 := FqCost.CombCore.extend_sound seed2_sound FqCost.cc_reduce
def seed4 := FqCost.CombCore.extend seed3 (nm "fq12_mul") (10^14)
theorem seed4_sound : TblSound σ guestCtx seed4 := FqCost.CombCore.extend_sound seed3_sound FqCost.cc_fq12_mul
def seed5 := FqCost.CombCore.extend seed4 (nm "fq12_sqr") (10^14)
theorem seed5_sound : TblSound σ guestCtx seed5 := FqCost.CombCore.extend_sound seed4_sound FqCost.cc_fq12_sqr
def table0 := seed5
theorem table0_sound : TblSound σ guestCtx table0 := seed5_sound
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.FqCost.Retable
