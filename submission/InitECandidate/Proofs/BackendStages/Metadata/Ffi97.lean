import InitECandidate.Proofs.BackendStages.Metadata.Data97
import InitECandidate.Proofs.BackendStages.Filtered97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis97_eq : ffiLines Filtered97.lines = localFfis97 := by
  with_unfolding_all rfl
theorem ffiStep97 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis97) : LabToTarget.findFfiNames (Filtered97 :: rest) = suffixFfis97 := by
  rw [findFfiNames_section, localFfis97_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep97
end InitECandidate.Proofs.BackendStages.Metadata
