import InitECandidate.Proofs.BackendStages.Alignment272
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_272 : List (Nat × Nat) :=
[(10, 209000), (9, 208988), (8, 208968), (7, 208944), (3, 208932), (2, 208904), (6, 208848), (1, 208800), (5, 208800)]
theorem localLabelsFinal_272_eq : LabToTarget.sectionLabels 208784 Alignment272.lines [] = (209000, localLabelsFinal_272) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_272_eq
end InitECandidate.Proofs.BackendStages
