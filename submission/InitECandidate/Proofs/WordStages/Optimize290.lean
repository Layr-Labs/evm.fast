import InitECandidate.Proofs.WordStages.Optimize274
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source290
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody290_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0), (2, 2), (4, 4), (8, 8)]

def optimizedBody290_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody290_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody290_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody290_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 14 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody290_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody290_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody290_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody290_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 10 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody290_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 14 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody290_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (2, 2), (10, 10), (12, 12)]

def optimizedBody290_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_9 optimizedBody290_10

def optimizedBody290_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_8 optimizedBody290_11

def optimizedBody290_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_7 optimizedBody290_12

def optimizedBody290_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_13

def optimizedBody290_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody290_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody290_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12), (8, 8)]

def optimizedBody290_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody290_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody290_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody290_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody290_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody290_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_22 optimizedBody290_10

def optimizedBody290_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_21 optimizedBody290_23

def optimizedBody290_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_20 optimizedBody290_24

def optimizedBody290_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_19 optimizedBody290_25

def optimizedBody290_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_18 optimizedBody290_26

def optimizedBody290_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_17 optimizedBody290_27

def optimizedBody290_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_16 optimizedBody290_28

def optimizedBody290_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_15 optimizedBody290_29

def optimizedBody290_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_30

def optimizedBody290_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 16) optimizedBody290_14 optimizedBody290_31

def optimizedBody290_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody290_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (4, 4), (2, 2), (10, 10), (6, 6), (18, 18), (12, 12)]

def optimizedBody290_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody290_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody290_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody290_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody290_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2), (12, 12)]

def optimizedBody290_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody290_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody290_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (18, 18)]

def optimizedBody290_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody290_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody290_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 16 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody290_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody290_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 14 (Flapjack.WordLangAddr.addr 20 0#64))

def optimizedBody290_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody290_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody290_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (12, 12)]

def optimizedBody290_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 18 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody290_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (4, 4), (2, 2), (18, 18), (12, 12)]

def optimizedBody290_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody290_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_52 optimizedBody290_53

def optimizedBody290_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_51 optimizedBody290_54

def optimizedBody290_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_50 optimizedBody290_55

def optimizedBody290_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_49 optimizedBody290_56

def optimizedBody290_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_48 optimizedBody290_57

def optimizedBody290_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_47 optimizedBody290_58

def optimizedBody290_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_46 optimizedBody290_59

def optimizedBody290_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_45 optimizedBody290_60

def optimizedBody290_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_44 optimizedBody290_61

def optimizedBody290_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_43 optimizedBody290_62

def optimizedBody290_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_42 optimizedBody290_63

def optimizedBody290_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_41 optimizedBody290_64

def optimizedBody290_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_40 optimizedBody290_65

def optimizedBody290_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_39 optimizedBody290_66

def optimizedBody290_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_38 optimizedBody290_67

def optimizedBody290_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_37 optimizedBody290_68

def optimizedBody290_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_36 optimizedBody290_69

def optimizedBody290_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_70

def optimizedBody290_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody290_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_72

def optimizedBody290_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 4) optimizedBody290_71 optimizedBody290_73

def optimizedBody290_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_52

def optimizedBody290_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_74 optimizedBody290_75

def optimizedBody290_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_35 optimizedBody290_76

def optimizedBody290_78 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody290_77 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody290_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18)]

def optimizedBody290_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody290_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_79 optimizedBody290_80

def optimizedBody290_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_81

def optimizedBody290_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_78 optimizedBody290_82

def optimizedBody290_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_34 optimizedBody290_83

def optimizedBody290_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_84

def optimizedBody290_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_33 optimizedBody290_85

def optimizedBody290_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_6 optimizedBody290_86

def optimizedBody290_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_32 optimizedBody290_87

def optimizedBody290_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_5 optimizedBody290_88

def optimizedBody290_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_4 optimizedBody290_89

def optimizedBody290_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_3 optimizedBody290_90

def optimizedBody290_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_2 optimizedBody290_91

def optimizedBody290_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_1 optimizedBody290_92

def optimizedBody290_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody290_0 optimizedBody290_93

def oracle290 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 (Flapjack.Spt.ls 2)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 4
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 9))) 5
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)) 8
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.ls 4)) 6
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 9)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 9))) 3
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7))) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)))))))
      Flapjack.Spt.ln))
def optimized290 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(290, 5, optimizedBody290_94)
theorem optimize290_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source290, oracle290) = optimized290 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize290_eq
end InitECandidate.Proofs.WordStages
