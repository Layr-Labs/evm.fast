import InitECandidate.Proofs.BackendStages.Metadata.Data822
import InitECandidate.Proofs.BackendStages.Filtered822
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis822_eq : ffiLines Filtered822.lines = localFfis822 := by
  with_unfolding_all rfl
theorem ffiStep822 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis822) : LabToTarget.findFfiNames (Filtered822 :: rest) = suffixFfis822 := by
  rw [findFfiNames_section, localFfis822_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep822
end InitECandidate.Proofs.BackendStages.Metadata
