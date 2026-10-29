import InitECandidate.Proofs.BackendStages.Metadata.Data553
import InitECandidate.Proofs.BackendStages.Filtered553
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis553_eq : ffiLines Filtered553.lines = localFfis553 := by
  with_unfolding_all rfl
theorem ffiStep553 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis553) : LabToTarget.findFfiNames (Filtered553 :: rest) = suffixFfis553 := by
  rw [findFfiNames_section, localFfis553_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep553
end InitECandidate.Proofs.BackendStages.Metadata
