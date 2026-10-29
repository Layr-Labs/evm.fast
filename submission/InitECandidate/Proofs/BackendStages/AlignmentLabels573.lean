import InitECandidate.Proofs.BackendStages.Alignment573
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_573 : List (Nat × Nat) :=
[(20, 429624), (19, 429612), (9, 429604), (8, 429584), (18, 429528), (17, 429500), (7, 429496), (6, 429480),
  (16, 429424), (15, 429384), (5, 429380), (4, 429360), (14, 429304), (13, 429280), (3, 429276), (2, 429260),
  (12, 429204), (1, 429172), (11, 429172)]
theorem localLabelsFinal_573_eq : LabToTarget.sectionLabels 429156 Alignment573.lines [] = (429624, localLabelsFinal_573) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_573_eq
end InitECandidate.Proofs.BackendStages
