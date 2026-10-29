import InitECandidate.Proofs.BackendStages.Metadata.Data490
import InitECandidate.Proofs.BackendStages.Filtered490
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis490_eq : ffiLines Filtered490.lines = localFfis490 := by
  with_unfolding_all rfl
theorem ffiStep490 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis490) : LabToTarget.findFfiNames (Filtered490 :: rest) = suffixFfis490 := by
  rw [findFfiNames_section, localFfis490_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep490
end InitECandidate.Proofs.BackendStages.Metadata
