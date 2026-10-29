import InitECandidate.Proofs.BackendStages.Metadata.Data467
import InitECandidate.Proofs.BackendStages.Filtered467
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis467_eq : ffiLines Filtered467.lines = localFfis467 := by
  with_unfolding_all rfl
theorem ffiStep467 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis467) : LabToTarget.findFfiNames (Filtered467 :: rest) = suffixFfis467 := by
  rw [findFfiNames_section, localFfis467_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep467
end InitECandidate.Proofs.BackendStages.Metadata
