import InitECandidate.Proofs.BackendStages.Alignment275
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_275 : List (Nat × Nat) :=
[(24, 214332), (23, 214320), (11, 214308), (10, 214284), (22, 214228), (21, 214196), (9, 214188), (8, 214164),
  (20, 214108), (19, 214080), (7, 214060), (6, 214024), (18, 213968), (17, 213936), (5, 213900), (4, 213848),
  (16, 213792), (15, 213760), (3, 213756), (2, 213736), (14, 213680), (1, 213632), (13, 213632)]
theorem localLabelsFinal_275_eq : LabToTarget.sectionLabels 213616 Alignment275.lines [] = (214332, localLabelsFinal_275) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_275_eq
end InitECandidate.Proofs.BackendStages
