import InitECandidate.Proofs.BackendStages.Alignment874
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_874 : List (Nat × Nat) :=
[(9, 978504), (8, 978492), (7, 978440), (3, 978420), (2, 978400), (6, 978344), (1, 978308), (5, 978308)]
theorem localLabelsFinal_874_eq : LabToTarget.sectionLabels 978288 Alignment874.lines [] = (978504, localLabelsFinal_874) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_874_eq
end InitECandidate.Proofs.BackendStages
