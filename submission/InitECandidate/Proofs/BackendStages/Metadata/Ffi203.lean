import InitECandidate.Proofs.BackendStages.Metadata.Data203
import InitECandidate.Proofs.BackendStages.Filtered203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis203_eq : ffiLines Filtered203.lines = localFfis203 := by
  with_unfolding_all rfl
theorem ffiStep203 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis203) : LabToTarget.findFfiNames (Filtered203 :: rest) = suffixFfis203 := by
  rw [findFfiNames_section, localFfis203_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep203
end InitECandidate.Proofs.BackendStages.Metadata
