import InitECandidate.Proofs.BackendStages.Metadata.Data115
import InitECandidate.Proofs.BackendStages.Filtered115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis115_eq : ffiLines Filtered115.lines = localFfis115 := by
  with_unfolding_all rfl
theorem ffiStep115 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis115) : LabToTarget.findFfiNames (Filtered115 :: rest) = suffixFfis115 := by
  rw [findFfiNames_section, localFfis115_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep115
end InitECandidate.Proofs.BackendStages.Metadata
