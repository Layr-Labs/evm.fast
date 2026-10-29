import InitECandidate.Proofs.BackendStages.Metadata.Data381
import InitECandidate.Proofs.BackendStages.Filtered381
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis381_eq : ffiLines Filtered381.lines = localFfis381 := by
  with_unfolding_all rfl
theorem ffiStep381 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis381) : LabToTarget.findFfiNames (Filtered381 :: rest) = suffixFfis381 := by
  rw [findFfiNames_section, localFfis381_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep381
end InitECandidate.Proofs.BackendStages.Metadata
