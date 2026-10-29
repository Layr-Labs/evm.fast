import InitECandidate.Proofs.BackendStages.Metadata.Data638
import InitECandidate.Proofs.BackendStages.Filtered638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis638_eq : ffiLines Filtered638.lines = localFfis638 := by
  with_unfolding_all rfl
theorem ffiStep638 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis638) : LabToTarget.findFfiNames (Filtered638 :: rest) = suffixFfis638 := by
  rw [findFfiNames_section, localFfis638_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep638
end InitECandidate.Proofs.BackendStages.Metadata
