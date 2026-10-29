import InitECandidate.Proofs.BackendStages.Metadata.Data315
import InitECandidate.Proofs.BackendStages.Filtered315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis315_eq : ffiLines Filtered315.lines = localFfis315 := by
  with_unfolding_all rfl
theorem ffiStep315 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis315) : LabToTarget.findFfiNames (Filtered315 :: rest) = suffixFfis315 := by
  rw [findFfiNames_section, localFfis315_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep315
end InitECandidate.Proofs.BackendStages.Metadata
