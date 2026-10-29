import InitECandidate.Proofs.BackendStages.Metadata.Data265
import InitECandidate.Proofs.BackendStages.Filtered265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis265_eq : ffiLines Filtered265.lines = localFfis265 := by
  with_unfolding_all rfl
theorem ffiStep265 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis265) : LabToTarget.findFfiNames (Filtered265 :: rest) = suffixFfis265 := by
  rw [findFfiNames_section, localFfis265_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep265
end InitECandidate.Proofs.BackendStages.Metadata
