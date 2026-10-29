import InitECandidate.Proofs.BackendStages.Metadata.Data69
import InitECandidate.Proofs.BackendStages.Filtered69
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis69_eq : ffiLines Filtered69.lines = localFfis69 := by
  with_unfolding_all rfl
theorem ffiStep69 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis69) : LabToTarget.findFfiNames (Filtered69 :: rest) = suffixFfis69 := by
  rw [findFfiNames_section, localFfis69_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep69
end InitECandidate.Proofs.BackendStages.Metadata
