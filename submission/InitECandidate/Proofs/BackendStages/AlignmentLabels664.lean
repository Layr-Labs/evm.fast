import InitECandidate.Proofs.BackendStages.Alignment664
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_664 : List (Nat × Nat) :=
[(9, 595332), (8, 595328), (7, 595212), (3, 595204), (2, 595180), (6, 595124), (1, 594996), (5, 594996)]
theorem localLabelsFinal_664_eq : LabToTarget.sectionLabels 594980 Alignment664.lines [] = (595332, localLabelsFinal_664) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_664_eq
end InitECandidate.Proofs.BackendStages
