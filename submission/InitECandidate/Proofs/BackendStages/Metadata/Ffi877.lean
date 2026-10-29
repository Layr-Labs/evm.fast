import InitECandidate.Proofs.BackendStages.Metadata.Data877
import InitECandidate.Proofs.BackendStages.Filtered877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis877_eq : ffiLines Filtered877.lines = localFfis877 := by
  with_unfolding_all rfl
theorem ffiStep877 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis877) : LabToTarget.findFfiNames (Filtered877 :: rest) = suffixFfis877 := by
  rw [findFfiNames_section, localFfis877_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep877
end InitECandidate.Proofs.BackendStages.Metadata
