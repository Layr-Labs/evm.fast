import InitECandidate.Proofs.BackendStages.Metadata.Data521
import InitECandidate.Proofs.BackendStages.Filtered521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis521_eq : ffiLines Filtered521.lines = localFfis521 := by
  with_unfolding_all rfl
theorem ffiStep521 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis521) : LabToTarget.findFfiNames (Filtered521 :: rest) = suffixFfis521 := by
  rw [findFfiNames_section, localFfis521_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep521
end InitECandidate.Proofs.BackendStages.Metadata
