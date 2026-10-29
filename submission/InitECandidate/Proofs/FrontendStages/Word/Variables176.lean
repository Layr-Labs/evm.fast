import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data176
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned176 : NumSet := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
def variables176 : List Nat := [3, 1, 4, 2]
def context176 : Spt Nat := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))
  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
theorem assigned176_eq : accVarsHOL Loop.output176.2.2 (.ln : Spt Unit) = assigned176 := by
  kernel_rfl
theorem variables176_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output176.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output176.2.1)) = variables176 := by
  rw [assigned176_eq]
  kernel_rfl
theorem context176_eq : makeCtxtHOL 2 (Loop.output176.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output176.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output176.2.1)))
    (.ln : Spt Nat) = context176 := by
  rw [variables176_eq]
  kernel_rfl
#print axioms assigned176_eq
#print axioms variables176_eq
#print axioms context176_eq
end InitECandidate.Proofs.FrontendStages.Word
