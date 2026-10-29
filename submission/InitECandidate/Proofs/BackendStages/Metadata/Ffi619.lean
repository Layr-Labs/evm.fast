import InitECandidate.Proofs.BackendStages.Metadata.Data619
import InitECandidate.Proofs.BackendStages.Filtered619
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis619_eq : ffiLines Filtered619.lines = localFfis619 := by
  with_unfolding_all rfl
theorem ffiStep619 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis619) : LabToTarget.findFfiNames (Filtered619 :: rest) = suffixFfis619 := by
  rw [findFfiNames_section, localFfis619_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep619
end InitECandidate.Proofs.BackendStages.Metadata
