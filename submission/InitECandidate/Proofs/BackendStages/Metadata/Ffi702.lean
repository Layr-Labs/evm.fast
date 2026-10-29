import InitECandidate.Proofs.BackendStages.Metadata.Data702
import InitECandidate.Proofs.BackendStages.Filtered702
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis702_eq : ffiLines Filtered702.lines = localFfis702 := by
  with_unfolding_all rfl
theorem ffiStep702 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis702) : LabToTarget.findFfiNames (Filtered702 :: rest) = suffixFfis702 := by
  rw [findFfiNames_section, localFfis702_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep702
end InitECandidate.Proofs.BackendStages.Metadata
