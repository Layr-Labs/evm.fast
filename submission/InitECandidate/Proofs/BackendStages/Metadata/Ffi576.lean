import InitECandidate.Proofs.BackendStages.Metadata.Data576
import InitECandidate.Proofs.BackendStages.Filtered576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis576_eq : ffiLines Filtered576.lines = localFfis576 := by
  with_unfolding_all rfl
theorem ffiStep576 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis576) : LabToTarget.findFfiNames (Filtered576 :: rest) = suffixFfis576 := by
  rw [findFfiNames_section, localFfis576_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep576
end InitECandidate.Proofs.BackendStages.Metadata
