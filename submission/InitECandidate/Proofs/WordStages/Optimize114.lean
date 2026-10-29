import InitECandidate.Proofs.WordStages.Optimize98
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source114
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody114_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 10), (0, 0), (4, 4), (6, 6), (8, 8), (12, 12), (14, 14), (16, 16)]

def optimizedBody114_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody114_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody114_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody114_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (14, 14)]

def optimizedBody114_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody114_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody114_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody114_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody114_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody114_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_8 optimizedBody114_9

def optimizedBody114_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_7 optimizedBody114_10

def optimizedBody114_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_6 optimizedBody114_11

def optimizedBody114_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_5 optimizedBody114_12

def optimizedBody114_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_4 optimizedBody114_13

def optimizedBody114_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_3 optimizedBody114_14

def optimizedBody114_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_2 optimizedBody114_15

def optimizedBody114_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_1 optimizedBody114_16

def optimizedBody114_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody114_0 optimizedBody114_17

def oracle114 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3)) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 6)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 2 (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 5)))))
      Flapjack.Spt.ln))
def optimized114 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(114, 9, optimizedBody114_18)
theorem optimize114_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source114, oracle114) = optimized114 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize114_eq
end InitECandidate.Proofs.WordStages
