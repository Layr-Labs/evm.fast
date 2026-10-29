import InitECandidate.Proofs.BackendStages.Alignment483
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_483 : List (Nat × Nat) :=
[(20, 363328), (19, 363316), (9, 363308), (8, 363288), (18, 363232), (17, 363204), (7, 363196), (6, 363176),
  (16, 363120), (15, 363092), (5, 363088), (4, 363068), (14, 363012), (13, 362976), (3, 362968), (2, 362944),
  (12, 362888), (1, 362824), (11, 362824)]
theorem localLabelsFinal_483_eq : LabToTarget.sectionLabels 362808 Alignment483.lines [] = (363328, localLabelsFinal_483) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_483_eq
end InitECandidate.Proofs.BackendStages
