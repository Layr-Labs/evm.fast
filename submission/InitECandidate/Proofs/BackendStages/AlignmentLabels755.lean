import InitECandidate.Proofs.BackendStages.Alignment755
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_755 : List (Nat × Nat) :=
[(8, 755300), (7, 755288), (3, 755280), (2, 755260), (6, 755204), (1, 755168), (5, 755168)]
theorem localLabelsFinal_755_eq : LabToTarget.sectionLabels 755152 Alignment755.lines [] = (755300, localLabelsFinal_755) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_755_eq
end InitECandidate.Proofs.BackendStages
