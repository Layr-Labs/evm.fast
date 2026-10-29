import InitECandidate.Proofs.BackendStages.Metadata.Data302
import InitECandidate.Proofs.BackendStages.Filtered302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis302_eq : ffiLines Filtered302.lines = localFfis302 := by
  with_unfolding_all rfl
theorem ffiStep302 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis302) : LabToTarget.findFfiNames (Filtered302 :: rest) = suffixFfis302 := by
  rw [findFfiNames_section, localFfis302_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep302
end InitECandidate.Proofs.BackendStages.Metadata
