import InitECandidate.Proofs.BackendStages.Metadata.Data551
import InitECandidate.Proofs.BackendStages.Filtered551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis551_eq : ffiLines Filtered551.lines = localFfis551 := by
  with_unfolding_all rfl
theorem ffiStep551 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis551) : LabToTarget.findFfiNames (Filtered551 :: rest) = suffixFfis551 := by
  rw [findFfiNames_section, localFfis551_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep551
end InitECandidate.Proofs.BackendStages.Metadata
