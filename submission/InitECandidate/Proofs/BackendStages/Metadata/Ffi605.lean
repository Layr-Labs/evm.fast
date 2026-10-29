import InitECandidate.Proofs.BackendStages.Metadata.Data605
import InitECandidate.Proofs.BackendStages.Filtered605
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis605_eq : ffiLines Filtered605.lines = localFfis605 := by
  with_unfolding_all rfl
theorem ffiStep605 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis605) : LabToTarget.findFfiNames (Filtered605 :: rest) = suffixFfis605 := by
  rw [findFfiNames_section, localFfis605_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep605
end InitECandidate.Proofs.BackendStages.Metadata
