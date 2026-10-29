import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data583
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned583 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables583 : List Nat := [63, 31, 15, 47, 7, 39, 23, 55, 67, 35, 19, 51, 11, 43, 27, 59, 65, 33, 17, 49, 9, 41, 25, 57, 5, 37, 21, 53, 13, 45,
  29, 61, 64, 32, 16, 48, 8, 40, 24, 56, 4, 36, 20, 52, 12, 44, 28, 60, 66, 34, 18, 50, 10, 42, 26, 58, 6, 38, 22, 54,
  14, 46, 30, 62]
def context583 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 136) 134 (Flapjack.Spt.ls 132)) 130
        (Flapjack.Spt.bs (Flapjack.Spt.ls 128) 126 (Flapjack.Spt.ls 124)))
      122
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 120) 118 (Flapjack.Spt.ls 116)) 114
        (Flapjack.Spt.bs (Flapjack.Spt.ls 112) 110 (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 106)))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 102 (Flapjack.Spt.ls 100)) 98
        (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 94 (Flapjack.Spt.ls 92)))
      90
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 86 (Flapjack.Spt.ls 84)) 82
        (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 78 (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 74))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 70 (Flapjack.Spt.ls 68)) 66
        (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 62 (Flapjack.Spt.ls 60)))
      58
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 54 (Flapjack.Spt.ls 52)) 50
        (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 46 (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 38 (Flapjack.Spt.ls 36)) 34
        (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26))))
      8
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.ls 20)) 18
        (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 10))))))
theorem assigned583_eq : accVarsHOL Loop.output583.2.2 (.ln : Spt Unit) = assigned583 := by
  kernel_rfl
theorem variables583_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output583.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output583.2.1)) = variables583 := by
  rw [assigned583_eq]
  kernel_rfl
theorem context583_eq : makeCtxtHOL 2 (Loop.output583.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output583.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output583.2.1)))
    (.ln : Spt Nat) = context583 := by
  rw [variables583_eq]
  kernel_rfl
#print axioms assigned583_eq
#print axioms variables583_eq
#print axioms context583_eq
end InitECandidate.Proofs.FrontendStages.Word
