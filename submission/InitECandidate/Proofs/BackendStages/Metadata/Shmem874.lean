import InitECandidate.Proofs.BackendStages.Metadata.Data874
import InitECandidate.Proofs.BackendStages.Padded874
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep874 : walkShmemLines Padded874.lines 978288 beforeFfis874 beforeShmem874 = (978504, afterFfis874, afterShmem874) := by
  kernel_rfl
theorem shmemStep874 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded874 :: rest) 978288 beforeFfis874 beforeShmem874 = LabToTarget.getShmemInfo rest 978504 afterFfis874 afterShmem874 := by
  rw [getShmemInfo_section, walkStep874]
theorem symbolLength874 : LabToTarget.secLength Padded874.lines 0 = 216 := by
  kernel_rfl
#print axioms shmemStep874
#print axioms symbolLength874
end InitECandidate.Proofs.BackendStages.Metadata
