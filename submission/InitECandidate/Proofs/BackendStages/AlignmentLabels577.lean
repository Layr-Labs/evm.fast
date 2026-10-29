import InitECandidate.Proofs.BackendStages.Alignment577
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_577 : List (Nat × Nat) :=
[(24, 433040), (23, 433028), (11, 433020), (10, 433000), (22, 432944), (21, 432916), (9, 432912), (8, 432896),
  (20, 432840), (19, 432812), (7, 432808), (6, 432788), (18, 432732), (17, 432704), (5, 432700), (4, 432680),
  (16, 432624), (15, 432600), (3, 432596), (2, 432580), (14, 432524), (1, 432492), (13, 432492)]
theorem localLabelsFinal_577_eq : LabToTarget.sectionLabels 432476 Alignment577.lines [] = (433040, localLabelsFinal_577) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_577_eq
end InitECandidate.Proofs.BackendStages
