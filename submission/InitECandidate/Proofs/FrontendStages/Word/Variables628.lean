import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data628
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned628 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
def variables628 : List Nat := [31, 15, 47, 7, 39, 23, 35, 19, 11, 43, 27, 33, 17, 49, 9, 41, 25, 5, 37, 21, 13, 45, 29, 32, 16, 48, 8, 40, 24, 4, 36,
  20, 12, 44, 28, 34, 18, 50, 10, 42, 26, 6, 38, 22, 14, 46, 30]
def context628 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 102 (Flapjack.Spt.ls 100)) 98
        (Flapjack.Spt.bs Flapjack.Spt.ln 96 (Flapjack.Spt.ls 94)))
      92
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 90 (Flapjack.Spt.ls 88)) 86
        (Flapjack.Spt.bs (Flapjack.Spt.ls 84) 82 (Flapjack.Spt.ls 80))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 78 (Flapjack.Spt.ls 76)) 74
        (Flapjack.Spt.bs Flapjack.Spt.ln 72 (Flapjack.Spt.ls 70)))
      68
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 64)) 62
        (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 58 (Flapjack.Spt.ls 56)))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 54 (Flapjack.Spt.ls 52)) 50
        (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 46)))
      44
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 42 (Flapjack.Spt.ls 40)) 38
        (Flapjack.Spt.bs (Flapjack.Spt.ls 36) 34 (Flapjack.Spt.ls 32))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28)) 26
        (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
      8
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.ls 18)) 16
        (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 12 (Flapjack.Spt.ls 10)))))
theorem assigned628_eq : accVarsHOL Loop.output628.2.2 (.ln : Spt Unit) = assigned628 := by
  kernel_rfl
theorem variables628_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output628.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output628.2.1)) = variables628 := by
  rw [assigned628_eq]
  kernel_rfl
theorem context628_eq : makeCtxtHOL 2 (Loop.output628.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output628.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output628.2.1)))
    (.ln : Spt Nat) = context628 := by
  rw [variables628_eq]
  kernel_rfl
#print axioms assigned628_eq
#print axioms variables628_eq
#print axioms context628_eq
end InitECandidate.Proofs.FrontendStages.Word
