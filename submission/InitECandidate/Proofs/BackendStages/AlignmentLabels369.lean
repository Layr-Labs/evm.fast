import InitECandidate.Proofs.BackendStages.Alignment369
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_369 : List (Nat × Nat) :=
[(8, 286592), (7, 286580), (3, 286572), (2, 286552), (6, 286496), (1, 286452), (5, 286452)]
theorem localLabelsFinal_369_eq : LabToTarget.sectionLabels 286436 Alignment369.lines [] = (286592, localLabelsFinal_369) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_369_eq
end InitECandidate.Proofs.BackendStages
