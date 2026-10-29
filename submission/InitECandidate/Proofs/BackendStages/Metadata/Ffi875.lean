import InitECandidate.Proofs.BackendStages.Metadata.Data875
import InitECandidate.Proofs.BackendStages.Filtered875
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis875_eq : ffiLines Filtered875.lines = localFfis875 := by
  with_unfolding_all rfl
theorem ffiStep875 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis875) : LabToTarget.findFfiNames (Filtered875 :: rest) = suffixFfis875 := by
  rw [findFfiNames_section, localFfis875_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep875
end InitECandidate.Proofs.BackendStages.Metadata
