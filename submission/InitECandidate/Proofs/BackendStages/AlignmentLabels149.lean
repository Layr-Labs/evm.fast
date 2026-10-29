import InitECandidate.Proofs.BackendStages.Alignment149
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_149 : List (Nat × Nat) :=
[(12, 33092), (11, 33060), (5, 33052), (4, 33028), (10, 32972), (9, 32924), (3, 32920), (2, 32900), (8, 32844),
  (1, 32812), (7, 32812)]
theorem localLabelsFinal_149_eq : LabToTarget.sectionLabels 32796 Alignment149.lines [] = (33092, localLabelsFinal_149) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_149_eq
end InitECandidate.Proofs.BackendStages
