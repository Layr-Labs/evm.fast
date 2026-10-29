import InitECandidate.Proofs.BackendStages.Metadata.Data135
import InitECandidate.Proofs.BackendStages.Filtered135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis135_eq : ffiLines Filtered135.lines = localFfis135 := by
  with_unfolding_all rfl
theorem ffiStep135 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis135) : LabToTarget.findFfiNames (Filtered135 :: rest) = suffixFfis135 := by
  rw [findFfiNames_section, localFfis135_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep135
end InitECandidate.Proofs.BackendStages.Metadata
