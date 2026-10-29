import InitECandidate.Proofs.BackendStages.Metadata.Data636
import InitECandidate.Proofs.BackendStages.Filtered636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis636_eq : ffiLines Filtered636.lines = localFfis636 := by
  with_unfolding_all rfl
theorem ffiStep636 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis636) : LabToTarget.findFfiNames (Filtered636 :: rest) = suffixFfis636 := by
  rw [findFfiNames_section, localFfis636_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep636
end InitECandidate.Proofs.BackendStages.Metadata
