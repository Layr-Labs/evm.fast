import InitECandidate.Proofs.BackendStages.Metadata.Data684
import InitECandidate.Proofs.BackendStages.Filtered684
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis684_eq : ffiLines Filtered684.lines = localFfis684 := by
  with_unfolding_all rfl
theorem ffiStep684 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis684) : LabToTarget.findFfiNames (Filtered684 :: rest) = suffixFfis684 := by
  rw [findFfiNames_section, localFfis684_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep684
end InitECandidate.Proofs.BackendStages.Metadata
