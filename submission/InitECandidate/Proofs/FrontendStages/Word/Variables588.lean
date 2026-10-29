import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data588
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned588 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables588 : List Nat := [63, 31, 15, 79, 47, 71, 39, 23, 55, 67, 35, 19, 51, 11, 75, 43, 27, 59, 65, 33, 17, 81, 49, 9, 73, 41, 25, 57, 69, 37,
  21, 53, 13, 77, 45, 29, 61, 64, 32, 16, 80, 48, 72, 40, 24, 56, 68, 36, 20, 52, 12, 76, 44, 28, 60, 66, 34, 18, 82,
  50, 10, 74, 42, 26, 58, 70, 38, 22, 54, 14, 78, 46, 30, 62]
def context588 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 166) 164 (Flapjack.Spt.bs Flapjack.Spt.ln 162 (Flapjack.Spt.ls 160))) 158
        (Flapjack.Spt.bs (Flapjack.Spt.ls 156) 154 (Flapjack.Spt.bs Flapjack.Spt.ln 152 (Flapjack.Spt.ls 150))))
      14
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 148) 146 (Flapjack.Spt.bs Flapjack.Spt.ln 144 (Flapjack.Spt.ls 142))) 140
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 138 (Flapjack.Spt.ls 136)) 134
          (Flapjack.Spt.bs Flapjack.Spt.ln 132 (Flapjack.Spt.ls 130)))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 128) 126 (Flapjack.Spt.bs Flapjack.Spt.ln 124 (Flapjack.Spt.ls 122))) 120
        (Flapjack.Spt.bs (Flapjack.Spt.ls 118) 116 (Flapjack.Spt.bs Flapjack.Spt.ln 114 (Flapjack.Spt.ls 112))))
      10
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 110) 108 (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 104))) 18
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 102 (Flapjack.Spt.ls 100)) 98
          (Flapjack.Spt.bs Flapjack.Spt.ln 96 (Flapjack.Spt.ls 94))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 90 (Flapjack.Spt.bs Flapjack.Spt.ln 88 (Flapjack.Spt.ls 86))) 84
        (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 80 (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 76))))
      12
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 72 (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 68))) 66
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 62)) 60
          (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 56)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 52 (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 48))) 46
        (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 42 (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 38))))
      8
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 30))) 16
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)) 24
          (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 20))))))
theorem assigned588_eq : accVarsHOL Loop.output588.2.2 (.ln : Spt Unit) = assigned588 := by
  kernel_rfl
theorem variables588_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output588.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output588.2.1)) = variables588 := by
  rw [assigned588_eq]
  kernel_rfl
theorem context588_eq : makeCtxtHOL 2 (Loop.output588.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output588.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output588.2.1)))
    (.ln : Spt Nat) = context588 := by
  rw [variables588_eq]
  kernel_rfl
#print axioms assigned588_eq
#print axioms variables588_eq
#print axioms context588_eq
end InitECandidate.Proofs.FrontendStages.Word
