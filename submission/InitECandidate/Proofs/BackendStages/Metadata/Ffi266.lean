import InitECandidate.Proofs.BackendStages.Metadata.Data266
import InitECandidate.Proofs.BackendStages.Filtered266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis266_eq : ffiLines Filtered266.lines = localFfis266 := by
  with_unfolding_all rfl
theorem ffiStep266 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis266) : LabToTarget.findFfiNames (Filtered266 :: rest) = suffixFfis266 := by
  rw [findFfiNames_section, localFfis266_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep266
end InitECandidate.Proofs.BackendStages.Metadata
