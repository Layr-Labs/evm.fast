import InitECandidate.Proofs.BackendStages.Metadata.Data294
import InitECandidate.Proofs.BackendStages.Filtered294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis294_eq : ffiLines Filtered294.lines = localFfis294 := by
  with_unfolding_all rfl
theorem ffiStep294 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis294) : LabToTarget.findFfiNames (Filtered294 :: rest) = suffixFfis294 := by
  rw [findFfiNames_section, localFfis294_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep294
end InitECandidate.Proofs.BackendStages.Metadata
