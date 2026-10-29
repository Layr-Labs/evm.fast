import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
import Flapjack.RiscV.NativeSource
namespace InitECandidate.Proofs.StackAnalysis
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target

def frameEntry (entry : Nat × Nat × WordLangProgHOL (BitVec 64)) : Nat × Nat :=
  (entry.1, StackFrameComputation.frameSize
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) entry.2.1 entry.2.2)
def slimEntry (entry : Nat × Nat × WordLangProgHOL (BitVec 64)) :=
  (entry.1, entry.2.1, WordDepth.Executable.slim entry.2.2)
end InitECandidate.Proofs.StackAnalysis
