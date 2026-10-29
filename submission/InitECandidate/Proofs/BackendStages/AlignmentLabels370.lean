import InitECandidate.Proofs.BackendStages.Alignment370
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_370 : List (Nat × Nat) :=
[(20, 287128), (19, 287116), (9, 287108), (8, 287088), (18, 287032), (17, 287004), (7, 286996), (6, 286976),
  (16, 286920), (15, 286892), (5, 286876), (4, 286844), (14, 286788), (13, 286756), (3, 286740), (2, 286708),
  (12, 286652), (1, 286608), (11, 286608)]
theorem localLabelsFinal_370_eq : LabToTarget.sectionLabels 286592 Alignment370.lines [] = (287128, localLabelsFinal_370) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_370_eq
end InitECandidate.Proofs.BackendStages
