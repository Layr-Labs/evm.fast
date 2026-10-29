import InitECandidate.Proofs.BackendStages.Alignment697
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_697 : List (Nat × Nat) :=
[(41, 655844), (40, 655832), (19, 655824), (18, 655804), (39, 655748), (38, 655712), (17, 655688), (16, 655652),
  (37, 655596), (36, 655532), (15, 655508), (14, 655468), (35, 655412), (34, 655352), (13, 655332), (12, 655296),
  (33, 655240), (32, 655180), (11, 655160), (10, 655124), (31, 655068), (30, 655008), (9, 654972), (8, 654920),
  (29, 654864), (28, 654772), (7, 654764), (6, 654728), (27, 654672), (26, 654640), (25, 654628), (5, 654620),
  (4, 654600), (24, 654544), (23, 654492), (3, 654464), (2, 654420), (22, 654364), (1, 654284), (21, 654284)]
theorem localLabelsFinal_697_eq : LabToTarget.sectionLabels 654268 Alignment697.lines [] = (655844, localLabelsFinal_697) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_697_eq
end InitECandidate.Proofs.BackendStages
