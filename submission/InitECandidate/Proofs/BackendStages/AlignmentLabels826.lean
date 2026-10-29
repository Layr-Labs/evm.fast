import InitECandidate.Proofs.BackendStages.Alignment826
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_826 : List (Nat × Nat) :=
[(18, 894844), (17, 894792), (16, 894768), (7, 894756), (6, 894728), (15, 894672), (14, 894636), (5, 894628),
  (4, 894604), (13, 894548), (12, 894516), (3, 894512), (2, 894496), (11, 894440), (10, 894396), (1, 894348),
  (9, 894348)]
theorem localLabelsFinal_826_eq : LabToTarget.sectionLabels 894332 Alignment826.lines [] = (894844, localLabelsFinal_826) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_826_eq
end InitECandidate.Proofs.BackendStages
