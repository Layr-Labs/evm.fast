import InitECandidate.Proofs.BackendStages.Metadata.Data336
import InitECandidate.Proofs.BackendStages.Filtered336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis336_eq : ffiLines Filtered336.lines = localFfis336 := by
  with_unfolding_all rfl
theorem ffiStep336 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis336) : LabToTarget.findFfiNames (Filtered336 :: rest) = suffixFfis336 := by
  rw [findFfiNames_section, localFfis336_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep336
end InitECandidate.Proofs.BackendStages.Metadata
