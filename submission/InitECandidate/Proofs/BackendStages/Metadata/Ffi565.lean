import InitECandidate.Proofs.BackendStages.Metadata.Data565
import InitECandidate.Proofs.BackendStages.Filtered565
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis565_eq : ffiLines Filtered565.lines = localFfis565 := by
  with_unfolding_all rfl
theorem ffiStep565 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis565) : LabToTarget.findFfiNames (Filtered565 :: rest) = suffixFfis565 := by
  rw [findFfiNames_section, localFfis565_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep565
end InitECandidate.Proofs.BackendStages.Metadata
