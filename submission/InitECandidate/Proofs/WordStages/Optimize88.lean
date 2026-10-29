import InitECandidate.Proofs.WordStages.Optimize72
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source88
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody88_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody88_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody88_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody88_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody88_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody88_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody88_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody88_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody88_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody88_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody88_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody88_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody88_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody88_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody88_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_13

def optimizedBody88_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_12 optimizedBody88_14

def optimizedBody88_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_11 optimizedBody88_15

def optimizedBody88_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_5 optimizedBody88_16

def optimizedBody88_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_10 optimizedBody88_17

def optimizedBody88_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_18

def optimizedBody88_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_7 optimizedBody88_19

def optimizedBody88_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_9 optimizedBody88_20

def optimizedBody88_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_5 optimizedBody88_21

def optimizedBody88_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_8 optimizedBody88_22

def optimizedBody88_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_23

def optimizedBody88_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_7 optimizedBody88_24

def optimizedBody88_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_6 optimizedBody88_25

def optimizedBody88_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_5 optimizedBody88_26

def optimizedBody88_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_4 optimizedBody88_27

def optimizedBody88_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_3 optimizedBody88_28

def optimizedBody88_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_2 optimizedBody88_29

def optimizedBody88_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_1 optimizedBody88_30

def optimizedBody88_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody88_0 optimizedBody88_31

def oracle88 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
          0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3)))))
      Flapjack.Spt.ln))
def optimized88 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(88, 3, optimizedBody88_32)
theorem optimize88_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source88, oracle88) = optimized88 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize88_eq
end InitECandidate.Proofs.WordStages
