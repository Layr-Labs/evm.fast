import InitECandidate.Proofs.BackendStages.Metadata.Data573
import InitECandidate.Proofs.BackendStages.Filtered573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis573_eq : ffiLines Filtered573.lines = localFfis573 := by
  with_unfolding_all rfl
theorem ffiStep573 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis573) : LabToTarget.findFfiNames (Filtered573 :: rest) = suffixFfis573 := by
  rw [findFfiNames_section, localFfis573_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep573
end InitECandidate.Proofs.BackendStages.Metadata
