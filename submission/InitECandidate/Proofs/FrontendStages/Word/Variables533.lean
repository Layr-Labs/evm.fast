import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data533
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned533 : NumSet := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
def variables533 : List Nat := [3, 1, 4, 2]
def context533 : Spt Nat := Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)) 2
  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))
theorem assigned533_eq : accVarsHOL Loop.output533.2.2 (.ln : Spt Unit) = assigned533 := by
  kernel_rfl
theorem variables533_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output533.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output533.2.1)) = variables533 := by
  rw [assigned533_eq]
  kernel_rfl
theorem context533_eq : makeCtxtHOL 2 (Loop.output533.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output533.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output533.2.1)))
    (.ln : Spt Nat) = context533 := by
  rw [variables533_eq]
  kernel_rfl
#print axioms assigned533_eq
#print axioms variables533_eq
#print axioms context533_eq
end InitECandidate.Proofs.FrontendStages.Word
