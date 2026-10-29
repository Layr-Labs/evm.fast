import InitECandidate.Proofs.BackendStages.Alignment449
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_449 : List (Nat × Nat) :=
[(51, 330944), (50, 330932), (23, 330920), (22, 330896), (49, 330840), (48, 330796), (21, 330784), (20, 330760),
  (47, 330704), (46, 330668), (19, 330648), (18, 330616), (45, 330560), (44, 330512), (42, 330512), (17, 330504),
  (16, 330484), (41, 330428), (43, 330328), (40, 330312), (15, 330288), (14, 330252), (39, 330196), (38, 330144),
  (13, 330136), (12, 330116), (37, 330060), (36, 330024), (11, 330020), (10, 330000), (35, 329944), (34, 329912),
  (9, 329908), (8, 329888), (33, 329832), (32, 329796), (31, 329776), (7, 329764), (6, 329736), (30, 329680),
  (29, 329636), (5, 329628), (4, 329608), (28, 329552), (27, 329512), (3, 329500), (2, 329476), (26, 329420),
  (1, 329360), (25, 329360)]
theorem localLabelsFinal_449_eq : LabToTarget.sectionLabels 329344 Alignment449.lines [] = (330944, localLabelsFinal_449) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_449_eq
end InitECandidate.Proofs.BackendStages
