import InitECandidate.Proofs.BackendStages.Alignment146
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_146 : List (Nat × Nat) :=
[(36, 31148), (26, 31136), (35, 31128), (34, 31120), (33, 31116), (32, 31104), (31, 31100), (30, 31088), (29, 31084),
  (28, 31072), (27, 31068), (25, 31020), (24, 31000), (23, 30988), (9, 30968), (8, 30932), (22, 30876), (21, 30844),
  (7, 30836), (6, 30812), (20, 30756), (19, 30720), (5, 30712), (4, 30688), (18, 30632), (17, 30596), (3, 30588),
  (2, 30564), (16, 30508), (15, 30460), (14, 30456), (13, 30432), (12, 30428), (1, 30408), (11, 30408)]
theorem localLabelsFinal_146_eq : LabToTarget.sectionLabels 30392 Alignment146.lines [] = (31148, localLabelsFinal_146) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_146_eq
end InitECandidate.Proofs.BackendStages
