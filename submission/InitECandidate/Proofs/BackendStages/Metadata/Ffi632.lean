import InitECandidate.Proofs.BackendStages.Metadata.Data632
import InitECandidate.Proofs.BackendStages.Filtered632
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis632_eq : ffiLines Filtered632.lines = localFfis632 := by
  with_unfolding_all rfl
theorem ffiStep632 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis632) : LabToTarget.findFfiNames (Filtered632 :: rest) = suffixFfis632 := by
  rw [findFfiNames_section, localFfis632_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep632
end InitECandidate.Proofs.BackendStages.Metadata
