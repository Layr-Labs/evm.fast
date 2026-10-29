import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data600
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned600 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
def variables600 : List Nat := [15, 7, 3, 19, 11, 1, 17, 9, 5, 21, 13, 16, 8, 4, 20, 12, 2, 18, 10, 6, 22, 14]
def context600 : Spt Nat := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42)) 40
      (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 36)))
    34
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30)) 28
      (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))))
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 20)) 18
      (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 14)))
    12
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)) 6
      (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
theorem assigned600_eq : accVarsHOL Loop.output600.2.2 (.ln : Spt Unit) = assigned600 := by
  kernel_rfl
theorem variables600_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output600.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output600.2.1)) = variables600 := by
  rw [assigned600_eq]
  kernel_rfl
theorem context600_eq : makeCtxtHOL 2 (Loop.output600.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output600.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output600.2.1)))
    (.ln : Spt Nat) = context600 := by
  rw [variables600_eq]
  kernel_rfl
#print axioms assigned600_eq
#print axioms variables600_eq
#print axioms context600_eq
end InitECandidate.Proofs.FrontendStages.Word
