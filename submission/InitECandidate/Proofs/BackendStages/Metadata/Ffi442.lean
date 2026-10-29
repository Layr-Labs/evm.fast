import InitECandidate.Proofs.BackendStages.Metadata.Data442
import InitECandidate.Proofs.BackendStages.Filtered442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis442_eq : ffiLines Filtered442.lines = localFfis442 := by
  with_unfolding_all rfl
theorem ffiStep442 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis442) : LabToTarget.findFfiNames (Filtered442 :: rest) = suffixFfis442 := by
  rw [findFfiNames_section, localFfis442_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep442
end InitECandidate.Proofs.BackendStages.Metadata
