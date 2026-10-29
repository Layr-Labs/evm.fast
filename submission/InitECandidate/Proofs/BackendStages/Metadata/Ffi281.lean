import InitECandidate.Proofs.BackendStages.Metadata.Data281
import InitECandidate.Proofs.BackendStages.Filtered281
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis281_eq : ffiLines Filtered281.lines = localFfis281 := by
  with_unfolding_all rfl
theorem ffiStep281 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis281) : LabToTarget.findFfiNames (Filtered281 :: rest) = suffixFfis281 := by
  rw [findFfiNames_section, localFfis281_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep281
end InitECandidate.Proofs.BackendStages.Metadata
