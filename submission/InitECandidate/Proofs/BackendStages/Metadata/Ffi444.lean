import InitECandidate.Proofs.BackendStages.Metadata.Data444
import InitECandidate.Proofs.BackendStages.Filtered444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis444_eq : ffiLines Filtered444.lines = localFfis444 := by
  with_unfolding_all rfl
theorem ffiStep444 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis444) : LabToTarget.findFfiNames (Filtered444 :: rest) = suffixFfis444 := by
  rw [findFfiNames_section, localFfis444_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep444
end InitECandidate.Proofs.BackendStages.Metadata
