import InitECandidate.Proofs.BackendStages.Metadata.Data480
import InitECandidate.Proofs.BackendStages.Filtered480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis480_eq : ffiLines Filtered480.lines = localFfis480 := by
  with_unfolding_all rfl
theorem ffiStep480 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis480) : LabToTarget.findFfiNames (Filtered480 :: rest) = suffixFfis480 := by
  rw [findFfiNames_section, localFfis480_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep480
end InitECandidate.Proofs.BackendStages.Metadata
