import InitECandidate.Proofs.BackendStages.Metadata.Data531
import InitECandidate.Proofs.BackendStages.Filtered531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis531_eq : ffiLines Filtered531.lines = localFfis531 := by
  with_unfolding_all rfl
theorem ffiStep531 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis531) : LabToTarget.findFfiNames (Filtered531 :: rest) = suffixFfis531 := by
  rw [findFfiNames_section, localFfis531_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep531
end InitECandidate.Proofs.BackendStages.Metadata
