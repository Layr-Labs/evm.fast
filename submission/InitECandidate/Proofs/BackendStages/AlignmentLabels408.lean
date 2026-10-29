import InitECandidate.Proofs.BackendStages.Alignment408
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_408 : List (Nat × Nat) :=
[(31, 308444), (30, 308432), (13, 308424), (12, 308400), (29, 308344), (28, 308316), (11, 308308), (10, 308288),
  (27, 308232), (26, 308184), (9, 308180), (8, 308160), (25, 308104), (24, 308064), (23, 308040), (7, 308024),
  (6, 307992), (22, 307936), (21, 307880), (20, 307856), (5, 307844), (4, 307816), (19, 307760), (18, 307704),
  (17, 307680), (3, 307668), (2, 307640), (16, 307584), (1, 307524), (15, 307524)]
theorem localLabelsFinal_408_eq : LabToTarget.sectionLabels 307508 Alignment408.lines [] = (308444, localLabelsFinal_408) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_408_eq
end InitECandidate.Proofs.BackendStages
