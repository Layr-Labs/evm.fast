import InitECandidate.Proofs.BackendStages.Metadata.Data269
import InitECandidate.Proofs.BackendStages.Filtered269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis269_eq : ffiLines Filtered269.lines = localFfis269 := by
  with_unfolding_all rfl
theorem ffiStep269 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis269) : LabToTarget.findFfiNames (Filtered269 :: rest) = suffixFfis269 := by
  rw [findFfiNames_section, localFfis269_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep269
end InitECandidate.Proofs.BackendStages.Metadata
