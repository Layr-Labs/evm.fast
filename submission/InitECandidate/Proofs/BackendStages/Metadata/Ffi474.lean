import InitECandidate.Proofs.BackendStages.Metadata.Data474
import InitECandidate.Proofs.BackendStages.Filtered474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis474_eq : ffiLines Filtered474.lines = localFfis474 := by
  with_unfolding_all rfl
theorem ffiStep474 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis474) : LabToTarget.findFfiNames (Filtered474 :: rest) = suffixFfis474 := by
  rw [findFfiNames_section, localFfis474_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep474
end InitECandidate.Proofs.BackendStages.Metadata
