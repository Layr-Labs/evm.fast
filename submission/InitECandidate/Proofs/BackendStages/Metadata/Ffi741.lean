import InitECandidate.Proofs.BackendStages.Metadata.Data741
import InitECandidate.Proofs.BackendStages.Filtered741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis741_eq : ffiLines Filtered741.lines = localFfis741 := by
  with_unfolding_all rfl
theorem ffiStep741 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis741) : LabToTarget.findFfiNames (Filtered741 :: rest) = suffixFfis741 := by
  rw [findFfiNames_section, localFfis741_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep741
end InitECandidate.Proofs.BackendStages.Metadata
