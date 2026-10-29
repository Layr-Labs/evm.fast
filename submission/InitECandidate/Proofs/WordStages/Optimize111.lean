import InitECandidate.Proofs.WordStages.Optimize95
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source111
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody111_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8)]

def optimizedBody111_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody111_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody111_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody111_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody111_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody111_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody111_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_8 optimizedBody111_9

def optimizedBody111_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_7 optimizedBody111_10

def optimizedBody111_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_6 optimizedBody111_11

def optimizedBody111_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_5 optimizedBody111_12

def optimizedBody111_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_4 optimizedBody111_13

def optimizedBody111_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_3 optimizedBody111_14

def optimizedBody111_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_2 optimizedBody111_15

def optimizedBody111_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_1 optimizedBody111_16

def optimizedBody111_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody111_0 optimizedBody111_17

def oracle111 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))))
      Flapjack.Spt.ln))
def optimized111 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(111, 5, optimizedBody111_18)
theorem optimize111_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source111, oracle111) = optimized111 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize111_eq
end InitECandidate.Proofs.WordStages
