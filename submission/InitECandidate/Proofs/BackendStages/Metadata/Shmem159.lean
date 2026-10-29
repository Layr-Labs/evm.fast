import InitECandidate.Proofs.BackendStages.Metadata.Data159
import InitECandidate.Proofs.BackendStages.Padded159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep159 : walkShmemLines Padded159.lines 87580 beforeFfis159 beforeShmem159 = (87592, afterFfis159, afterShmem159) := by
  kernel_rfl
theorem shmemStep159 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded159 :: rest) 87580 beforeFfis159 beforeShmem159 = LabToTarget.getShmemInfo rest 87592 afterFfis159 afterShmem159 := by
  rw [getShmemInfo_section, walkStep159]
theorem symbolLength159 : LabToTarget.secLength Padded159.lines 0 = 12 := by
  kernel_rfl
#print axioms shmemStep159
#print axioms symbolLength159
end InitECandidate.Proofs.BackendStages.Metadata
