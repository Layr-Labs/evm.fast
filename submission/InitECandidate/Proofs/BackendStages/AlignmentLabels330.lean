import InitECandidate.Proofs.BackendStages.Alignment330
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_330 : List (Nat × Nat) :=
[(17, 260072), (16, 260052), (7, 260036), (6, 260008), (15, 259952), (14, 259920), (5, 259900), (4, 259864),
  (13, 259808), (12, 259772), (3, 259768), (2, 259748), (11, 259692), (10, 259656), (1, 259632), (9, 259632)]
theorem localLabelsFinal_330_eq : LabToTarget.sectionLabels 259616 Alignment330.lines [] = (260072, localLabelsFinal_330) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_330_eq
end InitECandidate.Proofs.BackendStages
