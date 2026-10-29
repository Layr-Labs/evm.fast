import InitECandidate.Proofs.BackendStages.Metadata.Data583
import InitECandidate.Proofs.BackendStages.Filtered583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis583_eq : ffiLines Filtered583.lines = localFfis583 := by
  with_unfolding_all rfl
theorem ffiStep583 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis583) : LabToTarget.findFfiNames (Filtered583 :: rest) = suffixFfis583 := by
  rw [findFfiNames_section, localFfis583_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep583
end InitECandidate.Proofs.BackendStages.Metadata
