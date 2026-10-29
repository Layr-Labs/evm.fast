import InitECandidate.Proofs.BackendStages.Metadata.Data535
import InitECandidate.Proofs.BackendStages.Filtered535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis535_eq : ffiLines Filtered535.lines = localFfis535 := by
  with_unfolding_all rfl
theorem ffiStep535 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis535) : LabToTarget.findFfiNames (Filtered535 :: rest) = suffixFfis535 := by
  rw [findFfiNames_section, localFfis535_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep535
end InitECandidate.Proofs.BackendStages.Metadata
