import InitECandidate.Proofs.BackendStages.Metadata.Data445
import InitECandidate.Proofs.BackendStages.Filtered445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis445_eq : ffiLines Filtered445.lines = localFfis445 := by
  with_unfolding_all rfl
theorem ffiStep445 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis445) : LabToTarget.findFfiNames (Filtered445 :: rest) = suffixFfis445 := by
  rw [findFfiNames_section, localFfis445_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep445
end InitECandidate.Proofs.BackendStages.Metadata
