import InitECandidate.Proofs.BackendStages.Metadata.Data666
import InitECandidate.Proofs.BackendStages.Filtered666
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis666_eq : ffiLines Filtered666.lines = localFfis666 := by
  with_unfolding_all rfl
theorem ffiStep666 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis666) : LabToTarget.findFfiNames (Filtered666 :: rest) = suffixFfis666 := by
  rw [findFfiNames_section, localFfis666_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep666
end InitECandidate.Proofs.BackendStages.Metadata
