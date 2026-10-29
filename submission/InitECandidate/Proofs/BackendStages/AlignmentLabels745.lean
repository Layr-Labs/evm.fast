import InitECandidate.Proofs.BackendStages.Alignment745
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_745 : List (Nat × Nat) :=
[(14, 745992), (13, 745960), (12, 745940), (5, 745928), (4, 745900), (11, 745844), (10, 745808), (9, 745788),
  (3, 745748), (2, 745692), (8, 745636), (1, 745548), (7, 745548)]
theorem localLabelsFinal_745_eq : LabToTarget.sectionLabels 745532 Alignment745.lines [] = (745992, localLabelsFinal_745) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_745_eq
end InitECandidate.Proofs.BackendStages
