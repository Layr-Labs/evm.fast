import InitECandidate.Proofs.BackendStages.Metadata.Data183
import InitECandidate.Proofs.BackendStages.Filtered183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis183_eq : ffiLines Filtered183.lines = localFfis183 := by
  with_unfolding_all rfl
theorem ffiStep183 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis183) : LabToTarget.findFfiNames (Filtered183 :: rest) = suffixFfis183 := by
  rw [findFfiNames_section, localFfis183_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep183
end InitECandidate.Proofs.BackendStages.Metadata
