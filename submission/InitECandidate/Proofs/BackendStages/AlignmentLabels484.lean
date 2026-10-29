import InitECandidate.Proofs.BackendStages.Alignment484
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_484 : List (Nat × Nat) :=
[(16, 363664), (15, 363652), (5, 363644), (4, 363624), (14, 363568), (13, 363536), (11, 363536), (3, 363520),
  (2, 363492), (10, 363436), (9, 363388), (8, 363380), (12, 363364), (1, 363344), (7, 363344)]
theorem localLabelsFinal_484_eq : LabToTarget.sectionLabels 363328 Alignment484.lines [] = (363664, localLabelsFinal_484) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_484_eq
end InitECandidate.Proofs.BackendStages
