import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data802
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned802 : NumSet := Flapjack.Spt.bn
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
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
def variables802 : List Nat := [31, 15, 47, 7, 39, 23, 55, 3, 35, 19, 51, 11, 43, 27, 1, 33, 17, 49, 9, 41, 25, 5, 37, 21, 53, 13, 45, 29, 32, 16, 48,
  8, 40, 24, 4, 36, 20, 52, 12, 44, 28, 2, 34, 18, 50, 10, 42, 26, 6, 38, 22, 54, 14, 46, 30]
def context802 : Spt Nat := Flapjack.Spt.bs
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
  2
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
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 14 (Flapjack.Spt.ls 12)) 10
        (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 4)))))
theorem assigned802_eq : accVarsHOL Loop.output802.2.2 (.ln : Spt Unit) = assigned802 := by
  kernel_rfl
theorem variables802_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output802.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output802.2.1)) = variables802 := by
  rw [assigned802_eq]
  kernel_rfl
theorem context802_eq : makeCtxtHOL 2 (Loop.output802.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output802.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output802.2.1)))
    (.ln : Spt Nat) = context802 := by
  rw [variables802_eq]
  kernel_rfl
#print axioms assigned802_eq
#print axioms variables802_eq
#print axioms context802_eq
end InitECandidate.Proofs.FrontendStages.Word
