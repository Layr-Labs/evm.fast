import InitECandidate.Proofs.BackendStages.Metadata.Data80
import InitECandidate.Proofs.BackendStages.Filtered80
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis80_eq : ffiLines Filtered80.lines = localFfis80 := by
  with_unfolding_all rfl
theorem ffiStep80 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis80) : LabToTarget.findFfiNames (Filtered80 :: rest) = suffixFfis80 := by
  rw [findFfiNames_section, localFfis80_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep80
end InitECandidate.Proofs.BackendStages.Metadata
