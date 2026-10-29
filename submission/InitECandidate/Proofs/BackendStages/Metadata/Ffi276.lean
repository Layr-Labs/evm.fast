import InitECandidate.Proofs.BackendStages.Metadata.Data276
import InitECandidate.Proofs.BackendStages.Filtered276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis276_eq : ffiLines Filtered276.lines = localFfis276 := by
  with_unfolding_all rfl
theorem ffiStep276 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis276) : LabToTarget.findFfiNames (Filtered276 :: rest) = suffixFfis276 := by
  rw [findFfiNames_section, localFfis276_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep276
end InitECandidate.Proofs.BackendStages.Metadata
