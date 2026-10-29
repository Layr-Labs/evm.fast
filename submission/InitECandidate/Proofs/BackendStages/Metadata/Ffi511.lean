import InitECandidate.Proofs.BackendStages.Metadata.Data511
import InitECandidate.Proofs.BackendStages.Filtered511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis511_eq : ffiLines Filtered511.lines = localFfis511 := by
  with_unfolding_all rfl
theorem ffiStep511 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis511) : LabToTarget.findFfiNames (Filtered511 :: rest) = suffixFfis511 := by
  rw [findFfiNames_section, localFfis511_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep511
end InitECandidate.Proofs.BackendStages.Metadata
