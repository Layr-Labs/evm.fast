import InitECandidate.Proofs.BackendStages.Alignment497
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_497 : List (Nat × Nat) :=
[(28, 368184), (27, 368172), (13, 368164), (12, 368144), (26, 368088), (25, 368060), (11, 368056), (10, 368040),
  (24, 367984), (23, 367956), (9, 367952), (8, 367932), (22, 367876), (21, 367848), (7, 367812), (6, 367764),
  (20, 367708), (19, 367664), (5, 367660), (4, 367640), (18, 367584), (17, 367544), (3, 367540), (2, 367520),
  (16, 367464), (1, 367436), (15, 367436)]
theorem localLabelsFinal_497_eq : LabToTarget.sectionLabels 367420 Alignment497.lines [] = (368184, localLabelsFinal_497) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_497_eq
end InitECandidate.Proofs.BackendStages
