import InitECandidate.Proofs.BackendStages.Metadata.Data234
import InitECandidate.Proofs.BackendStages.Filtered234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis234_eq : ffiLines Filtered234.lines = localFfis234 := by
  with_unfolding_all rfl
theorem ffiStep234 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis234) : LabToTarget.findFfiNames (Filtered234 :: rest) = suffixFfis234 := by
  rw [findFfiNames_section, localFfis234_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep234
end InitECandidate.Proofs.BackendStages.Metadata
