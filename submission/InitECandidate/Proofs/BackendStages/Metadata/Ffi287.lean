import InitECandidate.Proofs.BackendStages.Metadata.Data287
import InitECandidate.Proofs.BackendStages.Filtered287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis287_eq : ffiLines Filtered287.lines = localFfis287 := by
  with_unfolding_all rfl
theorem ffiStep287 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis287) : LabToTarget.findFfiNames (Filtered287 :: rest) = suffixFfis287 := by
  rw [findFfiNames_section, localFfis287_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep287
end InitECandidate.Proofs.BackendStages.Metadata
