import InitECandidate.Proofs.BackendStages.Metadata.Data691
import InitECandidate.Proofs.BackendStages.Filtered691
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis691_eq : ffiLines Filtered691.lines = localFfis691 := by
  with_unfolding_all rfl
theorem ffiStep691 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis691) : LabToTarget.findFfiNames (Filtered691 :: rest) = suffixFfis691 := by
  rw [findFfiNames_section, localFfis691_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep691
end InitECandidate.Proofs.BackendStages.Metadata
