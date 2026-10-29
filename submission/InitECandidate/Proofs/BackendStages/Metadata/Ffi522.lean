import InitECandidate.Proofs.BackendStages.Metadata.Data522
import InitECandidate.Proofs.BackendStages.Filtered522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis522_eq : ffiLines Filtered522.lines = localFfis522 := by
  with_unfolding_all rfl
theorem ffiStep522 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis522) : LabToTarget.findFfiNames (Filtered522 :: rest) = suffixFfis522 := by
  rw [findFfiNames_section, localFfis522_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep522
end InitECandidate.Proofs.BackendStages.Metadata
