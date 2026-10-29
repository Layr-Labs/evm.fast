import InitECandidate.Proofs.BackendStages.Alignment398
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_398 : List (Nat × Nat) :=
[(17, 303220), (16, 303208), (7, 303196), (6, 303172), (15, 303116), (14, 303084), (5, 303072), (4, 303044),
  (13, 302988), (12, 302948), (11, 302928), (3, 302920), (2, 302896), (10, 302840), (1, 302812), (9, 302812)]
theorem localLabelsFinal_398_eq : LabToTarget.sectionLabels 302796 Alignment398.lines [] = (303220, localLabelsFinal_398) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_398_eq
end InitECandidate.Proofs.BackendStages
