import InitECandidate.Proofs.BackendStages.Metadata.Data540
import InitECandidate.Proofs.BackendStages.Filtered540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis540_eq : ffiLines Filtered540.lines = localFfis540 := by
  with_unfolding_all rfl
theorem ffiStep540 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis540) : LabToTarget.findFfiNames (Filtered540 :: rest) = suffixFfis540 := by
  rw [findFfiNames_section, localFfis540_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep540
end InitECandidate.Proofs.BackendStages.Metadata
