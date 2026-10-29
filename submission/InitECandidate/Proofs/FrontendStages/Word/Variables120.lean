import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data120
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned120 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
def variables120 : List Nat := [7, 3, 11, 9, 5, 8, 4, 12, 2, 10, 6]
def context120 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)) 22
    (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 18 (Flapjack.Spt.ls 16)))
  2
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 12)) 4
    (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.ls 6)))
theorem assigned120_eq : accVarsHOL Loop.output120.2.2 (.ln : Spt Unit) = assigned120 := by
  kernel_rfl
theorem variables120_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output120.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output120.2.1)) = variables120 := by
  rw [assigned120_eq]
  kernel_rfl
theorem context120_eq : makeCtxtHOL 2 (Loop.output120.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output120.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output120.2.1)))
    (.ln : Spt Nat) = context120 := by
  rw [variables120_eq]
  kernel_rfl
#print axioms assigned120_eq
#print axioms variables120_eq
#print axioms context120_eq
end InitECandidate.Proofs.FrontendStages.Word
