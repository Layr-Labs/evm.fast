import InitECandidate.Proofs.BackendStages.Metadata.Data138
import InitECandidate.Proofs.BackendStages.Filtered138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis138_eq : ffiLines Filtered138.lines = localFfis138 := by
  with_unfolding_all rfl
theorem ffiStep138 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis138) : LabToTarget.findFfiNames (Filtered138 :: rest) = suffixFfis138 := by
  rw [findFfiNames_section, localFfis138_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep138
end InitECandidate.Proofs.BackendStages.Metadata
