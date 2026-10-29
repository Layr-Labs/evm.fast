import InitECandidate.Proofs.BackendStages.Metadata.Data455
import InitECandidate.Proofs.BackendStages.Filtered455
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis455_eq : ffiLines Filtered455.lines = localFfis455 := by
  with_unfolding_all rfl
theorem ffiStep455 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis455) : LabToTarget.findFfiNames (Filtered455 :: rest) = suffixFfis455 := by
  rw [findFfiNames_section, localFfis455_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep455
end InitECandidate.Proofs.BackendStages.Metadata
