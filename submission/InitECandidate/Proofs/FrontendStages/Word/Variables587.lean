import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data587
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned587 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables587 : List Nat := [63, 31, 15, 47, 7, 71, 39, 23, 55, 3, 67, 35, 19, 51, 11, 43, 27, 59, 1, 65, 33, 17, 49, 9, 73, 41, 25, 57, 5, 69, 37,
  21, 53, 13, 45, 29, 61, 64, 32, 16, 48, 8, 72, 40, 24, 56, 4, 68, 36, 20, 52, 12, 44, 28, 60, 2, 66, 34, 18, 50, 10,
  74, 42, 26, 58, 6, 70, 38, 22, 54, 14, 46, 30, 62]
def context587 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 150) 148 (Flapjack.Spt.ls 146)) 144
        (Flapjack.Spt.bs (Flapjack.Spt.ls 142) 140 (Flapjack.Spt.bs Flapjack.Spt.ln 138 (Flapjack.Spt.ls 136))))
      134
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 132) 130 (Flapjack.Spt.bs Flapjack.Spt.ln 128 (Flapjack.Spt.ls 126))) 124
        (Flapjack.Spt.bs (Flapjack.Spt.ls 122) 120 (Flapjack.Spt.bs Flapjack.Spt.ln 118 (Flapjack.Spt.ls 116)))))
    114
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 112) 110 (Flapjack.Spt.ls 108)) 106
        (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 102 (Flapjack.Spt.bs Flapjack.Spt.ln 100 (Flapjack.Spt.ls 98))))
      96
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 92 (Flapjack.Spt.bs Flapjack.Spt.ln 90 (Flapjack.Spt.ls 88))) 86
        (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 82 (Flapjack.Spt.bs Flapjack.Spt.ln 80 (Flapjack.Spt.ls 78))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 74 (Flapjack.Spt.ls 72)) 70
        (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 66 (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 62))))
      60
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 56 (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 52))) 50
        (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 46 (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42)))))
    40
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 38) 36 (Flapjack.Spt.ls 34)) 32
        (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24))))
      22
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 20) 18 (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 14))) 12
        (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))))))
theorem assigned587_eq : accVarsHOL Loop.output587.2.2 (.ln : Spt Unit) = assigned587 := by
  kernel_rfl
theorem variables587_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output587.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output587.2.1)) = variables587 := by
  rw [assigned587_eq]
  kernel_rfl
theorem context587_eq : makeCtxtHOL 2 (Loop.output587.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output587.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output587.2.1)))
    (.ln : Spt Nat) = context587 := by
  rw [variables587_eq]
  kernel_rfl
#print axioms assigned587_eq
#print axioms variables587_eq
#print axioms context587_eq
end InitECandidate.Proofs.FrontendStages.Word
