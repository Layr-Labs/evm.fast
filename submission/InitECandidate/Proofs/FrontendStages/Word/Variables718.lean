import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data718
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned718 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables718 : List Nat := [63, 31, 95, 15, 79, 47, 7, 71, 39, 103, 23, 87, 55, 3, 67, 35, 99, 19, 83, 51, 11, 75, 43, 107, 27, 91, 59, 65, 33, 97,
  17, 81, 49, 9, 73, 41, 105, 25, 89, 57, 5, 69, 37, 101, 21, 85, 53, 13, 77, 45, 109, 29, 93, 61, 64, 32, 96, 16, 80,
  48, 8, 72, 40, 104, 24, 88, 56, 4, 68, 36, 100, 20, 84, 52, 12, 76, 44, 108, 28, 92, 60, 2, 66, 34, 98, 18, 82, 50,
  10, 74, 42, 106, 26, 90, 58, 6, 70, 38, 102, 22, 86, 54, 14, 78, 46, 110, 30, 94, 62]
def context718 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 222 (Flapjack.Spt.ls 220)) 218
          (Flapjack.Spt.bs (Flapjack.Spt.ls 216) 214 (Flapjack.Spt.ls 212)))
        210
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 208 (Flapjack.Spt.ls 206)) 204
          (Flapjack.Spt.bs (Flapjack.Spt.ls 202) 200 (Flapjack.Spt.ls 198))))
      196
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 194 (Flapjack.Spt.ls 192)) 190
          (Flapjack.Spt.bs (Flapjack.Spt.ls 188) 186 (Flapjack.Spt.ls 184)))
        182
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 180 (Flapjack.Spt.ls 178)) 176
          (Flapjack.Spt.bs (Flapjack.Spt.ls 174) 172 (Flapjack.Spt.ls 170)))))
    168
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 166 (Flapjack.Spt.ls 164)) 162
          (Flapjack.Spt.bs (Flapjack.Spt.ls 160) 158 (Flapjack.Spt.ls 156)))
        154
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 152 (Flapjack.Spt.ls 150)) 148
          (Flapjack.Spt.bs (Flapjack.Spt.ls 146) 144 (Flapjack.Spt.ls 142))))
      140
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 138 (Flapjack.Spt.ls 136)) 134
          (Flapjack.Spt.bs (Flapjack.Spt.ls 132) 130 (Flapjack.Spt.ls 128)))
        126
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 124 (Flapjack.Spt.ls 122)) 120
          (Flapjack.Spt.bs (Flapjack.Spt.ls 118) 116 (Flapjack.Spt.ls 114))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 112 (Flapjack.Spt.ls 110)) 108
          (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 104 (Flapjack.Spt.ls 102)))
        100
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 98 (Flapjack.Spt.ls 96)) 94
          (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 90 (Flapjack.Spt.ls 88))))
      86
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 82)) 80
          (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 76 (Flapjack.Spt.ls 74)))
        72
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 70 (Flapjack.Spt.ls 68)) 66
          (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 62 (Flapjack.Spt.ls 60)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 58 (Flapjack.Spt.ls 56)) 54
          (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 50 (Flapjack.Spt.ls 48)))
        46
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42)) 40
          (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 36 (Flapjack.Spt.ls 34))))
      32
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)) 26
          (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.ls 20)))
        18
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 14)) 12
          (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.ls 6))))))
theorem assigned718_eq : accVarsHOL Loop.output718.2.2 (.ln : Spt Unit) = assigned718 := by
  kernel_rfl
theorem variables718_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output718.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output718.2.1)) = variables718 := by
  rw [assigned718_eq]
  kernel_rfl
theorem context718_eq : makeCtxtHOL 2 (Loop.output718.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output718.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output718.2.1)))
    (.ln : Spt Nat) = context718 := by
  rw [variables718_eq]
  kernel_rfl
#print axioms assigned718_eq
#print axioms variables718_eq
#print axioms context718_eq
end InitECandidate.Proofs.FrontendStages.Word
