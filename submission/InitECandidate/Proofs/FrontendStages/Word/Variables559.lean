import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data559
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned559 : NumSet := Flapjack.Spt.bn
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
def variables559 : List Nat := [63, 31, 15, 47, 7, 71, 39, 23, 55, 3, 67, 35, 19, 51, 11, 43, 27, 59, 1, 65, 33, 17, 49, 9, 73, 41, 25, 57, 5, 69, 37,
  21, 53, 13, 45, 29, 61, 64, 32, 16, 48, 8, 72, 40, 24, 56, 4, 68, 36, 20, 52, 12, 44, 28, 60, 2, 66, 34, 18, 50, 10,
  74, 42, 26, 58, 6, 70, 38, 22, 54, 14, 46, 30, 62]
def context559 : Spt Nat := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 148) 146 (Flapjack.Spt.ls 144)) 142
        (Flapjack.Spt.bs (Flapjack.Spt.ls 140) 138 (Flapjack.Spt.bs Flapjack.Spt.ln 136 (Flapjack.Spt.ls 134))))
      132
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 130) 128 (Flapjack.Spt.bs Flapjack.Spt.ln 126 (Flapjack.Spt.ls 124))) 122
        (Flapjack.Spt.bs (Flapjack.Spt.ls 120) 118 (Flapjack.Spt.bs Flapjack.Spt.ln 116 (Flapjack.Spt.ls 114)))))
    112
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 110) 108 (Flapjack.Spt.ls 106)) 104
        (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 100 (Flapjack.Spt.bs Flapjack.Spt.ln 98 (Flapjack.Spt.ls 96))))
      94
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 92) 90 (Flapjack.Spt.bs Flapjack.Spt.ln 88 (Flapjack.Spt.ls 86))) 84
        (Flapjack.Spt.bs (Flapjack.Spt.ls 82) 80 (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 76))))))
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 74) 72 (Flapjack.Spt.ls 70)) 68
        (Flapjack.Spt.bs (Flapjack.Spt.ls 66) 64 (Flapjack.Spt.bs Flapjack.Spt.ln 62 (Flapjack.Spt.ls 60))))
      58
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 54 (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 50))) 48
        (Flapjack.Spt.bs (Flapjack.Spt.ls 46) 44 (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 40)))))
    38
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.ls 32)) 30
        (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22))))
      20
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 16 (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 12))) 10
        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))))
theorem assigned559_eq : accVarsHOL Loop.output559.2.2 (.ln : Spt Unit) = assigned559 := by
  kernel_rfl
theorem variables559_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output559.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output559.2.1)) = variables559 := by
  rw [assigned559_eq]
  kernel_rfl
theorem context559_eq : makeCtxtHOL 2 (Loop.output559.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output559.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output559.2.1)))
    (.ln : Spt Nat) = context559 := by
  rw [variables559_eq]
  kernel_rfl
#print axioms assigned559_eq
#print axioms variables559_eq
#print axioms context559_eq
end InitECandidate.Proofs.FrontendStages.Word
