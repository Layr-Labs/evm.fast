import InitECandidate.Proofs.BackendStages.Metadata.Data538
import InitECandidate.Proofs.BackendStages.Filtered538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis538_eq : ffiLines Filtered538.lines = localFfis538 := by
  with_unfolding_all rfl
theorem ffiStep538 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis538) : LabToTarget.findFfiNames (Filtered538 :: rest) = suffixFfis538 := by
  rw [findFfiNames_section, localFfis538_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep538
end InitECandidate.Proofs.BackendStages.Metadata
