import InitECandidate.Proofs.BackendStages.Alignment654
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_654 : List (Nat × Nat) :=
[(32, 572364), (31, 572352), (15, 572328), (14, 572276), (30, 572220), (29, 572092), (13, 572088), (12, 572068),
  (28, 572012), (27, 571980), (11, 571944), (10, 571880), (26, 571824), (25, 571792), (9, 571708), (8, 571608),
  (24, 571552), (23, 571476), (7, 571456), (6, 571420), (22, 571364), (21, 571316), (5, 571296), (4, 571260),
  (20, 571204), (19, 571128), (3, 571108), (2, 571072), (18, 571016), (1, 570952), (17, 570952)]
theorem localLabelsFinal_654_eq : LabToTarget.sectionLabels 570936 Alignment654.lines [] = (572364, localLabelsFinal_654) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_654_eq
end InitECandidate.Proofs.BackendStages
