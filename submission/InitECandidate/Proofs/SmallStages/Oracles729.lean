import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles729
def optimizedBody729_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody729_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 14 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody729_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody729_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody729_5 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 728) ([0, 2, 4, 6, 8, 10, 12]) (none)

def optimizedBody729_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_4 optimizedBody729_5

def optimizedBody729_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_3 optimizedBody729_6

def optimizedBody729_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (12, 12), (2, 2), (10, 10), (6, 6)]

def optimizedBody729_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 16) optimizedBody729_7 optimizedBody729_8

def optimizedBody729_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 2)]

def optimizedBody729_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody729_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody729_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody729_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody729_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody729_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody729_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0)]

def optimizedBody729_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 14), (10, 10), (6, 6), (8, 8), (12, 12), (0, 2), (16, 44)]

def optimizedBody729_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44)]

def optimizedBody729_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody729_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_19 optimizedBody729_20

def optimizedBody729_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody729_18, 729, 2)) (some 717) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody729_21, 729, 3))

def optimizedBody729_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody729_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody729_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody729_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody729_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody729_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 6 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody729_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody729_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody729_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody729_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody729_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody729_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody729_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody729_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody729_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody729_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody729_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody729_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody729_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody729_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody729_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody729_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4, 6, 8, 10, 12]

def optimizedBody729_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_48 optimizedBody729_49

def optimizedBody729_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_47 optimizedBody729_50

def optimizedBody729_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_46 optimizedBody729_51

def optimizedBody729_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_40 optimizedBody729_52

def optimizedBody729_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_45 optimizedBody729_53

def optimizedBody729_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_44 optimizedBody729_54

def optimizedBody729_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_43 optimizedBody729_55

def optimizedBody729_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_42 optimizedBody729_56

def optimizedBody729_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_36 optimizedBody729_57

def optimizedBody729_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_41 optimizedBody729_58

def optimizedBody729_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_40 optimizedBody729_59

def optimizedBody729_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_39 optimizedBody729_60

def optimizedBody729_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_38 optimizedBody729_61

def optimizedBody729_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_32 optimizedBody729_62

def optimizedBody729_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_37 optimizedBody729_63

def optimizedBody729_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_36 optimizedBody729_64

def optimizedBody729_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_35 optimizedBody729_65

def optimizedBody729_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_34 optimizedBody729_66

def optimizedBody729_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_28 optimizedBody729_67

def optimizedBody729_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_33 optimizedBody729_68

def optimizedBody729_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_32 optimizedBody729_69

def optimizedBody729_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_31 optimizedBody729_70

def optimizedBody729_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_30 optimizedBody729_71

def optimizedBody729_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_23 optimizedBody729_72

def optimizedBody729_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_29 optimizedBody729_73

def optimizedBody729_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_28 optimizedBody729_74

def optimizedBody729_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_27 optimizedBody729_75

def optimizedBody729_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_26 optimizedBody729_76

def optimizedBody729_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_25 optimizedBody729_77

def optimizedBody729_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_24 optimizedBody729_78

def optimizedBody729_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_23 optimizedBody729_79

def optimizedBody729_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_3 optimizedBody729_80

def optimizedBody729_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_22 optimizedBody729_81

def optimizedBody729_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_17 optimizedBody729_82

def optimizedBody729_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_16 optimizedBody729_83

def optimizedBody729_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_15 optimizedBody729_84

def optimizedBody729_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_14 optimizedBody729_85

def optimizedBody729_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_13 optimizedBody729_86

def optimizedBody729_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_12 optimizedBody729_87

def optimizedBody729_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_11 optimizedBody729_88

def optimizedBody729_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_10 optimizedBody729_89

def optimizedBody729_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_3 optimizedBody729_90

def optimizedBody729_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_3 optimizedBody729_91

def optimizedBody729_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_9 optimizedBody729_92

def optimizedBody729_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_2 optimizedBody729_93

def optimizedBody729_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_1 optimizedBody729_94

def optimizedBody729_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody729_0 optimizedBody729_95

def oracle729 : Option (Spt Nat) :=
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
def optimized729 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(729, 7, optimizedBody729_96)
end InitECandidate.Proofs.SmallStages.Oracles729
