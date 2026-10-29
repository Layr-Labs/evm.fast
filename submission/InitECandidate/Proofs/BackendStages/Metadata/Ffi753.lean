import InitECandidate.Proofs.BackendStages.Metadata.Data753
import InitECandidate.Proofs.BackendStages.Filtered753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis753_eq : ffiLines Filtered753.lines = localFfis753 := by
  with_unfolding_all rfl
theorem ffiStep753 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis753) : LabToTarget.findFfiNames (Filtered753 :: rest) = suffixFfis753 := by
  rw [findFfiNames_section, localFfis753_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep753
end InitECandidate.Proofs.BackendStages.Metadata
