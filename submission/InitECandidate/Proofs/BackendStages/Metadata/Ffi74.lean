import InitECandidate.Proofs.BackendStages.Metadata.Data74
import InitECandidate.Proofs.BackendStages.Filtered74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis74_eq : ffiLines Filtered74.lines = localFfis74 := by
  with_unfolding_all rfl
theorem ffiStep74 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis74) : LabToTarget.findFfiNames (Filtered74 :: rest) = suffixFfis74 := by
  rw [findFfiNames_section, localFfis74_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep74
end InitECandidate.Proofs.BackendStages.Metadata
