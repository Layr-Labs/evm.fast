import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data397
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned397 : NumSet := Flapjack.Spt.bn
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
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
def variables397 : List Nat := [31, 15, 7, 23, 35, 19, 11, 27, 33, 17, 9, 25, 5, 37, 21, 13, 29, 32, 16, 8, 24, 4, 36, 20, 12, 28, 34, 18, 10, 26, 6,
  38, 22, 14, 30]
def context397 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 76 (Flapjack.Spt.bs Flapjack.Spt.ln 74 (Flapjack.Spt.ls 72)))
      70 (Flapjack.Spt.bs (Flapjack.Spt.ls 68) 66 (Flapjack.Spt.bs Flapjack.Spt.ln 64 (Flapjack.Spt.ls 62))))
    6
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 58 (Flapjack.Spt.bs Flapjack.Spt.ln 56 (Flapjack.Spt.ls 54)))
      52 (Flapjack.Spt.bs (Flapjack.Spt.ls 50) 48 (Flapjack.Spt.bs Flapjack.Spt.ln 46 (Flapjack.Spt.ls 44)))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 40 (Flapjack.Spt.bs Flapjack.Spt.ln 38 (Flapjack.Spt.ls 36)))
      34 (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 26))))
    4
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.ls 18)))
      8 (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 14 (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 10)))))
theorem assigned397_eq : accVarsHOL Loop.output397.2.2 (.ln : Spt Unit) = assigned397 := by
  kernel_rfl
theorem variables397_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output397.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output397.2.1)) = variables397 := by
  rw [assigned397_eq]
  kernel_rfl
theorem context397_eq : makeCtxtHOL 2 (Loop.output397.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output397.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output397.2.1)))
    (.ln : Spt Nat) = context397 := by
  rw [variables397_eq]
  kernel_rfl
#print axioms assigned397_eq
#print axioms variables397_eq
#print axioms context397_eq
end InitECandidate.Proofs.FrontendStages.Word
