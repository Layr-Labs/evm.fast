import InitECandidate.Proofs.BackendStages.Metadata.Data854
import InitECandidate.Proofs.BackendStages.Filtered854
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis854_eq : ffiLines Filtered854.lines = localFfis854 := by
  with_unfolding_all rfl
theorem ffiStep854 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis854) : LabToTarget.findFfiNames (Filtered854 :: rest) = suffixFfis854 := by
  rw [findFfiNames_section, localFfis854_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep854
end InitECandidate.Proofs.BackendStages.Metadata
