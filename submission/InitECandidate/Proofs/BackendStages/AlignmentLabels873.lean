import InitECandidate.Proofs.BackendStages.Alignment873
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_873 : List (Nat × Nat) :=
[(9, 978288), (8, 978276), (7, 978224), (3, 978204), (2, 978184), (6, 978128), (1, 978092), (5, 978092)]
theorem localLabelsFinal_873_eq : LabToTarget.sectionLabels 978072 Alignment873.lines [] = (978288, localLabelsFinal_873) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_873_eq
end InitECandidate.Proofs.BackendStages
