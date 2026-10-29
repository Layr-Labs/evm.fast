import InitECandidate.Proofs.BackendStages.Metadata.Data528
import InitECandidate.Proofs.BackendStages.Filtered528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis528_eq : ffiLines Filtered528.lines = localFfis528 := by
  with_unfolding_all rfl
theorem ffiStep528 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis528) : LabToTarget.findFfiNames (Filtered528 :: rest) = suffixFfis528 := by
  rw [findFfiNames_section, localFfis528_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep528
end InitECandidate.Proofs.BackendStages.Metadata
