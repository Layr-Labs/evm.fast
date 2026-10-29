import InitECandidate.Proofs.BackendStages.Metadata.Data241
import InitECandidate.Proofs.BackendStages.Filtered241
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis241_eq : ffiLines Filtered241.lines = localFfis241 := by
  with_unfolding_all rfl
theorem ffiStep241 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis241) : LabToTarget.findFfiNames (Filtered241 :: rest) = suffixFfis241 := by
  rw [findFfiNames_section, localFfis241_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep241
end InitECandidate.Proofs.BackendStages.Metadata
