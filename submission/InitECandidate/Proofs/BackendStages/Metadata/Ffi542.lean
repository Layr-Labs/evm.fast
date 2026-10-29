import InitECandidate.Proofs.BackendStages.Metadata.Data542
import InitECandidate.Proofs.BackendStages.Filtered542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis542_eq : ffiLines Filtered542.lines = localFfis542 := by
  with_unfolding_all rfl
theorem ffiStep542 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis542) : LabToTarget.findFfiNames (Filtered542 :: rest) = suffixFfis542 := by
  rw [findFfiNames_section, localFfis542_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep542
end InitECandidate.Proofs.BackendStages.Metadata
