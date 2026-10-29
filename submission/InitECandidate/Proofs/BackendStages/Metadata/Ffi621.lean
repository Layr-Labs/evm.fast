import InitECandidate.Proofs.BackendStages.Metadata.Data621
import InitECandidate.Proofs.BackendStages.Filtered621
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis621_eq : ffiLines Filtered621.lines = localFfis621 := by
  with_unfolding_all rfl
theorem ffiStep621 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis621) : LabToTarget.findFfiNames (Filtered621 :: rest) = suffixFfis621 := by
  rw [findFfiNames_section, localFfis621_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep621
end InitECandidate.Proofs.BackendStages.Metadata
