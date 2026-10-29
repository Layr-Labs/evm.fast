import InitECandidate.Proofs.BackendStages.Metadata.Data271
import InitECandidate.Proofs.BackendStages.Filtered271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis271_eq : ffiLines Filtered271.lines = localFfis271 := by
  with_unfolding_all rfl
theorem ffiStep271 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis271) : LabToTarget.findFfiNames (Filtered271 :: rest) = suffixFfis271 := by
  rw [findFfiNames_section, localFfis271_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep271
end InitECandidate.Proofs.BackendStages.Metadata
