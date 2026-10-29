import InitECandidate.Proofs.StackFrameComputation
import InitECandidate.Proofs.StackAnalysis.FastDepth
import Flapjack.Pancake.Proofs.PanToTarget.ExecutableCompileProgMaxDepth

namespace InitECandidate.Proofs.StackDepthComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Pancake.PanLang
open Flapjack.Compiler.Encoders.RiscV.Target

def depthOfWordOutputs (outputs : List (Nat × Nat × WordLangProgHOL (BitVec 64))) : Option Nat :=
  let registers := riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)
  let frames := outputs.map (fun (identifier, arguments, body) =>
    (identifier, StackFrameComputation.frameSize registers arguments body))
  StackAnalysis.FastDepth.fullCallGraphDepthFast (sptFromAList frames)
    BvlToBvi.initGlobalsLocation (sptFromAList outputs)

theorem depth_eq_of_word_compile
    (config : Backend.Config) (declarations : List (DeclHOL 64))
    (outputs : List (Nat × Nat × WordLangProgHOL (BitVec 64)))
    (compiled : WordToWord.compileWith RegAlloc.regAllocExecutable config.wordToWordConf
      riscvConfig (panToWordCompileProgHOL riscvConfig.isa declarations) = ([], outputs)) :
    (Pancake.Proofs.PanToTarget.compileProgMaxAsmDepthExecutable config riscvConfig declarations).2 =
      depthOfWordOutputs outputs := by
  unfold Pancake.Proofs.PanToTarget.compileProgMaxAsmDepthExecutable
  dsimp only
  rw [compiled]
  dsimp only
  rw [StackFrameComputation.frameMap_eq]
  unfold depthOfWordOutputs
  rw [StackAnalysis.FastDepth.fullCallGraphDepthFast_eq]

#print axioms depth_eq_of_word_compile
end InitECandidate.Proofs.StackDepthComputation
