import InitECandidate.Proofs.BackendStages.Metadata.Data425
import InitECandidate.Proofs.BackendStages.Filtered425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis425_eq : ffiLines Filtered425.lines = localFfis425 := by
  with_unfolding_all rfl
theorem ffiStep425 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis425) : LabToTarget.findFfiNames (Filtered425 :: rest) = suffixFfis425 := by
  rw [findFfiNames_section, localFfis425_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep425
end InitECandidate.Proofs.BackendStages.Metadata
