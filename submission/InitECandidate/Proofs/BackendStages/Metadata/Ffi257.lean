import InitECandidate.Proofs.BackendStages.Metadata.Data257
import InitECandidate.Proofs.BackendStages.Filtered257
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis257_eq : ffiLines Filtered257.lines = localFfis257 := by
  with_unfolding_all rfl
theorem ffiStep257 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis257) : LabToTarget.findFfiNames (Filtered257 :: rest) = suffixFfis257 := by
  rw [findFfiNames_section, localFfis257_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep257
end InitECandidate.Proofs.BackendStages.Metadata
