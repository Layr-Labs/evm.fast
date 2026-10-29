import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data811
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned811 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables811 : List Nat := [63, 31, 95, 15, 79, 47, 7, 71, 39, 23, 87, 55, 3, 67, 35, 19, 83, 51, 11, 75, 43, 27, 91, 59, 65, 33, 17, 81, 49, 9,
  73, 41, 25, 89, 57, 5, 69, 37, 21, 85, 53, 13, 77, 45, 29, 93, 61, 64, 32, 96, 16, 80, 48, 8, 72, 40, 24, 88, 56, 4,
  68, 36, 20, 84, 52, 12, 76, 44, 28, 92, 60, 2, 66, 34, 18, 82, 50, 10, 74, 42, 26, 90, 58, 6, 70, 38, 22, 86, 54, 14,
  78, 46, 30, 94, 62]
def context811 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 194 (Flapjack.Spt.ls 192)) 190
          (Flapjack.Spt.bs Flapjack.Spt.ln 188 (Flapjack.Spt.ls 186)))
        184
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 182 (Flapjack.Spt.ls 180)) 178
          (Flapjack.Spt.bs Flapjack.Spt.ln 176 (Flapjack.Spt.ls 174))))
      172
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 170 (Flapjack.Spt.ls 168)) 166
          (Flapjack.Spt.bs Flapjack.Spt.ln 164 (Flapjack.Spt.ls 162)))
        160
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 158 (Flapjack.Spt.ls 156)) 154
          (Flapjack.Spt.bs Flapjack.Spt.ln 152 (Flapjack.Spt.ls 150)))))
    148
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 146 (Flapjack.Spt.ls 144)) 142
          (Flapjack.Spt.bs Flapjack.Spt.ln 140 (Flapjack.Spt.ls 138)))
        136
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 134 (Flapjack.Spt.ls 132)) 130
          (Flapjack.Spt.bs Flapjack.Spt.ln 128 (Flapjack.Spt.ls 126))))
      124
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 122 (Flapjack.Spt.ls 120)) 118
          (Flapjack.Spt.bs Flapjack.Spt.ln 116 (Flapjack.Spt.ls 114)))
        112
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 110 (Flapjack.Spt.ls 108)) 106
          (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 102 (Flapjack.Spt.ls 100))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 98 (Flapjack.Spt.ls 96)) 94
          (Flapjack.Spt.bs Flapjack.Spt.ln 92 (Flapjack.Spt.ls 90)))
        88
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 86 (Flapjack.Spt.ls 84)) 82
          (Flapjack.Spt.bs Flapjack.Spt.ln 80 (Flapjack.Spt.ls 78))))
      76
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 72)) 70
          (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 66)))
        64
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 60)) 58
          (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 54)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 50)) 48
          (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 44)))
        42
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 40 (Flapjack.Spt.ls 38)) 36
          (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 32))))
      30
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)) 24
          (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 20)))
        18
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 14)) 12
          (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.ls 6))))))
theorem assigned811_eq : accVarsHOL Loop.output811.2.2 (.ln : Spt Unit) = assigned811 := by
  kernel_rfl
theorem variables811_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output811.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output811.2.1)) = variables811 := by
  rw [assigned811_eq]
  kernel_rfl
theorem context811_eq : makeCtxtHOL 2 (Loop.output811.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output811.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output811.2.1)))
    (.ln : Spt Nat) = context811 := by
  rw [variables811_eq]
  kernel_rfl
#print axioms assigned811_eq
#print axioms variables811_eq
#print axioms context811_eq
end InitECandidate.Proofs.FrontendStages.Word
