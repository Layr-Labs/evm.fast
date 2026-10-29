import InitECandidate.Proofs.WordStages.Optimize85
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source101
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody101_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 0), (4, 4)]

def optimizedBody101_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody101_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody101_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody101_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody101_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody101_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody101_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody101_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody101_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_7 optimizedBody101_8

def optimizedBody101_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_6 optimizedBody101_9

def optimizedBody101_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_5 optimizedBody101_10

def optimizedBody101_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody101_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody101_11 optimizedBody101_12

def optimizedBody101_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody101_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_14 optimizedBody101_9

def optimizedBody101_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_5 optimizedBody101_15

def optimizedBody101_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_5 optimizedBody101_16

def optimizedBody101_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_13 optimizedBody101_17

def optimizedBody101_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_4 optimizedBody101_18

def optimizedBody101_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_3 optimizedBody101_19

def optimizedBody101_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_2 optimizedBody101_20

def optimizedBody101_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_1 optimizedBody101_21

def optimizedBody101_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody101_0 optimizedBody101_22

def oracle101 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
      Flapjack.Spt.ln))
def optimized101 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(101, 5, optimizedBody101_23)
theorem optimize101_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source101, oracle101) = optimized101 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize101_eq
end InitECandidate.Proofs.WordStages
