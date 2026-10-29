import InitECandidate.Proofs.BackendStages.FilteredChunk608_623
import InitECandidate.Proofs.BackendStages.Encoded608
import InitECandidate.Proofs.BackendStages.Encoded609
import InitECandidate.Proofs.BackendStages.Encoded610
import InitECandidate.Proofs.BackendStages.Encoded611
import InitECandidate.Proofs.BackendStages.Encoded612
import InitECandidate.Proofs.BackendStages.Encoded613
import InitECandidate.Proofs.BackendStages.Encoded614
import InitECandidate.Proofs.BackendStages.Encoded615
import InitECandidate.Proofs.BackendStages.Encoded616
import InitECandidate.Proofs.BackendStages.Encoded617
import InitECandidate.Proofs.BackendStages.Encoded618
import InitECandidate.Proofs.BackendStages.Encoded619
import InitECandidate.Proofs.BackendStages.Encoded620
import InitECandidate.Proofs.BackendStages.Encoded621
import InitECandidate.Proofs.BackendStages.Encoded622
import InitECandidate.Proofs.BackendStages.Encoded623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk608_623
def sections : LabSem.LabProgHOL 64 := [Encoded608, Encoded609, Encoded610, Encoded611, Encoded612, Encoded613, Encoded614, Encoded615, Encoded616, Encoded617, Encoded618, Encoded619, Encoded620, Encoded621, Encoded622, Encoded623]
theorem compiled_eq : FilteredChunk608_623.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered608, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered609, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered610, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered611, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered612, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered613, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered614, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered615, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered616, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered617, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered618, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered619, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered620, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered621, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered622, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered623] = sections
  rw [Encoded608_eq, Encoded609_eq, Encoded610_eq, Encoded611_eq, Encoded612_eq, Encoded613_eq, Encoded614_eq, Encoded615_eq, Encoded616_eq, Encoded617_eq, Encoded618_eq, Encoded619_eq, Encoded620_eq, Encoded621_eq, Encoded622_eq, Encoded623_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk608_623
