import InitE.SourceCodeFacts
import InitECandidate.Proofs.SourceStackComputation

open scoped InitECandidate.Proofs.CompilerComputation

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

/-! Static facts about the fixed source. Computation proofs use proof-producing `decide_cbv` and are checked by the kernel.
The executable stack analyzer is linked to the logical compiler by kernel equalities. -/
namespace InitE
open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Backend
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString

def sourceStackBound : Option Nat := analyzeSourceStack sourceDeclarations

theorem sourceStackBound_eq : sourceStackBound = some 538 := by
  unfold sourceStackBound
  rw [analyzeSourceStack_fixed_eq]
  conv => lhs; cbv
  try rfl

end InitE
