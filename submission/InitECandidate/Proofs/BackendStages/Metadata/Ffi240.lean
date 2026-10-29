import InitECandidate.Proofs.BackendStages.Metadata.Data240
import InitECandidate.Proofs.BackendStages.Filtered240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis240_eq : ffiLines Filtered240.lines = localFfis240 := by
  with_unfolding_all rfl
theorem ffiStep240 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis240) : LabToTarget.findFfiNames (Filtered240 :: rest) = suffixFfis240 := by
  rw [findFfiNames_section, localFfis240_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep240
end InitECandidate.Proofs.BackendStages.Metadata
