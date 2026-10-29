import InitECandidate.Proofs.BackendStages.Metadata.Data562
import InitECandidate.Proofs.BackendStages.Filtered562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis562_eq : ffiLines Filtered562.lines = localFfis562 := by
  with_unfolding_all rfl
theorem ffiStep562 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis562) : LabToTarget.findFfiNames (Filtered562 :: rest) = suffixFfis562 := by
  rw [findFfiNames_section, localFfis562_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep562
end InitECandidate.Proofs.BackendStages.Metadata
