import InitECandidate.Proofs.BackendStages.Metadata.Data772
import InitECandidate.Proofs.BackendStages.Filtered772
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis772_eq : ffiLines Filtered772.lines = localFfis772 := by
  with_unfolding_all rfl
theorem ffiStep772 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis772) : LabToTarget.findFfiNames (Filtered772 :: rest) = suffixFfis772 := by
  rw [findFfiNames_section, localFfis772_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep772
end InitECandidate.Proofs.BackendStages.Metadata
