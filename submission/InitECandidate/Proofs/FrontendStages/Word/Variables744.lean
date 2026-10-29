import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data744
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned744 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables744 : List Nat := [63, 31, 95, 15, 79, 47, 111, 7, 71, 39, 103, 23, 87, 55, 119, 67, 35, 99, 19, 83, 51, 115, 11, 75, 43, 107, 27, 91, 59,
  65, 33, 97, 17, 81, 49, 113, 9, 73, 41, 105, 25, 89, 57, 121, 69, 37, 101, 21, 85, 53, 117, 13, 77, 45, 109, 29, 93,
  61, 64, 32, 96, 16, 80, 48, 112, 8, 72, 40, 104, 24, 88, 56, 120, 68, 36, 100, 20, 84, 52, 116, 12, 76, 44, 108, 28,
  92, 60, 66, 34, 98, 18, 82, 50, 114, 10, 74, 42, 106, 26, 90, 58, 122, 70, 38, 102, 22, 86, 54, 118, 14, 78, 46, 110,
  30, 94, 62]
def context744 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 246 (Flapjack.Spt.ls 244)) 242
          (Flapjack.Spt.bs (Flapjack.Spt.ls 240) 238 (Flapjack.Spt.ls 236)))
        234
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 232) 230 (Flapjack.Spt.ls 228)) 226
          (Flapjack.Spt.bs (Flapjack.Spt.ls 224) 222 (Flapjack.Spt.ls 220))))
      14
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 218) 216 (Flapjack.Spt.ls 214)) 212
          (Flapjack.Spt.bs (Flapjack.Spt.ls 210) 208 (Flapjack.Spt.ls 206)))
        204
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 202) 200 (Flapjack.Spt.ls 198)) 196
          (Flapjack.Spt.bs (Flapjack.Spt.ls 194) 192 (Flapjack.Spt.ls 190)))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 188 (Flapjack.Spt.ls 186)) 184
          (Flapjack.Spt.bs (Flapjack.Spt.ls 182) 180 (Flapjack.Spt.ls 178)))
        176
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 174) 172 (Flapjack.Spt.ls 170)) 168
          (Flapjack.Spt.bs (Flapjack.Spt.ls 166) 164 (Flapjack.Spt.ls 162))))
      10
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 160) 158 (Flapjack.Spt.ls 156)) 154
          (Flapjack.Spt.bs (Flapjack.Spt.ls 152) 150 (Flapjack.Spt.ls 148)))
        146
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 144) 142 (Flapjack.Spt.ls 140)) 138
          (Flapjack.Spt.bs (Flapjack.Spt.ls 136) 134 (Flapjack.Spt.ls 132))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 130 (Flapjack.Spt.ls 128)) 126
          (Flapjack.Spt.bs (Flapjack.Spt.ls 124) 122 (Flapjack.Spt.ls 120)))
        118
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 116) 114 (Flapjack.Spt.ls 112)) 110
          (Flapjack.Spt.bs (Flapjack.Spt.ls 108) 106 (Flapjack.Spt.ls 104))))
      12
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 100 (Flapjack.Spt.ls 98)) 96
          (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 92 (Flapjack.Spt.ls 90)))
        88
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 84 (Flapjack.Spt.ls 82)) 80
          (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 76 (Flapjack.Spt.ls 74)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 70)) 68
          (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 64 (Flapjack.Spt.ls 62)))
        60
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 56 (Flapjack.Spt.ls 54)) 52
          (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 48 (Flapjack.Spt.ls 46))))
      8
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 44) 42 (Flapjack.Spt.ls 40)) 38
          (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.ls 32)))
        30
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.ls 24)) 22
          (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 18 (Flapjack.Spt.ls 16))))))
theorem assigned744_eq : accVarsHOL Loop.output744.2.2 (.ln : Spt Unit) = assigned744 := by
  kernel_rfl
theorem variables744_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output744.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output744.2.1)) = variables744 := by
  rw [assigned744_eq]
  kernel_rfl
theorem context744_eq : makeCtxtHOL 2 (Loop.output744.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output744.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output744.2.1)))
    (.ln : Spt Nat) = context744 := by
  rw [variables744_eq]
  kernel_rfl
#print axioms assigned744_eq
#print axioms variables744_eq
#print axioms context744_eq
end InitECandidate.Proofs.FrontendStages.Word
