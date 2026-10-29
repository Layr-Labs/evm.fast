import InitECandidate.Proofs.BackendStages.Alignment421
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_421 : List (Nat × Nat) :=
[(30, 314864), (29, 314852), (11, 314844), (10, 314824), (28, 314768), (18, 314728), (27, 314700), (26, 314676),
  (24, 314676), (9, 314644), (8, 314600), (23, 314544), (22, 314496), (7, 314492), (6, 314472), (21, 314416),
  (25, 314384), (20, 314348), (5, 314340), (4, 314316), (19, 314260), (17, 314184), (16, 314160), (15, 314140),
  (3, 314124), (2, 314092), (14, 314036), (1, 313976), (13, 313976)]
theorem localLabelsFinal_421_eq : LabToTarget.sectionLabels 313960 Alignment421.lines [] = (314864, localLabelsFinal_421) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_421_eq
end InitECandidate.Proofs.BackendStages
