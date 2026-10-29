import InitECandidate.Proofs.BackendStages.Metadata.Data678
import InitECandidate.Proofs.BackendStages.Filtered678
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis678_eq : ffiLines Filtered678.lines = localFfis678 := by
  with_unfolding_all rfl
theorem ffiStep678 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis678) : LabToTarget.findFfiNames (Filtered678 :: rest) = suffixFfis678 := by
  rw [findFfiNames_section, localFfis678_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep678
end InitECandidate.Proofs.BackendStages.Metadata
