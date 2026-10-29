import InitECandidate.Proofs.BackendStages.Metadata.Data620
import InitECandidate.Proofs.BackendStages.Filtered620
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis620_eq : ffiLines Filtered620.lines = localFfis620 := by
  with_unfolding_all rfl
theorem ffiStep620 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis620) : LabToTarget.findFfiNames (Filtered620 :: rest) = suffixFfis620 := by
  rw [findFfiNames_section, localFfis620_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep620
end InitECandidate.Proofs.BackendStages.Metadata
