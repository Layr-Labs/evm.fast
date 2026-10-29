import InitECandidate.Proofs.BackendStages.Metadata.Data555
import InitECandidate.Proofs.BackendStages.Filtered555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis555_eq : ffiLines Filtered555.lines = localFfis555 := by
  with_unfolding_all rfl
theorem ffiStep555 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis555) : LabToTarget.findFfiNames (Filtered555 :: rest) = suffixFfis555 := by
  rw [findFfiNames_section, localFfis555_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep555
end InitECandidate.Proofs.BackendStages.Metadata
