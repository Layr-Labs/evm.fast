import InitECandidate.Proofs.BackendStages.Metadata.Data488
import InitECandidate.Proofs.BackendStages.Filtered488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis488_eq : ffiLines Filtered488.lines = localFfis488 := by
  with_unfolding_all rfl
theorem ffiStep488 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis488) : LabToTarget.findFfiNames (Filtered488 :: rest) = suffixFfis488 := by
  rw [findFfiNames_section, localFfis488_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep488
end InitECandidate.Proofs.BackendStages.Metadata
