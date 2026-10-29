import InitECandidate.Proofs.BackendStages.Metadata.Data352
import InitECandidate.Proofs.BackendStages.Filtered352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis352_eq : ffiLines Filtered352.lines = localFfis352 := by
  with_unfolding_all rfl
theorem ffiStep352 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis352) : LabToTarget.findFfiNames (Filtered352 :: rest) = suffixFfis352 := by
  rw [findFfiNames_section, localFfis352_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep352
end InitECandidate.Proofs.BackendStages.Metadata
