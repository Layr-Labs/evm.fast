import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data582
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned582 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
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
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
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
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
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
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables582 : List Nat := [63, 31, 15, 47, 71, 39, 23, 55, 67, 35, 19, 51, 11, 75, 43, 27, 59, 65, 33, 17, 49, 9, 73, 41, 25, 57, 69, 37, 21, 53,
  13, 77, 45, 29, 61, 64, 32, 16, 48, 8, 72, 40, 24, 56, 68, 36, 20, 52, 12, 76, 44, 28, 60, 66, 34, 18, 50, 10, 74, 42,
  26, 58, 70, 38, 22, 54, 14, 46, 30, 62]
def context582 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 156) 154 (Flapjack.Spt.ls 152)) 150
        (Flapjack.Spt.bs (Flapjack.Spt.ls 148) 146 (Flapjack.Spt.bs Flapjack.Spt.ln 144 (Flapjack.Spt.ls 142))))
      14
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 140) 138 (Flapjack.Spt.bs Flapjack.Spt.ln 136 (Flapjack.Spt.ls 134))) 132
        (Flapjack.Spt.bs (Flapjack.Spt.ls 130) 128 (Flapjack.Spt.bs Flapjack.Spt.ln 126 (Flapjack.Spt.ls 124)))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 122) 120 (Flapjack.Spt.bs Flapjack.Spt.ln 118 (Flapjack.Spt.ls 116))) 114
        (Flapjack.Spt.bs (Flapjack.Spt.ls 112) 110 (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 106))))
      10
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 104) 102 (Flapjack.Spt.bs Flapjack.Spt.ln 100 (Flapjack.Spt.ls 98))) 96
        (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 92 (Flapjack.Spt.bs Flapjack.Spt.ln 90 (Flapjack.Spt.ls 88))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 84 (Flapjack.Spt.bs Flapjack.Spt.ln 82 (Flapjack.Spt.ls 80))) 78
        (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 74 (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 70))))
      12
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 66 (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 62))) 60
        (Flapjack.Spt.bs (Flapjack.Spt.ls 58) 56 (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 52)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 48 (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 44))) 42
        (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 38 (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 34))))
      8
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26))) 16
        (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.ls 18))))))
theorem assigned582_eq : accVarsHOL Loop.output582.2.2 (.ln : Spt Unit) = assigned582 := by
  kernel_rfl
theorem variables582_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output582.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output582.2.1)) = variables582 := by
  rw [assigned582_eq]
  kernel_rfl
theorem context582_eq : makeCtxtHOL 2 (Loop.output582.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output582.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output582.2.1)))
    (.ln : Spt Nat) = context582 := by
  rw [variables582_eq]
  kernel_rfl
#print axioms assigned582_eq
#print axioms variables582_eq
#print axioms context582_eq
end InitECandidate.Proofs.FrontendStages.Word
