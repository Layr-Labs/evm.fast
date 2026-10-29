import InitECandidate.Proofs.BackendStages.Metadata.Data615
import InitECandidate.Proofs.BackendStages.Padded615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep615 : walkShmemLines Padded615.lines 485976 beforeFfis615 beforeShmem615 = (487244, afterFfis615, afterShmem615) := by
  kernel_rfl
theorem shmemStep615 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded615 :: rest) 485976 beforeFfis615 beforeShmem615 = LabToTarget.getShmemInfo rest 487244 afterFfis615 afterShmem615 := by
  rw [getShmemInfo_section, walkStep615]
theorem symbolLength615 : LabToTarget.secLength Padded615.lines 0 = 1268 := by
  kernel_rfl
#print axioms shmemStep615
#print axioms symbolLength615
end InitECandidate.Proofs.BackendStages.Metadata
