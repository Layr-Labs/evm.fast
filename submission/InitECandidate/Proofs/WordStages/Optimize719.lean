import InitECandidate.Proofs.WordStages.Optimize703
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source719
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody719_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody719_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 14 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody719_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody719_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody719_5 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 718) ([0, 2, 4, 6, 8, 10, 12]) (none)

def optimizedBody719_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_4 optimizedBody719_5

def optimizedBody719_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_3 optimizedBody719_6

def optimizedBody719_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (12, 12), (2, 2), (10, 10), (6, 6)]

def optimizedBody719_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 16) optimizedBody719_7 optimizedBody719_8

def optimizedBody719_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody719_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody719_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody719_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody719_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody719_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody719_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody719_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0)]

def optimizedBody719_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 14), (10, 10), (6, 6), (8, 8), (12, 12), (0, 2), (16, 44)]

def optimizedBody719_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44)]

def optimizedBody719_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody719_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_19 optimizedBody719_20

def optimizedBody719_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody719_18, 719, 2)) (some 708) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody719_21, 719, 3))

def optimizedBody719_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody719_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody719_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody719_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody719_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody719_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody719_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody719_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody719_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody719_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody719_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody719_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody719_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody719_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody719_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody719_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody719_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody719_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody719_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody719_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody719_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody719_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4, 6, 8, 10, 12]

def optimizedBody719_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_48 optimizedBody719_49

def optimizedBody719_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_47 optimizedBody719_50

def optimizedBody719_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_46 optimizedBody719_51

def optimizedBody719_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_40 optimizedBody719_52

def optimizedBody719_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_45 optimizedBody719_53

def optimizedBody719_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_44 optimizedBody719_54

def optimizedBody719_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_43 optimizedBody719_55

def optimizedBody719_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_42 optimizedBody719_56

def optimizedBody719_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_36 optimizedBody719_57

def optimizedBody719_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_41 optimizedBody719_58

def optimizedBody719_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_40 optimizedBody719_59

def optimizedBody719_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_39 optimizedBody719_60

def optimizedBody719_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_38 optimizedBody719_61

def optimizedBody719_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_32 optimizedBody719_62

def optimizedBody719_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_37 optimizedBody719_63

def optimizedBody719_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_36 optimizedBody719_64

def optimizedBody719_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_35 optimizedBody719_65

def optimizedBody719_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_34 optimizedBody719_66

def optimizedBody719_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_28 optimizedBody719_67

def optimizedBody719_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_33 optimizedBody719_68

def optimizedBody719_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_32 optimizedBody719_69

def optimizedBody719_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_31 optimizedBody719_70

def optimizedBody719_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_30 optimizedBody719_71

def optimizedBody719_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_23 optimizedBody719_72

def optimizedBody719_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_29 optimizedBody719_73

def optimizedBody719_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_28 optimizedBody719_74

def optimizedBody719_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_27 optimizedBody719_75

def optimizedBody719_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_26 optimizedBody719_76

def optimizedBody719_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_25 optimizedBody719_77

def optimizedBody719_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_24 optimizedBody719_78

def optimizedBody719_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_23 optimizedBody719_79

def optimizedBody719_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_3 optimizedBody719_80

def optimizedBody719_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_22 optimizedBody719_81

def optimizedBody719_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_17 optimizedBody719_82

def optimizedBody719_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_16 optimizedBody719_83

def optimizedBody719_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_15 optimizedBody719_84

def optimizedBody719_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_14 optimizedBody719_85

def optimizedBody719_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_13 optimizedBody719_86

def optimizedBody719_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_12 optimizedBody719_87

def optimizedBody719_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_11 optimizedBody719_88

def optimizedBody719_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_10 optimizedBody719_89

def optimizedBody719_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_3 optimizedBody719_90

def optimizedBody719_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_3 optimizedBody719_91

def optimizedBody719_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_9 optimizedBody719_92

def optimizedBody719_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_2 optimizedBody719_93

def optimizedBody719_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_1 optimizedBody719_94

def optimizedBody719_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody719_0 optimizedBody719_95

def oracle719 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 8
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 2)) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 3
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 1 (Flapjack.Spt.ls 4)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) 4
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 8)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.ls 5)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        Flapjack.Spt.ln)))
def optimized719 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(719, 7, optimizedBody719_96)
theorem optimize719_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source719, oracle719) = optimized719 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize719_eq
end InitECandidate.Proofs.WordStages
