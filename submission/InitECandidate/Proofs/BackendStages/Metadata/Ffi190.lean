import InitECandidate.Proofs.BackendStages.Metadata.Data190
import InitECandidate.Proofs.BackendStages.Filtered190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis190_eq : ffiLines Filtered190.lines = localFfis190 := by
  with_unfolding_all rfl
theorem ffiStep190 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis190) : LabToTarget.findFfiNames (Filtered190 :: rest) = suffixFfis190 := by
  rw [findFfiNames_section, localFfis190_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep190
end InitECandidate.Proofs.BackendStages.Metadata
