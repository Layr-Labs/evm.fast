import InitECandidate.Proofs.BackendStages.Metadata.Data653
import InitECandidate.Proofs.BackendStages.Filtered653
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis653_eq : ffiLines Filtered653.lines = localFfis653 := by
  with_unfolding_all rfl
theorem ffiStep653 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis653) : LabToTarget.findFfiNames (Filtered653 :: rest) = suffixFfis653 := by
  rw [findFfiNames_section, localFfis653_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep653
end InitECandidate.Proofs.BackendStages.Metadata
