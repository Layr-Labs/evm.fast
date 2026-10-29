import InitECandidate.Proofs.BackendStages.Metadata.Data577
import InitECandidate.Proofs.BackendStages.Filtered577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis577_eq : ffiLines Filtered577.lines = localFfis577 := by
  with_unfolding_all rfl
theorem ffiStep577 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis577) : LabToTarget.findFfiNames (Filtered577 :: rest) = suffixFfis577 := by
  rw [findFfiNames_section, localFfis577_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep577
end InitECandidate.Proofs.BackendStages.Metadata
