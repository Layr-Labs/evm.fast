import InitECandidate.Proofs.BackendStages.Metadata.Data692
import InitECandidate.Proofs.BackendStages.Filtered692
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis692_eq : ffiLines Filtered692.lines = localFfis692 := by
  with_unfolding_all rfl
theorem ffiStep692 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis692) : LabToTarget.findFfiNames (Filtered692 :: rest) = suffixFfis692 := by
  rw [findFfiNames_section, localFfis692_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep692
end InitECandidate.Proofs.BackendStages.Metadata
