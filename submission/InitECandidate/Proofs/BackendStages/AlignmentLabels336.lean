import InitECandidate.Proofs.BackendStages.Alignment336
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_336 : List (Nat × Nat) :=
[(10, 266328), (9, 266324), (8, 266304), (7, 266280), (3, 266272), (2, 266248), (6, 266192), (1, 266164), (5, 266164)]
theorem localLabelsFinal_336_eq : LabToTarget.sectionLabels 266148 Alignment336.lines [] = (266328, localLabelsFinal_336) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_336_eq
end InitECandidate.Proofs.BackendStages
