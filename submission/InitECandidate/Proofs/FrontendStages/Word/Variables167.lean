import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data167
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned167 : NumSet := Flapjack.Spt.bn
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
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
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
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables167 : List Nat := [63, 31, 95, 15, 79, 47, 7, 71, 39, 23, 87, 55, 3, 67, 35, 99, 19, 83, 51, 11, 75, 43, 27, 91, 59, 65, 33, 97, 17, 81,
  49, 9, 73, 41, 25, 89, 57, 5, 69, 37, 21, 85, 53, 13, 77, 45, 29, 93, 61, 64, 32, 96, 16, 80, 48, 8, 72, 40, 24, 88,
  56, 4, 68, 36, 100, 20, 84, 52, 12, 76, 44, 28, 92, 60, 2, 66, 34, 98, 18, 82, 50, 10, 74, 42, 26, 90, 58, 6, 70, 38,
  22, 86, 54, 14, 78, 46, 30, 94, 62]
def context167 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 202 (Flapjack.Spt.ls 200)) 198
          (Flapjack.Spt.bs Flapjack.Spt.ln 196 (Flapjack.Spt.ls 194)))
        192
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 190 (Flapjack.Spt.ls 188)) 186
          (Flapjack.Spt.bs Flapjack.Spt.ln 184 (Flapjack.Spt.ls 182))))
      180
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 178 (Flapjack.Spt.ls 176)) 174
          (Flapjack.Spt.bs Flapjack.Spt.ln 172 (Flapjack.Spt.ls 170)))
        168
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 166 (Flapjack.Spt.ls 164)) 162
          (Flapjack.Spt.bs (Flapjack.Spt.ls 160) 158 (Flapjack.Spt.ls 156)))))
    154
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 152 (Flapjack.Spt.ls 150)) 148
          (Flapjack.Spt.bs Flapjack.Spt.ln 146 (Flapjack.Spt.ls 144)))
        142
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 140 (Flapjack.Spt.ls 138)) 136
          (Flapjack.Spt.bs (Flapjack.Spt.ls 134) 132 (Flapjack.Spt.ls 130))))
      128
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 126 (Flapjack.Spt.ls 124)) 122
          (Flapjack.Spt.bs Flapjack.Spt.ln 120 (Flapjack.Spt.ls 118)))
        116
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 114 (Flapjack.Spt.ls 112)) 110
          (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 106 (Flapjack.Spt.ls 104))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 102 (Flapjack.Spt.ls 100)) 98
          (Flapjack.Spt.bs Flapjack.Spt.ln 96 (Flapjack.Spt.ls 94)))
        92
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 90 (Flapjack.Spt.ls 88)) 86
          (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 82))))
      80
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 76)) 74
          (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 70)))
        68
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 64)) 62
          (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 58 (Flapjack.Spt.ls 56)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 52)) 50
          (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 46)))
        44
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 40)) 38
          (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.ls 32))))
      30
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26)) 24
          (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 20)))
        18
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 14)) 12
          (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.ls 6))))))
theorem assigned167_eq : accVarsHOL Loop.output167.2.2 (.ln : Spt Unit) = assigned167 := by
  kernel_rfl
theorem variables167_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output167.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output167.2.1)) = variables167 := by
  rw [assigned167_eq]
  kernel_rfl
theorem context167_eq : makeCtxtHOL 2 (Loop.output167.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output167.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output167.2.1)))
    (.ln : Spt Nat) = context167 := by
  rw [variables167_eq]
  kernel_rfl
#print axioms assigned167_eq
#print axioms variables167_eq
#print axioms context167_eq
end InitECandidate.Proofs.FrontendStages.Word
