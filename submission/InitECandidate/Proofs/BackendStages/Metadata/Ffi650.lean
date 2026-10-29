import InitECandidate.Proofs.BackendStages.Metadata.Data650
import InitECandidate.Proofs.BackendStages.Filtered650
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis650_eq : ffiLines Filtered650.lines = localFfis650 := by
  with_unfolding_all rfl
theorem ffiStep650 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis650) : LabToTarget.findFfiNames (Filtered650 :: rest) = suffixFfis650 := by
  rw [findFfiNames_section, localFfis650_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep650
end InitECandidate.Proofs.BackendStages.Metadata
