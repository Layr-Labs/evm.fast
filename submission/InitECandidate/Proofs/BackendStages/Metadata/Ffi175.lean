import InitECandidate.Proofs.BackendStages.Metadata.Data175
import InitECandidate.Proofs.BackendStages.Filtered175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis175_eq : ffiLines Filtered175.lines = localFfis175 := by
  with_unfolding_all rfl
theorem ffiStep175 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis175) : LabToTarget.findFfiNames (Filtered175 :: rest) = suffixFfis175 := by
  rw [findFfiNames_section, localFfis175_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep175
end InitECandidate.Proofs.BackendStages.Metadata
