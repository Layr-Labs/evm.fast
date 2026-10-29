import InitECandidate.Proofs.BackendStages.Alignment561
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_561 : List (Nat × Nat) :=
[(8, 420092), (7, 420080), (3, 420072), (2, 420052), (6, 419996), (1, 419936), (5, 419936)]
theorem localLabelsFinal_561_eq : LabToTarget.sectionLabels 419920 Alignment561.lines [] = (420092, localLabelsFinal_561) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_561_eq
end InitECandidate.Proofs.BackendStages
