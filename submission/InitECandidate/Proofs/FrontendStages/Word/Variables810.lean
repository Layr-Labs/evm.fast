import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data810
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned810 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
def variables810 : List Nat := [31, 15, 47, 7, 39, 23, 55, 3, 35, 19, 51, 11, 43, 27, 59, 33, 17, 49, 9, 41, 25, 57, 5, 37, 21, 53, 13, 45, 29, 61, 32,
  16, 48, 8, 40, 24, 56, 4, 36, 20, 52, 12, 44, 28, 60, 2, 34, 18, 50, 10, 42, 26, 58, 6, 38, 22, 54, 14, 46, 30]
def context810 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 124 (Flapjack.Spt.ls 122)) 120
        (Flapjack.Spt.bs (Flapjack.Spt.ls 118) 116 (Flapjack.Spt.ls 114)))
      112
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 110) 108 (Flapjack.Spt.ls 106)) 104
        (Flapjack.Spt.bs (Flapjack.Spt.ls 102) 100 (Flapjack.Spt.ls 98))))
    96
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 94) 92 (Flapjack.Spt.ls 90)) 88
        (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 84 (Flapjack.Spt.ls 82)))
      80
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 76 (Flapjack.Spt.ls 74)) 72
        (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 68 (Flapjack.Spt.ls 66)))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 64) 62 (Flapjack.Spt.ls 60)) 58
        (Flapjack.Spt.bs (Flapjack.Spt.ls 56) 54 (Flapjack.Spt.ls 52)))
      50
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 48) 46 (Flapjack.Spt.ls 44)) 42
        (Flapjack.Spt.bs (Flapjack.Spt.ls 40) 38 (Flapjack.Spt.ls 36))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 32 (Flapjack.Spt.ls 30)) 28
        (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 24 (Flapjack.Spt.ls 22)))
      20
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 18) 16 (Flapjack.Spt.ls 14)) 12
        (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 8 (Flapjack.Spt.ls 6)))))
theorem assigned810_eq : accVarsHOL Loop.output810.2.2 (.ln : Spt Unit) = assigned810 := by
  kernel_rfl
theorem variables810_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output810.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output810.2.1)) = variables810 := by
  rw [assigned810_eq]
  kernel_rfl
theorem context810_eq : makeCtxtHOL 2 (Loop.output810.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output810.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output810.2.1)))
    (.ln : Spt Nat) = context810 := by
  rw [variables810_eq]
  kernel_rfl
#print axioms assigned810_eq
#print axioms variables810_eq
#print axioms context810_eq
end InitECandidate.Proofs.FrontendStages.Word
