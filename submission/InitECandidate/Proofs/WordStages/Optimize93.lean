import InitECandidate.Proofs.WordStages.Optimize77
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source93
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody93_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (0, 0)]

def optimizedBody93_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody93_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody93_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody93_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_2 optimizedBody93_3

def optimizedBody93_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_1 optimizedBody93_4

def optimizedBody93_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody93_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody93_5 optimizedBody93_6

def optimizedBody93_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody93_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_8 optimizedBody93_3

def optimizedBody93_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_1 optimizedBody93_9

def optimizedBody93_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_1 optimizedBody93_10

def optimizedBody93_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_7 optimizedBody93_11

def optimizedBody93_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_0 optimizedBody93_12

def oracle93 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
      Flapjack.Spt.ln))
def optimized93 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(93, 3, optimizedBody93_13)
theorem optimize93_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source93, oracle93) = optimized93 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize93_eq
end InitECandidate.Proofs.WordStages
