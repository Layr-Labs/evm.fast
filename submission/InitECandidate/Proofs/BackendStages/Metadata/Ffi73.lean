import InitECandidate.Proofs.BackendStages.Metadata.Data73
import InitECandidate.Proofs.BackendStages.Filtered73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis73_eq : ffiLines Filtered73.lines = localFfis73 := by
  with_unfolding_all rfl
theorem ffiStep73 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis73) : LabToTarget.findFfiNames (Filtered73 :: rest) = suffixFfis73 := by
  rw [findFfiNames_section, localFfis73_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep73
end InitECandidate.Proofs.BackendStages.Metadata
