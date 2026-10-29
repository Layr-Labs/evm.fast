import InitECandidate.Proofs.BackendStages.Metadata.Data131
import InitECandidate.Proofs.BackendStages.Filtered131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis131_eq : ffiLines Filtered131.lines = localFfis131 := by
  with_unfolding_all rfl
theorem ffiStep131 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis131) : LabToTarget.findFfiNames (Filtered131 :: rest) = suffixFfis131 := by
  rw [findFfiNames_section, localFfis131_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep131
end InitECandidate.Proofs.BackendStages.Metadata
