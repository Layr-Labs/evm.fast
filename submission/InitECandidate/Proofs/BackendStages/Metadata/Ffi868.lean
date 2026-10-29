import InitECandidate.Proofs.BackendStages.Metadata.Data868
import InitECandidate.Proofs.BackendStages.Filtered868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis868_eq : ffiLines Filtered868.lines = localFfis868 := by
  with_unfolding_all rfl
theorem ffiStep868 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis868) : LabToTarget.findFfiNames (Filtered868 :: rest) = suffixFfis868 := by
  rw [findFfiNames_section, localFfis868_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep868
end InitECandidate.Proofs.BackendStages.Metadata
