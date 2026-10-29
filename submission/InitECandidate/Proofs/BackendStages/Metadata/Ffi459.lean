import InitECandidate.Proofs.BackendStages.Metadata.Data459
import InitECandidate.Proofs.BackendStages.Filtered459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis459_eq : ffiLines Filtered459.lines = localFfis459 := by
  with_unfolding_all rfl
theorem ffiStep459 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis459) : LabToTarget.findFfiNames (Filtered459 :: rest) = suffixFfis459 := by
  rw [findFfiNames_section, localFfis459_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep459
end InitECandidate.Proofs.BackendStages.Metadata
