import InitECandidate.Proofs.BackendStages.Metadata.Data731
import InitECandidate.Proofs.BackendStages.Filtered731
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis731_eq : ffiLines Filtered731.lines = localFfis731 := by
  with_unfolding_all rfl
theorem ffiStep731 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis731) : LabToTarget.findFfiNames (Filtered731 :: rest) = suffixFfis731 := by
  rw [findFfiNames_section, localFfis731_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep731
end InitECandidate.Proofs.BackendStages.Metadata
