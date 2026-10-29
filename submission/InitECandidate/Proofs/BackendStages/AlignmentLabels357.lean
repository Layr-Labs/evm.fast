import InitECandidate.Proofs.BackendStages.Alignment357
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_357 : List (Nat × Nat) :=
[(24, 277308), (23, 277296), (11, 277284), (10, 277260), (22, 277204), (21, 277172), (9, 277164), (8, 277140),
  (20, 277084), (19, 277056), (7, 277036), (6, 277000), (18, 276944), (17, 276912), (5, 276876), (4, 276824),
  (16, 276768), (15, 276736), (3, 276732), (2, 276712), (14, 276656), (1, 276608), (13, 276608)]
theorem localLabelsFinal_357_eq : LabToTarget.sectionLabels 276592 Alignment357.lines [] = (277308, localLabelsFinal_357) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_357_eq
end InitECandidate.Proofs.BackendStages
