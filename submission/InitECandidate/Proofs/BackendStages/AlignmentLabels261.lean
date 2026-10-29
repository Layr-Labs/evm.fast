import InitECandidate.Proofs.BackendStages.Alignment261
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_261 : List (Nat × Nat) :=
[(32, 200896), (31, 200884), (15, 200876), (14, 200856), (30, 200800), (29, 200772), (13, 200764), (12, 200744),
  (28, 200688), (27, 200652), (11, 200640), (10, 200616), (26, 200560), (25, 200524), (9, 200512), (8, 200488),
  (24, 200432), (23, 200388), (7, 200376), (6, 200352), (22, 200296), (21, 200256), (5, 200248), (4, 200224),
  (20, 200168), (19, 200136), (3, 200132), (2, 200112), (18, 200056), (1, 200020), (17, 200020)]
theorem localLabelsFinal_261_eq : LabToTarget.sectionLabels 200004 Alignment261.lines [] = (200896, localLabelsFinal_261) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_261_eq
end InitECandidate.Proofs.BackendStages
