import InitECandidate.Proofs.BackendStages.Metadata.Data260
import InitECandidate.Proofs.BackendStages.Filtered260
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis260_eq : ffiLines Filtered260.lines = localFfis260 := by
  with_unfolding_all rfl
theorem ffiStep260 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis260) : LabToTarget.findFfiNames (Filtered260 :: rest) = suffixFfis260 := by
  rw [findFfiNames_section, localFfis260_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep260
end InitECandidate.Proofs.BackendStages.Metadata
