import InitECandidate.Proofs.WordStages.Optimize338
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source354
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody354_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody354_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody354_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody354_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody354_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody354_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody354_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody354_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_5 optimizedBody354_6

def optimizedBody354_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_4 optimizedBody354_7

def optimizedBody354_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_3 optimizedBody354_8

def optimizedBody354_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody354_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody354_9 optimizedBody354_10

def optimizedBody354_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody354_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_12 optimizedBody354_7

def optimizedBody354_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_3 optimizedBody354_13

def optimizedBody354_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_3 optimizedBody354_14

def optimizedBody354_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_11 optimizedBody354_15

def optimizedBody354_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_2 optimizedBody354_16

def optimizedBody354_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_1 optimizedBody354_17

def optimizedBody354_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody354_0 optimizedBody354_18

def oracle354 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized354 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(354, 2, optimizedBody354_19)
theorem optimize354_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source354, oracle354) = optimized354 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize354_eq
end InitECandidate.Proofs.WordStages
