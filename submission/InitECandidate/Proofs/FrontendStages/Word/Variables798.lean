import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data798
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned798 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
def variables798 : List Nat := [31, 15, 7, 39, 23, 3, 35, 19, 11, 27, 1, 33, 17, 9, 25, 5, 21, 13, 29, 32, 16, 8, 40, 24, 4, 36, 20, 12, 28, 2, 34, 18,
  10, 26, 6, 38, 22, 14, 30]
def context798 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 78 (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 74)))
      72 (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 68 (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 64))))
    62
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 58 (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 54)))
      52
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 48)) 46
        (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42)))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 38 (Flapjack.Spt.ls 36)) 34
      (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26))))
    24
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 20 (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 16)))
      14
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 10)) 8
        (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4)))))
theorem assigned798_eq : accVarsHOL Loop.output798.2.2 (.ln : Spt Unit) = assigned798 := by
  kernel_rfl
theorem variables798_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output798.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output798.2.1)) = variables798 := by
  rw [assigned798_eq]
  kernel_rfl
theorem context798_eq : makeCtxtHOL 2 (Loop.output798.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output798.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output798.2.1)))
    (.ln : Spt Nat) = context798 := by
  rw [variables798_eq]
  kernel_rfl
#print axioms assigned798_eq
#print axioms variables798_eq
#print axioms context798_eq
end InitECandidate.Proofs.FrontendStages.Word
