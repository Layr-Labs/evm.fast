import InitECandidate.Proofs.BackendStages.Metadata.Data326
import InitECandidate.Proofs.BackendStages.Filtered326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis326_eq : ffiLines Filtered326.lines = localFfis326 := by
  with_unfolding_all rfl
theorem ffiStep326 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis326) : LabToTarget.findFfiNames (Filtered326 :: rest) = suffixFfis326 := by
  rw [findFfiNames_section, localFfis326_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep326
end InitECandidate.Proofs.BackendStages.Metadata
