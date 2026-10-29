import InitECandidate.Proofs.BackendStages.Metadata.Data567
import InitECandidate.Proofs.BackendStages.Filtered567
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis567_eq : ffiLines Filtered567.lines = localFfis567 := by
  with_unfolding_all rfl
theorem ffiStep567 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis567) : LabToTarget.findFfiNames (Filtered567 :: rest) = suffixFfis567 := by
  rw [findFfiNames_section, localFfis567_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep567
end InitECandidate.Proofs.BackendStages.Metadata
