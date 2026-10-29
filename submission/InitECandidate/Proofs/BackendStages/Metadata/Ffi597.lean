import InitECandidate.Proofs.BackendStages.Metadata.Data597
import InitECandidate.Proofs.BackendStages.Filtered597
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis597_eq : ffiLines Filtered597.lines = localFfis597 := by
  with_unfolding_all rfl
theorem ffiStep597 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis597) : LabToTarget.findFfiNames (Filtered597 :: rest) = suffixFfis597 := by
  rw [findFfiNames_section, localFfis597_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep597
end InitECandidate.Proofs.BackendStages.Metadata
