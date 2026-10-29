import InitECandidate.Proofs.BackendStages.Metadata.Data406
import InitECandidate.Proofs.BackendStages.Filtered406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis406_eq : ffiLines Filtered406.lines = localFfis406 := by
  with_unfolding_all rfl
theorem ffiStep406 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis406) : LabToTarget.findFfiNames (Filtered406 :: rest) = suffixFfis406 := by
  rw [findFfiNames_section, localFfis406_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep406
end InitECandidate.Proofs.BackendStages.Metadata
