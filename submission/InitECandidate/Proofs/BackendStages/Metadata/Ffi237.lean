import InitECandidate.Proofs.BackendStages.Metadata.Data237
import InitECandidate.Proofs.BackendStages.Filtered237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis237_eq : ffiLines Filtered237.lines = localFfis237 := by
  with_unfolding_all rfl
theorem ffiStep237 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis237) : LabToTarget.findFfiNames (Filtered237 :: rest) = suffixFfis237 := by
  rw [findFfiNames_section, localFfis237_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep237
end InitECandidate.Proofs.BackendStages.Metadata
