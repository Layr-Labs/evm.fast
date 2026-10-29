import InitECandidate.Proofs.BackendStages.FilteredChunk80_95
import InitECandidate.Proofs.BackendStages.Encoded80
import InitECandidate.Proofs.BackendStages.Encoded81
import InitECandidate.Proofs.BackendStages.Encoded82
import InitECandidate.Proofs.BackendStages.Encoded83
import InitECandidate.Proofs.BackendStages.Encoded84
import InitECandidate.Proofs.BackendStages.Encoded85
import InitECandidate.Proofs.BackendStages.Encoded86
import InitECandidate.Proofs.BackendStages.Encoded87
import InitECandidate.Proofs.BackendStages.Encoded88
import InitECandidate.Proofs.BackendStages.Encoded89
import InitECandidate.Proofs.BackendStages.Encoded90
import InitECandidate.Proofs.BackendStages.Encoded91
import InitECandidate.Proofs.BackendStages.Encoded92
import InitECandidate.Proofs.BackendStages.Encoded93
import InitECandidate.Proofs.BackendStages.Encoded94
import InitECandidate.Proofs.BackendStages.Encoded95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk80_95
def sections : LabSem.LabProgHOL 64 := [Encoded80, Encoded81, Encoded82, Encoded83, Encoded84, Encoded85, Encoded86, Encoded87, Encoded88, Encoded89, Encoded90, Encoded91, Encoded92, Encoded93, Encoded94, Encoded95]
theorem compiled_eq : FilteredChunk80_95.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered80, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered81, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered82, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered83, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered84, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered85, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered86, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered87, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered88, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered89, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered90, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered91, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered92, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered93, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered94, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered95] = sections
  rw [Encoded80_eq, Encoded81_eq, Encoded82_eq, Encoded83_eq, Encoded84_eq, Encoded85_eq, Encoded86_eq, Encoded87_eq, Encoded88_eq, Encoded89_eq, Encoded90_eq, Encoded91_eq, Encoded92_eq, Encoded93_eq, Encoded94_eq, Encoded95_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk80_95
