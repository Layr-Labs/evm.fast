import InitECandidate.Proofs.BackendStages.Metadata.Data811
import InitECandidate.Proofs.BackendStages.Filtered811
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis811_eq : ffiLines Filtered811.lines = localFfis811 := by
  with_unfolding_all rfl
theorem ffiStep811 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis811) : LabToTarget.findFfiNames (Filtered811 :: rest) = suffixFfis811 := by
  rw [findFfiNames_section, localFfis811_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep811
end InitECandidate.Proofs.BackendStages.Metadata
