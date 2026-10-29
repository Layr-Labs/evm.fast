import InitECandidate.Proofs.WordStages.Optimize109
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source125
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody125_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody125_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody125_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody125_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody125_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody125_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody125_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody125_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody125_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody125_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody125_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody125_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody125_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody125_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody125_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody125_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody125_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody125_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody125_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody125_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_17 optimizedBody125_18

def optimizedBody125_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_16 optimizedBody125_19

def optimizedBody125_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_15 optimizedBody125_20

def optimizedBody125_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_21

def optimizedBody125_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_14 optimizedBody125_22

def optimizedBody125_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_13 optimizedBody125_23

def optimizedBody125_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_24

def optimizedBody125_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_12 optimizedBody125_25

def optimizedBody125_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_11 optimizedBody125_26

def optimizedBody125_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_27

def optimizedBody125_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_10 optimizedBody125_28

def optimizedBody125_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_9 optimizedBody125_29

def optimizedBody125_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_30

def optimizedBody125_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_8 optimizedBody125_31

def optimizedBody125_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_7 optimizedBody125_32

def optimizedBody125_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_33

def optimizedBody125_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_2 optimizedBody125_34

def optimizedBody125_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_6 optimizedBody125_35

def optimizedBody125_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_36

def optimizedBody125_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_5 optimizedBody125_37

def optimizedBody125_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_4 optimizedBody125_38

def optimizedBody125_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_3 optimizedBody125_39

def optimizedBody125_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_2 optimizedBody125_40

def optimizedBody125_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_1 optimizedBody125_41

def optimizedBody125_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody125_0 optimizedBody125_42

def oracle125 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 3)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1 (Flapjack.Spt.ls 2))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 3)) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 3)))))
      Flapjack.Spt.ln))
def optimized125 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(125, 2, optimizedBody125_43)
theorem optimize125_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source125, oracle125) = optimized125 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize125_eq
end InitECandidate.Proofs.WordStages
