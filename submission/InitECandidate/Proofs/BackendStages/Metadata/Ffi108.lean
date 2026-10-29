import InitECandidate.Proofs.BackendStages.Metadata.Data108
import InitECandidate.Proofs.BackendStages.Filtered108
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis108_eq : ffiLines Filtered108.lines = localFfis108 := by
  with_unfolding_all rfl
theorem ffiStep108 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis108) : LabToTarget.findFfiNames (Filtered108 :: rest) = suffixFfis108 := by
  rw [findFfiNames_section, localFfis108_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep108
end InitECandidate.Proofs.BackendStages.Metadata
