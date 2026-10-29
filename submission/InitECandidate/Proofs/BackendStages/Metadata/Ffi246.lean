import InitECandidate.Proofs.BackendStages.Metadata.Data246
import InitECandidate.Proofs.BackendStages.Filtered246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis246_eq : ffiLines Filtered246.lines = localFfis246 := by
  with_unfolding_all rfl
theorem ffiStep246 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis246) : LabToTarget.findFfiNames (Filtered246 :: rest) = suffixFfis246 := by
  rw [findFfiNames_section, localFfis246_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep246
end InitECandidate.Proofs.BackendStages.Metadata
