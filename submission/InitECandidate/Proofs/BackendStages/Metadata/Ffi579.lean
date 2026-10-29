import InitECandidate.Proofs.BackendStages.Metadata.Data579
import InitECandidate.Proofs.BackendStages.Filtered579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis579_eq : ffiLines Filtered579.lines = localFfis579 := by
  with_unfolding_all rfl
theorem ffiStep579 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis579) : LabToTarget.findFfiNames (Filtered579 :: rest) = suffixFfis579 := by
  rw [findFfiNames_section, localFfis579_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep579
end InitECandidate.Proofs.BackendStages.Metadata
