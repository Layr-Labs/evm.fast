import InitECandidate.Proofs.WordStages.Optimize230
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source246
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody246_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody246_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 2 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody246_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1073741840#64)

def optimizedBody246_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody246_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 4 (Flapjack.WordLangExpHOL.var 4)

def optimizedBody246_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody246_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody246_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody246_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody246_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 4 (Flapjack.WordRegImm.reg 8)))

def optimizedBody246_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 255#64)))

def optimizedBody246_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody246_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody246_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_11 optimizedBody246_12

def optimizedBody246_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_10 optimizedBody246_13

def optimizedBody246_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_9 optimizedBody246_14

def optimizedBody246_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_8 optimizedBody246_15

def optimizedBody246_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_7 optimizedBody246_16

def optimizedBody246_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_6 optimizedBody246_17

def optimizedBody246_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_5 optimizedBody246_18

def optimizedBody246_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_4 optimizedBody246_19

def optimizedBody246_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_3 optimizedBody246_20

def optimizedBody246_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_2 optimizedBody246_21

def optimizedBody246_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_1 optimizedBody246_22

def optimizedBody246_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody246_0 optimizedBody246_23

def oracle246 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)) 0
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized246 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(246, 2, optimizedBody246_24)
theorem optimize246_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source246, oracle246) = optimized246 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize246_eq
end InitECandidate.Proofs.WordStages
