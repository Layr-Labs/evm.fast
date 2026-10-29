import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data57
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned57 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
def variables57 : List Nat := [31, 15, 47, 39, 23, 55, 35, 19, 51, 11, 43, 27, 59, 33, 17, 49, 9, 41, 25, 57, 37, 21, 53, 13, 45, 29, 32, 16, 48, 8,
  40, 24, 56, 36, 20, 52, 12, 44, 28, 34, 18, 50, 10, 42, 26, 58, 38, 22, 54, 14, 46, 30]
def context57 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 120 (Flapjack.Spt.ls 118)) 116
        (Flapjack.Spt.bs (Flapjack.Spt.ls 114) 112 (Flapjack.Spt.ls 110)))
      14
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 106 (Flapjack.Spt.ls 104)) 102
        (Flapjack.Spt.bs (Flapjack.Spt.ls 100) 98 (Flapjack.Spt.ls 96))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 92)) 90
        (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 86 (Flapjack.Spt.ls 84)))
      10
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 80 (Flapjack.Spt.ls 78)) 76
        (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 72 (Flapjack.Spt.ls 70)))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 66)) 64
        (Flapjack.Spt.bs (Flapjack.Spt.ls 62) 60 (Flapjack.Spt.ls 58)))
      12
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 54 (Flapjack.Spt.ls 52)) 50
        (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 46 (Flapjack.Spt.ls 44))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 40 (Flapjack.Spt.ls 38)) 36
        (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 32 (Flapjack.Spt.ls 30)))
      8
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.ls 24)) 16
        (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 20 (Flapjack.Spt.ls 18)))))
theorem assigned57_eq : accVarsHOL Loop.output57.2.2 (.ln : Spt Unit) = assigned57 := by
  kernel_rfl
theorem variables57_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output57.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output57.2.1)) = variables57 := by
  rw [assigned57_eq]
  kernel_rfl
theorem context57_eq : makeCtxtHOL 2 (Loop.output57.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output57.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output57.2.1)))
    (.ln : Spt Nat) = context57 := by
  rw [variables57_eq]
  kernel_rfl
#print axioms assigned57_eq
#print axioms variables57_eq
#print axioms context57_eq
end InitECandidate.Proofs.FrontendStages.Word
