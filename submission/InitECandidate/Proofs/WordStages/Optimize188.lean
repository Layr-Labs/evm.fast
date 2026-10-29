import InitECandidate.Proofs.WordStages.Optimize172
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source188
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody188_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody188_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody188_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody188_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody188_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody188_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody188_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody188_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody188_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody188_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody188_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody188_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody188_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody188_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody188_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody188_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody188_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_14 optimizedBody188_15

def optimizedBody188_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_13 optimizedBody188_16

def optimizedBody188_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_12 optimizedBody188_17

def optimizedBody188_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_11 optimizedBody188_18

def optimizedBody188_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_5 optimizedBody188_19

def optimizedBody188_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_10 optimizedBody188_20

def optimizedBody188_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_9 optimizedBody188_21

def optimizedBody188_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_8 optimizedBody188_22

def optimizedBody188_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_7 optimizedBody188_23

def optimizedBody188_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_2 optimizedBody188_24

def optimizedBody188_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_6 optimizedBody188_25

def optimizedBody188_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_5 optimizedBody188_26

def optimizedBody188_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_4 optimizedBody188_27

def optimizedBody188_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 2)]

def optimizedBody188_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody188_28 optimizedBody188_29

def optimizedBody188_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody188_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 64#64))

def optimizedBody188_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 80#64))

def optimizedBody188_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (44, 0), (46, 8)]

def optimizedBody188_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (8, 46)]

def optimizedBody188_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46)]

def optimizedBody188_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody188_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_36 optimizedBody188_37

def optimizedBody188_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody188_35, 188, 2)) (some 191) ([2]) (some (2, optimizedBody188_38, 188, 3))

def optimizedBody188_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8)]

def optimizedBody188_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_4 optimizedBody188_40

def optimizedBody188_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_39 optimizedBody188_41

def optimizedBody188_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_34 optimizedBody188_42

def optimizedBody188_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_4 optimizedBody188_43

def optimizedBody188_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody188_44 optimizedBody188_41

def optimizedBody188_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody188_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody188_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody188_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody188_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_5 optimizedBody188_15

def optimizedBody188_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_49 optimizedBody188_50

def optimizedBody188_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_48 optimizedBody188_51

def optimizedBody188_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_47 optimizedBody188_52

def optimizedBody188_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_5 optimizedBody188_53

def optimizedBody188_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_46 optimizedBody188_54

def optimizedBody188_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_31 optimizedBody188_55

def optimizedBody188_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_32 optimizedBody188_56

def optimizedBody188_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_31 optimizedBody188_57

def optimizedBody188_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_4 optimizedBody188_58

def optimizedBody188_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_45 optimizedBody188_59

def optimizedBody188_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_5 optimizedBody188_60

def optimizedBody188_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_33 optimizedBody188_61

def optimizedBody188_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_31 optimizedBody188_62

def optimizedBody188_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_32 optimizedBody188_63

def optimizedBody188_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_31 optimizedBody188_64

def optimizedBody188_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_4 optimizedBody188_65

def optimizedBody188_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_4 optimizedBody188_66

def optimizedBody188_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_30 optimizedBody188_67

def optimizedBody188_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_3 optimizedBody188_68

def optimizedBody188_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_2 optimizedBody188_69

def optimizedBody188_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_1 optimizedBody188_70

def optimizedBody188_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody188_0 optimizedBody188_71

def oracle188 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 3
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
              2 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))
def optimized188 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(188, 2, optimizedBody188_72)
theorem optimize188_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source188, oracle188) = optimized188 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize188_eq
end InitECandidate.Proofs.WordStages
