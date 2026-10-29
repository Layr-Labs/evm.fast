import InitECandidate.Proofs.BackendStages.Metadata.Data572
import InitECandidate.Proofs.BackendStages.Filtered572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis572_eq : ffiLines Filtered572.lines = localFfis572 := by
  with_unfolding_all rfl
theorem ffiStep572 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis572) : LabToTarget.findFfiNames (Filtered572 :: rest) = suffixFfis572 := by
  rw [findFfiNames_section, localFfis572_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep572
end InitECandidate.Proofs.BackendStages.Metadata
