import InitECandidate.Proofs.BackendStages.Metadata.Data481
import InitECandidate.Proofs.BackendStages.Filtered481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis481_eq : ffiLines Filtered481.lines = localFfis481 := by
  with_unfolding_all rfl
theorem ffiStep481 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis481) : LabToTarget.findFfiNames (Filtered481 :: rest) = suffixFfis481 := by
  rw [findFfiNames_section, localFfis481_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep481
end InitECandidate.Proofs.BackendStages.Metadata
