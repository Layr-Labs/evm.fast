import InitECandidate.Proofs.BackendStages.Alignment847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_847 : List (Nat × Nat) :=
[(27, 917144), (26, 917132), (11, 917124), (10, 917104), (25, 917048), (24, 917016), (9, 917008), (8, 916988),
  (23, 916932), (19, 916876), (22, 916856), (21, 916844), (7, 916812), (6, 916768), (20, 916712), (18, 916616),
  (17, 916612), (5, 916584), (4, 916540), (16, 916484), (15, 916440), (3, 916432), (2, 916408), (14, 916352),
  (1, 916308), (13, 916308)]
theorem localLabelsFinal_847_eq : LabToTarget.sectionLabels 916292 Alignment847.lines [] = (917144, localLabelsFinal_847) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_847_eq
end InitECandidate.Proofs.BackendStages
