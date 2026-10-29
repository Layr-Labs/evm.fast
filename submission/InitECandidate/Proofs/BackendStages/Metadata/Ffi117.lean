import InitECandidate.Proofs.BackendStages.Metadata.Data117
import InitECandidate.Proofs.BackendStages.Filtered117
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis117_eq : ffiLines Filtered117.lines = localFfis117 := by
  with_unfolding_all rfl
theorem ffiStep117 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis117) : LabToTarget.findFfiNames (Filtered117 :: rest) = suffixFfis117 := by
  rw [findFfiNames_section, localFfis117_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep117
end InitECandidate.Proofs.BackendStages.Metadata
