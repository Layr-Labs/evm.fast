import InitECandidate.Proofs.BackendStages.Metadata.Data229
import InitECandidate.Proofs.BackendStages.Filtered229
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis229_eq : ffiLines Filtered229.lines = localFfis229 := by
  with_unfolding_all rfl
theorem ffiStep229 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis229) : LabToTarget.findFfiNames (Filtered229 :: rest) = suffixFfis229 := by
  rw [findFfiNames_section, localFfis229_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep229
end InitECandidate.Proofs.BackendStages.Metadata
