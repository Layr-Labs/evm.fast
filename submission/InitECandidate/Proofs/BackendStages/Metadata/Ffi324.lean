import InitECandidate.Proofs.BackendStages.Metadata.Data324
import InitECandidate.Proofs.BackendStages.Filtered324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis324_eq : ffiLines Filtered324.lines = localFfis324 := by
  with_unfolding_all rfl
theorem ffiStep324 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis324) : LabToTarget.findFfiNames (Filtered324 :: rest) = suffixFfis324 := by
  rw [findFfiNames_section, localFfis324_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep324
end InitECandidate.Proofs.BackendStages.Metadata
