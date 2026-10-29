import InitECandidate.Proofs.BackendStages.Alignment263
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_263 : List (Nat × Nat) :=
[(36, 202820), (35, 202808), (17, 202800), (16, 202780), (34, 202724), (33, 202696), (15, 202688), (14, 202668),
  (32, 202612), (31, 202576), (13, 202564), (12, 202540), (30, 202484), (29, 202444), (11, 202432), (10, 202408),
  (28, 202352), (27, 202312), (9, 202300), (8, 202276), (26, 202220), (25, 202176), (7, 202164), (6, 202140),
  (24, 202084), (23, 202044), (5, 202036), (4, 202012), (22, 201956), (21, 201924), (3, 201920), (2, 201900),
  (20, 201844), (1, 201808), (19, 201808)]
theorem localLabelsFinal_263_eq : LabToTarget.sectionLabels 201792 Alignment263.lines [] = (202820, localLabelsFinal_263) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_263_eq
end InitECandidate.Proofs.BackendStages
