import InitECandidate.Proofs.BackendStages.Alignment303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_303 : List (Nat × Nat) :=
[(13, 239620), (12, 239612), (10, 239596), (4, 239588), (3, 239568), (9, 239512), (11, 239476), (5, 239452),
  (2, 239432), (8, 239376), (1, 239344), (7, 239344)]
theorem localLabelsFinal_303_eq : LabToTarget.sectionLabels 239328 Alignment303.lines [] = (239620, localLabelsFinal_303) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_303_eq
end InitECandidate.Proofs.BackendStages
