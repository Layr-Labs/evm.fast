import InitECandidate.Proofs.BackendStages.Metadata.Data598
import InitECandidate.Proofs.BackendStages.Filtered598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis598_eq : ffiLines Filtered598.lines = localFfis598 := by
  with_unfolding_all rfl
theorem ffiStep598 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis598) : LabToTarget.findFfiNames (Filtered598 :: rest) = suffixFfis598 := by
  rw [findFfiNames_section, localFfis598_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep598
end InitECandidate.Proofs.BackendStages.Metadata
