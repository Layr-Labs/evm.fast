import InitECandidate.Proofs.BackendStages.Alignment533
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_533 : List (Nat × Nat) :=
[(16, 395120), (15, 395108), (7, 395100), (6, 395080), (14, 395024), (13, 394996), (5, 394992), (4, 394976),
  (12, 394920), (11, 394876), (3, 394872), (2, 394856), (10, 394800), (1, 394768), (9, 394768)]
theorem localLabelsFinal_533_eq : LabToTarget.sectionLabels 394752 Alignment533.lines [] = (395120, localLabelsFinal_533) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_533_eq
end InitECandidate.Proofs.BackendStages
