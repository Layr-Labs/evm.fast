import InitECandidate.Proofs.BackendStages.Metadata.Data458
import InitECandidate.Proofs.BackendStages.Filtered458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis458_eq : ffiLines Filtered458.lines = localFfis458 := by
  with_unfolding_all rfl
theorem ffiStep458 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis458) : LabToTarget.findFfiNames (Filtered458 :: rest) = suffixFfis458 := by
  rw [findFfiNames_section, localFfis458_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep458
end InitECandidate.Proofs.BackendStages.Metadata
