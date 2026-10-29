import InitECandidate.Proofs.BackendStages.Metadata.Data221
import InitECandidate.Proofs.BackendStages.Filtered221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis221_eq : ffiLines Filtered221.lines = localFfis221 := by
  with_unfolding_all rfl
theorem ffiStep221 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis221) : LabToTarget.findFfiNames (Filtered221 :: rest) = suffixFfis221 := by
  rw [findFfiNames_section, localFfis221_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep221
end InitECandidate.Proofs.BackendStages.Metadata
