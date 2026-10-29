import InitECandidate.Proofs.BackendStages.Metadata.Data703
import InitECandidate.Proofs.BackendStages.Filtered703
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis703_eq : ffiLines Filtered703.lines = localFfis703 := by
  with_unfolding_all rfl
theorem ffiStep703 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis703) : LabToTarget.findFfiNames (Filtered703 :: rest) = suffixFfis703 := by
  rw [findFfiNames_section, localFfis703_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep703
end InitECandidate.Proofs.BackendStages.Metadata
