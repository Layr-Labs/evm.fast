import InitECandidate.Proofs.BackendStages.Alignment482
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_482 : List (Nat × Nat) :=
[(21, 362808), (20, 362772), (7, 362760), (6, 362736), (19, 362680), (18, 362632), (16, 362608), (5, 362584),
  (4, 362548), (15, 362492), (14, 362436), (3, 362400), (2, 362352), (13, 362296), (12, 362248), (11, 362240),
  (17, 362224), (10, 362180), (1, 362156), (9, 362156)]
theorem localLabelsFinal_482_eq : LabToTarget.sectionLabels 362140 Alignment482.lines [] = (362808, localLabelsFinal_482) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_482_eq
end InitECandidate.Proofs.BackendStages
