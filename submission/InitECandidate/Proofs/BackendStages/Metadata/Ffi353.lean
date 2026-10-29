import InitECandidate.Proofs.BackendStages.Metadata.Data353
import InitECandidate.Proofs.BackendStages.Filtered353
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis353_eq : ffiLines Filtered353.lines = localFfis353 := by
  with_unfolding_all rfl
theorem ffiStep353 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis353) : LabToTarget.findFfiNames (Filtered353 :: rest) = suffixFfis353 := by
  rw [findFfiNames_section, localFfis353_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep353
end InitECandidate.Proofs.BackendStages.Metadata
