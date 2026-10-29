import InitECandidate.Proofs.BackendStages.Metadata.Data493
import InitECandidate.Proofs.BackendStages.Filtered493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis493_eq : ffiLines Filtered493.lines = localFfis493 := by
  with_unfolding_all rfl
theorem ffiStep493 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis493) : LabToTarget.findFfiNames (Filtered493 :: rest) = suffixFfis493 := by
  rw [findFfiNames_section, localFfis493_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep493
end InitECandidate.Proofs.BackendStages.Metadata
