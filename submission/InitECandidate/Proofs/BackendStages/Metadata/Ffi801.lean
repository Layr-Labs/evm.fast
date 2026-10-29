import InitECandidate.Proofs.BackendStages.Metadata.Data801
import InitECandidate.Proofs.BackendStages.Filtered801
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis801_eq : ffiLines Filtered801.lines = localFfis801 := by
  with_unfolding_all rfl
theorem ffiStep801 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis801) : LabToTarget.findFfiNames (Filtered801 :: rest) = suffixFfis801 := by
  rw [findFfiNames_section, localFfis801_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep801
end InitECandidate.Proofs.BackendStages.Metadata
