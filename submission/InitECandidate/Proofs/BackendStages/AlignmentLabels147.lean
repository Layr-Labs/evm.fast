import InitECandidate.Proofs.BackendStages.Alignment147
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_147 : List (Nat × Nat) :=
[(37, 32292), (36, 32280), (17, 32272), (16, 32252), (35, 32196), (34, 32168), (15, 32156), (14, 32132), (33, 32076),
  (32, 32044), (13, 32024), (12, 31992), (31, 31936), (30, 31904), (11, 31892), (10, 31868), (29, 31812), (28, 31760),
  (27, 31740), (9, 31728), (8, 31700), (26, 31644), (25, 31604), (7, 31592), (6, 31564), (24, 31508), (23, 31468),
  (5, 31448), (4, 31412), (22, 31356), (21, 31320), (3, 31308), (2, 31280), (20, 31224), (1, 31164), (19, 31164)]
theorem localLabelsFinal_147_eq : LabToTarget.sectionLabels 31148 Alignment147.lines [] = (32292, localLabelsFinal_147) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_147_eq
end InitECandidate.Proofs.BackendStages
