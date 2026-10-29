import InitECandidate.Proofs.BackendStages.Metadata.Data394
import InitECandidate.Proofs.BackendStages.Filtered394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis394_eq : ffiLines Filtered394.lines = localFfis394 := by
  with_unfolding_all rfl
theorem ffiStep394 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis394) : LabToTarget.findFfiNames (Filtered394 :: rest) = suffixFfis394 := by
  rw [findFfiNames_section, localFfis394_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep394
end InitECandidate.Proofs.BackendStages.Metadata
