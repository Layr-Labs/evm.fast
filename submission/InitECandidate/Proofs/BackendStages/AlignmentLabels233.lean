import InitECandidate.Proofs.BackendStages.Alignment233
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_233 : List (Nat × Nat) :=
[(29, 161340), (28, 161328), (11, 161316), (10, 161292), (27, 161236), (26, 161208), (24, 161208), (9, 161200),
  (8, 161180), (23, 161124), (25, 161092), (22, 161072), (7, 161052), (6, 161016), (21, 160960), (20, 160924),
  (5, 160864), (4, 160788), (19, 160732), (18, 160700), (3, 160696), (2, 160676), (17, 160620), (16, 160552),
  (14, 160548), (15, 160528), (1, 160508), (13, 160508)]
theorem localLabelsFinal_233_eq : LabToTarget.sectionLabels 160492 Alignment233.lines [] = (161340, localLabelsFinal_233) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_233_eq
end InitECandidate.Proofs.BackendStages
