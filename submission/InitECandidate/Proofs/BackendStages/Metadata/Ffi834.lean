import InitECandidate.Proofs.BackendStages.Metadata.Data834
import InitECandidate.Proofs.BackendStages.Filtered834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis834_eq : ffiLines Filtered834.lines = localFfis834 := by
  with_unfolding_all rfl
theorem ffiStep834 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis834) : LabToTarget.findFfiNames (Filtered834 :: rest) = suffixFfis834 := by
  rw [findFfiNames_section, localFfis834_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep834
end InitECandidate.Proofs.BackendStages.Metadata
