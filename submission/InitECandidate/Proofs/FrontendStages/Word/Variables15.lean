import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data15
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned15 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
def variables15 : List Nat := [7, 3, 9, 5, 8, 4, 6]
def context15 : Spt Nat := Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 16))) 2
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 12)) 4
    (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)))
theorem assigned15_eq : accVarsHOL Loop.output15.2.2 (.ln : Spt Unit) = assigned15 := by
  kernel_rfl
theorem variables15_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output15.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output15.2.1)) = variables15 := by
  rw [assigned15_eq]
  kernel_rfl
theorem context15_eq : makeCtxtHOL 2 (Loop.output15.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output15.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output15.2.1)))
    (.ln : Spt Nat) = context15 := by
  rw [variables15_eq]
  kernel_rfl
#print axioms assigned15_eq
#print axioms variables15_eq
#print axioms context15_eq
end InitECandidate.Proofs.FrontendStages.Word
