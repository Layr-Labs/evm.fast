import InitECandidate.Proofs.BackendStages.Alignment314
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_314 : List (Nat × Nat) :=
[(28, 246252), (27, 246240), (26, 246212), (25, 246192), (9, 246176), (8, 246144), (24, 246088), (23, 246052),
  (21, 246052), (7, 246020), (6, 245976), (20, 245920), (22, 245864), (19, 245804), (17, 245780), (5, 245748),
  (4, 245700), (16, 245644), (18, 245600), (15, 245568), (14, 245540), (13, 245520), (3, 245476), (2, 245416),
  (12, 245360), (1, 245288), (11, 245288)]
theorem localLabelsFinal_314_eq : LabToTarget.sectionLabels 245272 Alignment314.lines [] = (246252, localLabelsFinal_314) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_314_eq
end InitECandidate.Proofs.BackendStages
