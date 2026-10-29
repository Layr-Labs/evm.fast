import InitECandidate.Proofs.BackendStages.Metadata.Data502
import InitECandidate.Proofs.BackendStages.Filtered502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis502_eq : ffiLines Filtered502.lines = localFfis502 := by
  with_unfolding_all rfl
theorem ffiStep502 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis502) : LabToTarget.findFfiNames (Filtered502 :: rest) = suffixFfis502 := by
  rw [findFfiNames_section, localFfis502_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep502
end InitECandidate.Proofs.BackendStages.Metadata
