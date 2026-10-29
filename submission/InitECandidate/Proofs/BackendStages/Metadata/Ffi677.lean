import InitECandidate.Proofs.BackendStages.Metadata.Data677
import InitECandidate.Proofs.BackendStages.Filtered677
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis677_eq : ffiLines Filtered677.lines = localFfis677 := by
  with_unfolding_all rfl
theorem ffiStep677 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis677) : LabToTarget.findFfiNames (Filtered677 :: rest) = suffixFfis677 := by
  rw [findFfiNames_section, localFfis677_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep677
end InitECandidate.Proofs.BackendStages.Metadata
