import InitECandidate.Proofs.BackendStages.Metadata.Data396
import InitECandidate.Proofs.BackendStages.Filtered396
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis396_eq : ffiLines Filtered396.lines = localFfis396 := by
  with_unfolding_all rfl
theorem ffiStep396 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis396) : LabToTarget.findFfiNames (Filtered396 :: rest) = suffixFfis396 := by
  rw [findFfiNames_section, localFfis396_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep396
end InitECandidate.Proofs.BackendStages.Metadata
