import InitECandidate.Proofs.BackendStages.Metadata.Data70
import InitECandidate.Proofs.BackendStages.Filtered70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis70_eq : ffiLines Filtered70.lines = localFfis70 := by
  with_unfolding_all rfl
theorem ffiStep70 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis70) : LabToTarget.findFfiNames (Filtered70 :: rest) = suffixFfis70 := by
  rw [findFfiNames_section, localFfis70_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep70
end InitECandidate.Proofs.BackendStages.Metadata
