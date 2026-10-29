import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data592
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned592 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
def variables592 : List Nat := [63, 31, 47, 71, 39, 23, 55, 67, 35, 19, 51, 75, 43, 27, 59, 65, 33, 17, 49, 73, 41, 25, 57, 69, 37, 21, 53, 77, 45, 29,
  61, 64, 32, 48, 72, 40, 24, 56, 68, 36, 20, 52, 76, 44, 28, 60, 66, 34, 18, 50, 74, 42, 26, 58, 70, 38, 22, 54, 78,
  46, 30, 62]
def context592 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 158) 156 (Flapjack.Spt.bs Flapjack.Spt.ln 154 (Flapjack.Spt.ls 152))) 30
        (Flapjack.Spt.bs (Flapjack.Spt.ls 150) 148 (Flapjack.Spt.bs Flapjack.Spt.ln 146 (Flapjack.Spt.ls 144))))
      14
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 142) 140 (Flapjack.Spt.bs Flapjack.Spt.ln 138 (Flapjack.Spt.ls 136))) 22
        (Flapjack.Spt.bs (Flapjack.Spt.ls 134) 132 (Flapjack.Spt.bs Flapjack.Spt.ln 130 (Flapjack.Spt.ls 128)))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 126) 124 (Flapjack.Spt.bs Flapjack.Spt.ln 122 (Flapjack.Spt.ls 120))) 26
        (Flapjack.Spt.bs (Flapjack.Spt.ls 118) 116 (Flapjack.Spt.bs Flapjack.Spt.ln 114 (Flapjack.Spt.ls 112))))
      10
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 110) 108 (Flapjack.Spt.bs Flapjack.Spt.ln 106 (Flapjack.Spt.ls 104))) 18
        (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 34 (Flapjack.Spt.bs Flapjack.Spt.ln 100 (Flapjack.Spt.ls 98))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 94 (Flapjack.Spt.bs Flapjack.Spt.ln 92 (Flapjack.Spt.ls 90))) 28
        (Flapjack.Spt.bs (Flapjack.Spt.ls 88) 86 (Flapjack.Spt.bs Flapjack.Spt.ln 84 (Flapjack.Spt.ls 82))))
      12
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 80) 78 (Flapjack.Spt.bs Flapjack.Spt.ln 76 (Flapjack.Spt.ls 74))) 20
        (Flapjack.Spt.bs (Flapjack.Spt.ls 72) 70 (Flapjack.Spt.bs Flapjack.Spt.ln 68 (Flapjack.Spt.ls 66)))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 62 (Flapjack.Spt.bs Flapjack.Spt.ln 60 (Flapjack.Spt.ls 58))) 24
        (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 54 (Flapjack.Spt.bs Flapjack.Spt.ln 52 (Flapjack.Spt.ls 50))))
      8
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 46 (Flapjack.Spt.bs Flapjack.Spt.ln 44 (Flapjack.Spt.ls 42))) 16
        (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 36))))))
theorem assigned592_eq : accVarsHOL Loop.output592.2.2 (.ln : Spt Unit) = assigned592 := by
  kernel_rfl
theorem variables592_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output592.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output592.2.1)) = variables592 := by
  rw [assigned592_eq]
  kernel_rfl
theorem context592_eq : makeCtxtHOL 2 (Loop.output592.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output592.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output592.2.1)))
    (.ln : Spt Nat) = context592 := by
  rw [variables592_eq]
  kernel_rfl
#print axioms assigned592_eq
#print axioms variables592_eq
#print axioms context592_eq
end InitECandidate.Proofs.FrontendStages.Word
