import InitECandidate.Proofs.WordStages.Optimize181
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source197
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody197_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 4), (10, 0)]

def optimizedBody197_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody197_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody197_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody197_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody197_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody197_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody197_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6]

def optimizedBody197_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_6 optimizedBody197_7

def optimizedBody197_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_5 optimizedBody197_8

def optimizedBody197_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_4 optimizedBody197_9

def optimizedBody197_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_3 optimizedBody197_10

def optimizedBody197_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_2 optimizedBody197_11

def optimizedBody197_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody197_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody197_12 optimizedBody197_13

def optimizedBody197_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody197_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody197_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody197_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody197_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody197_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody197_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody197_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (2, 2)]

def optimizedBody197_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody197_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody197_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody197_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody197_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody197_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody197_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody197_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody197_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody197_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_31 optimizedBody197_8

def optimizedBody197_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_30 optimizedBody197_32

def optimizedBody197_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_19 optimizedBody197_33

def optimizedBody197_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_29 optimizedBody197_34

def optimizedBody197_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_17 optimizedBody197_35

def optimizedBody197_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_28 optimizedBody197_36

def optimizedBody197_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_27 optimizedBody197_37

def optimizedBody197_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_26 optimizedBody197_38

def optimizedBody197_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_25 optimizedBody197_39

def optimizedBody197_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_24 optimizedBody197_40

def optimizedBody197_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_23 optimizedBody197_41

def optimizedBody197_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_22 optimizedBody197_42

def optimizedBody197_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_21 optimizedBody197_43

def optimizedBody197_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_17 optimizedBody197_44

def optimizedBody197_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_20 optimizedBody197_45

def optimizedBody197_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_19 optimizedBody197_46

def optimizedBody197_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_18 optimizedBody197_47

def optimizedBody197_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_17 optimizedBody197_48

def optimizedBody197_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_16 optimizedBody197_49

def optimizedBody197_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_15 optimizedBody197_50

def optimizedBody197_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_2 optimizedBody197_51

def optimizedBody197_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_2 optimizedBody197_52

def optimizedBody197_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_14 optimizedBody197_53

def optimizedBody197_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_1 optimizedBody197_54

def optimizedBody197_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody197_0 optimizedBody197_55

def oracle197 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            5 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 4 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 3))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) 0 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))))
      Flapjack.Spt.ln))
def optimized197 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(197, 3, optimizedBody197_56)
theorem optimize197_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source197, oracle197) = optimized197 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize197_eq
end InitECandidate.Proofs.WordStages
