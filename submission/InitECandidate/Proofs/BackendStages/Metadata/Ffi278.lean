import InitECandidate.Proofs.BackendStages.Metadata.Data278
import InitECandidate.Proofs.BackendStages.Filtered278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis278_eq : ffiLines Filtered278.lines = localFfis278 := by
  with_unfolding_all rfl
theorem ffiStep278 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis278) : LabToTarget.findFfiNames (Filtered278 :: rest) = suffixFfis278 := by
  rw [findFfiNames_section, localFfis278_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep278
end InitECandidate.Proofs.BackendStages.Metadata
