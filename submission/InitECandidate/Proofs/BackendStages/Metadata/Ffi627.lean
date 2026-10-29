import InitECandidate.Proofs.BackendStages.Metadata.Data627
import InitECandidate.Proofs.BackendStages.Filtered627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis627_eq : ffiLines Filtered627.lines = localFfis627 := by
  with_unfolding_all rfl
theorem ffiStep627 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis627) : LabToTarget.findFfiNames (Filtered627 :: rest) = suffixFfis627 := by
  rw [findFfiNames_section, localFfis627_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep627
end InitECandidate.Proofs.BackendStages.Metadata
