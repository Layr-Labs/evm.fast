import InitECandidate.Proofs.BackendStages.RemovedChunk96_111
import InitECandidate.Proofs.BackendStages.Named96
import InitECandidate.Proofs.BackendStages.Named97
import InitECandidate.Proofs.BackendStages.Named98
import InitECandidate.Proofs.BackendStages.Named99
import InitECandidate.Proofs.BackendStages.Named100
import InitECandidate.Proofs.BackendStages.Named101
import InitECandidate.Proofs.BackendStages.Named102
import InitECandidate.Proofs.BackendStages.Named103
import InitECandidate.Proofs.BackendStages.Named104
import InitECandidate.Proofs.BackendStages.Named105
import InitECandidate.Proofs.BackendStages.Named106
import InitECandidate.Proofs.BackendStages.Named107
import InitECandidate.Proofs.BackendStages.Named108
import InitECandidate.Proofs.BackendStages.Named109
import InitECandidate.Proofs.BackendStages.Named110
import InitECandidate.Proofs.BackendStages.Named111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk96_111
def bodies : List (Nat × StackLang.HolProg 64) := [Named96, Named97, Named98, Named99, Named100, Named101, Named102, Named103, Named104, Named105, Named106, Named107, Named108, Named109, Named110, Named111]
theorem compiled_eq : RemovedChunk96_111.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed96, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed97, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed98, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed99, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed100, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed101, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed102, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed103, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed104, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed105, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed106, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed107, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed108, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed109, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed110, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed111] = bodies
  rw [Named96_eq, Named97_eq, Named98_eq, Named99_eq, Named100_eq, Named101_eq, Named102_eq, Named103_eq, Named104_eq, Named105_eq, Named106_eq, Named107_eq, Named108_eq, Named109_eq, Named110_eq, Named111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk96_111
