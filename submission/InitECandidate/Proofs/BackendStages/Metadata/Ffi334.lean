import InitECandidate.Proofs.BackendStages.Metadata.Data334
import InitECandidate.Proofs.BackendStages.Filtered334
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis334_eq : ffiLines Filtered334.lines = localFfis334 := by
  with_unfolding_all rfl
theorem ffiStep334 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis334) : LabToTarget.findFfiNames (Filtered334 :: rest) = suffixFfis334 := by
  rw [findFfiNames_section, localFfis334_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep334
end InitECandidate.Proofs.BackendStages.Metadata
