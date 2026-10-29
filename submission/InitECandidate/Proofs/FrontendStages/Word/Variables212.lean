import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data212
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned212 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
def variables212 : List Nat := [15, 7, 23, 3, 19, 11, 27, 17, 9, 25, 5, 21, 13, 16, 8, 24, 4, 20, 12, 2, 18, 10, 26, 6, 22, 14]
def context212 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 54)) 52
      (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 48 (Flapjack.Spt.ls 46)))
    44
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 40)) 38
      (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.ls 32))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)) 26
      (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.ls 20)))
    4
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 16 (Flapjack.Spt.ls 14)) 12
      (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.ls 6))))
theorem assigned212_eq : accVarsHOL Loop.output212.2.2 (.ln : Spt Unit) = assigned212 := by
  kernel_rfl
theorem variables212_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output212.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output212.2.1)) = variables212 := by
  rw [assigned212_eq]
  kernel_rfl
theorem context212_eq : makeCtxtHOL 2 (Loop.output212.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output212.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output212.2.1)))
    (.ln : Spt Nat) = context212 := by
  rw [variables212_eq]
  kernel_rfl
#print axioms assigned212_eq
#print axioms variables212_eq
#print axioms context212_eq
end InitECandidate.Proofs.FrontendStages.Word
