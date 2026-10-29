import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data649
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned649 : NumSet := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
def variables649 : List Nat := [3, 1, 4, 2]
def context649 : Spt Nat := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))
  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
theorem assigned649_eq : accVarsHOL Loop.output649.2.2 (.ln : Spt Unit) = assigned649 := by
  kernel_rfl
theorem variables649_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output649.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output649.2.1)) = variables649 := by
  rw [assigned649_eq]
  kernel_rfl
theorem context649_eq : makeCtxtHOL 2 (Loop.output649.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output649.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output649.2.1)))
    (.ln : Spt Nat) = context649 := by
  rw [variables649_eq]
  kernel_rfl
#print axioms assigned649_eq
#print axioms variables649_eq
#print axioms context649_eq
end InitECandidate.Proofs.FrontendStages.Word
