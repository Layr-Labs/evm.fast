import InitECandidate.Proofs.BackendStages.Alignment277
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_277 : List (Nat × Nat) :=
[(20, 218508), (19, 218496), (9, 218488), (8, 218468), (18, 218412), (17, 218384), (7, 218376), (6, 218356),
  (16, 218300), (15, 218272), (5, 218264), (4, 218240), (14, 218184), (13, 218152), (3, 218144), (2, 218120),
  (12, 218064), (1, 218028), (11, 218028)]
theorem localLabelsFinal_277_eq : LabToTarget.sectionLabels 218012 Alignment277.lines [] = (218508, localLabelsFinal_277) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_277_eq
end InitECandidate.Proofs.BackendStages
