import InitECandidate.Proofs.BackendStages.Metadata.Data280
import InitECandidate.Proofs.BackendStages.Padded280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep280 : walkShmemLines Padded280.lines 222404 beforeFfis280 beforeShmem280 = (222564, afterFfis280, afterShmem280) := by
  kernel_rfl
theorem shmemStep280 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded280 :: rest) 222404 beforeFfis280 beforeShmem280 = LabToTarget.getShmemInfo rest 222564 afterFfis280 afterShmem280 := by
  rw [getShmemInfo_section, walkStep280]
theorem symbolLength280 : LabToTarget.secLength Padded280.lines 0 = 160 := by
  kernel_rfl
#print axioms shmemStep280
#print axioms symbolLength280
end InitECandidate.Proofs.BackendStages.Metadata
