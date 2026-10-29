import InitECandidate.Proofs.BackendStages.Metadata.Data437
import InitECandidate.Proofs.BackendStages.Filtered437
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis437_eq : ffiLines Filtered437.lines = localFfis437 := by
  with_unfolding_all rfl
theorem ffiStep437 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis437) : LabToTarget.findFfiNames (Filtered437 :: rest) = suffixFfis437 := by
  rw [findFfiNames_section, localFfis437_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep437
end InitECandidate.Proofs.BackendStages.Metadata
