import InitECandidate.Proofs.BackendStages.Metadata.Data198
import InitECandidate.Proofs.BackendStages.Filtered198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis198_eq : ffiLines Filtered198.lines = localFfis198 := by
  with_unfolding_all rfl
theorem ffiStep198 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis198) : LabToTarget.findFfiNames (Filtered198 :: rest) = suffixFfis198 := by
  rw [findFfiNames_section, localFfis198_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep198
end InitECandidate.Proofs.BackendStages.Metadata
