import InitECandidate.Proofs.BackendStages.Alignment672
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_672 : List (Nat × Nat) :=
[(11, 603204), (7, 603188), (10, 603172), (9, 603132), (3, 603104), (2, 603060), (8, 603004), (6, 602888), (1, 602864),
  (5, 602864)]
theorem localLabelsFinal_672_eq : LabToTarget.sectionLabels 602848 Alignment672.lines [] = (603204, localLabelsFinal_672) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_672_eq
end InitECandidate.Proofs.BackendStages
