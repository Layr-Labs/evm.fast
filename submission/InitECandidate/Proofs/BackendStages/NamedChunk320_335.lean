import InitECandidate.Proofs.BackendStages.RemovedChunk320_335
import InitECandidate.Proofs.BackendStages.Named320
import InitECandidate.Proofs.BackendStages.Named321
import InitECandidate.Proofs.BackendStages.Named322
import InitECandidate.Proofs.BackendStages.Named323
import InitECandidate.Proofs.BackendStages.Named324
import InitECandidate.Proofs.BackendStages.Named325
import InitECandidate.Proofs.BackendStages.Named326
import InitECandidate.Proofs.BackendStages.Named327
import InitECandidate.Proofs.BackendStages.Named328
import InitECandidate.Proofs.BackendStages.Named329
import InitECandidate.Proofs.BackendStages.Named330
import InitECandidate.Proofs.BackendStages.Named331
import InitECandidate.Proofs.BackendStages.Named332
import InitECandidate.Proofs.BackendStages.Named333
import InitECandidate.Proofs.BackendStages.Named334
import InitECandidate.Proofs.BackendStages.Named335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk320_335
def bodies : List (Nat × StackLang.HolProg 64) := [Named320, Named321, Named322, Named323, Named324, Named325, Named326, Named327, Named328, Named329, Named330, Named331, Named332, Named333, Named334, Named335]
theorem compiled_eq : RemovedChunk320_335.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed320, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed321, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed322, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed323, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed324, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed325, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed326, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed327, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed328, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed329, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed330, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed331, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed332, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed333, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed334, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed335] = bodies
  rw [Named320_eq, Named321_eq, Named322_eq, Named323_eq, Named324_eq, Named325_eq, Named326_eq, Named327_eq, Named328_eq, Named329_eq, Named330_eq, Named331_eq, Named332_eq, Named333_eq, Named334_eq, Named335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk320_335
