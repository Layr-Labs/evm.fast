import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data169
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned169 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
def variables169 : List Nat := [31, 47, 39, 35, 51, 43, 27, 33, 49, 41, 25, 37, 53, 45, 29, 32, 48, 40, 36, 52, 44, 28, 34, 50, 42, 26, 38, 46, 30]
def context169 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 108 (Flapjack.Spt.ls 106)) 30
        (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 104)))
      14
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 102 (Flapjack.Spt.ls 100)) 22
        (Flapjack.Spt.bs (Flapjack.Spt.ls 98) 38 (Flapjack.Spt.ls 96))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 94 (Flapjack.Spt.ls 92)) 26
        (Flapjack.Spt.bs (Flapjack.Spt.ls 90) 42 (Flapjack.Spt.ls 88)))
      10
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 50 (Flapjack.Spt.ls 86)) 18
        (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 34 (Flapjack.Spt.ls 82)))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 80 (Flapjack.Spt.ls 78)) 28
        (Flapjack.Spt.bs (Flapjack.Spt.ls 76) 44 (Flapjack.Spt.ls 74)))
      12
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 70)) 20
        (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 36 (Flapjack.Spt.ls 66))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 62)) 24
        (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 40 (Flapjack.Spt.ls 58)))
      8
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 56)) 16
        (Flapjack.Spt.bs (Flapjack.Spt.ls 54) 32 (Flapjack.Spt.ls 52)))))
theorem assigned169_eq : accVarsHOL Loop.output169.2.2 (.ln : Spt Unit) = assigned169 := by
  kernel_rfl
theorem variables169_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output169.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output169.2.1)) = variables169 := by
  rw [assigned169_eq]
  kernel_rfl
theorem context169_eq : makeCtxtHOL 2 (Loop.output169.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output169.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output169.2.1)))
    (.ln : Spt Nat) = context169 := by
  rw [variables169_eq]
  kernel_rfl
#print axioms assigned169_eq
#print axioms variables169_eq
#print axioms context169_eq
end InitECandidate.Proofs.FrontendStages.Word
