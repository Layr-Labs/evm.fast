import InitECandidate.Proofs.BackendStages.Metadata.Data292
import InitECandidate.Proofs.BackendStages.Filtered292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis292_eq : ffiLines Filtered292.lines = localFfis292 := by
  with_unfolding_all rfl
theorem ffiStep292 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis292) : LabToTarget.findFfiNames (Filtered292 :: rest) = suffixFfis292 := by
  rw [findFfiNames_section, localFfis292_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep292
end InitECandidate.Proofs.BackendStages.Metadata
