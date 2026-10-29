import InitECandidate.Proofs.BackendStages.Metadata.Data264
import InitECandidate.Proofs.BackendStages.Filtered264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis264_eq : ffiLines Filtered264.lines = localFfis264 := by
  with_unfolding_all rfl
theorem ffiStep264 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis264) : LabToTarget.findFfiNames (Filtered264 :: rest) = suffixFfis264 := by
  rw [findFfiNames_section, localFfis264_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep264
end InitECandidate.Proofs.BackendStages.Metadata
