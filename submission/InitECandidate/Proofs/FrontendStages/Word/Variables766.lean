import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data766
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned766 : NumSet := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
def variables766 : List Nat := [3, 1, 4, 2]
def context766 : Spt Nat := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))
  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
theorem assigned766_eq : accVarsHOL Loop.output766.2.2 (.ln : Spt Unit) = assigned766 := by
  kernel_rfl
theorem variables766_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output766.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output766.2.1)) = variables766 := by
  rw [assigned766_eq]
  kernel_rfl
theorem context766_eq : makeCtxtHOL 2 (Loop.output766.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output766.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output766.2.1)))
    (.ln : Spt Nat) = context766 := by
  rw [variables766_eq]
  kernel_rfl
#print axioms assigned766_eq
#print axioms variables766_eq
#print axioms context766_eq
end InitECandidate.Proofs.FrontendStages.Word
