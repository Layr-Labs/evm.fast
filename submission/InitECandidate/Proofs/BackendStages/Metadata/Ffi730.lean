import InitECandidate.Proofs.BackendStages.Metadata.Data730
import InitECandidate.Proofs.BackendStages.Filtered730
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis730_eq : ffiLines Filtered730.lines = localFfis730 := by
  with_unfolding_all rfl
theorem ffiStep730 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis730) : LabToTarget.findFfiNames (Filtered730 :: rest) = suffixFfis730 := by
  rw [findFfiNames_section, localFfis730_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep730
end InitECandidate.Proofs.BackendStages.Metadata
