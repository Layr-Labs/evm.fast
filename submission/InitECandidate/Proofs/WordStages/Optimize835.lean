import InitECandidate.Proofs.WordStages.Optimize819
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source835
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody835_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 12), (50, 10), (52, 6), (54, 14)]

def optimizedBody835_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (14, 48), (12, 50), (48, 52), (8, 54)]

def optimizedBody835_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (12, 50), (48, 52), (8, 54)]

def optimizedBody835_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody835_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_2 optimizedBody835_3

def optimizedBody835_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody835_1, 835, 2)) (some 93) ([2, 4]) (some (2, optimizedBody835_4, 835, 3))

def optimizedBody835_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody835_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody835_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody835_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody835_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody835_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody835_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody835_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody835_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody835_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody835_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0)]

def optimizedBody835_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_15 optimizedBody835_16

def optimizedBody835_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_14 optimizedBody835_17

def optimizedBody835_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_13 optimizedBody835_18

def optimizedBody835_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_12 optimizedBody835_19

def optimizedBody835_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_20

def optimizedBody835_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2)]

def optimizedBody835_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_22

def optimizedBody835_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody835_21 optimizedBody835_23

def optimizedBody835_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (6, 14), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody835_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody835_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody835_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_27 optimizedBody835_3

def optimizedBody835_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody835_26, 835, 4)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody835_28, 835, 5))

def optimizedBody835_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody835_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody835_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody835_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_31 optimizedBody835_32

def optimizedBody835_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_12 optimizedBody835_33

def optimizedBody835_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_34

def optimizedBody835_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_32

def optimizedBody835_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody835_35 optimizedBody835_36

def optimizedBody835_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody835_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody835_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody835_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551584#64)))

def optimizedBody835_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody835_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody835_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_43 optimizedBody835_32

def optimizedBody835_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_42 optimizedBody835_44

def optimizedBody835_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_41 optimizedBody835_45

def optimizedBody835_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_40 optimizedBody835_46

def optimizedBody835_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_47

def optimizedBody835_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody835_36 optimizedBody835_48

def optimizedBody835_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody835_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody835_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_51 optimizedBody835_32

def optimizedBody835_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_52

def optimizedBody835_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody835_53 optimizedBody835_36

def optimizedBody835_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody835_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 500#64)

def optimizedBody835_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 500#64)

def optimizedBody835_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_57 optimizedBody835_55

def optimizedBody835_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_58

def optimizedBody835_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_55

def optimizedBody835_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody835_59 optimizedBody835_60

def optimizedBody835_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody835_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody835_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_62 optimizedBody835_63

def optimizedBody835_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_64

def optimizedBody835_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_61 optimizedBody835_65

def optimizedBody835_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_56 optimizedBody835_66

def optimizedBody835_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_55 optimizedBody835_67

def optimizedBody835_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_15 optimizedBody835_68

def optimizedBody835_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_14 optimizedBody835_69

def optimizedBody835_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_70

def optimizedBody835_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_54 optimizedBody835_71

def optimizedBody835_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_50 optimizedBody835_72

def optimizedBody835_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_12 optimizedBody835_73

def optimizedBody835_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_74

def optimizedBody835_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_49 optimizedBody835_75

def optimizedBody835_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_39 optimizedBody835_76

def optimizedBody835_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_38 optimizedBody835_77

def optimizedBody835_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_78

def optimizedBody835_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_37 optimizedBody835_79

def optimizedBody835_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_12 optimizedBody835_80

def optimizedBody835_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_30 optimizedBody835_81

def optimizedBody835_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_82

def optimizedBody835_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_29 optimizedBody835_83

def optimizedBody835_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_25 optimizedBody835_84

def optimizedBody835_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_85

def optimizedBody835_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_24 optimizedBody835_86

def optimizedBody835_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_7 optimizedBody835_87

def optimizedBody835_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_11 optimizedBody835_88

def optimizedBody835_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_10 optimizedBody835_89

def optimizedBody835_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_9 optimizedBody835_90

def optimizedBody835_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_8 optimizedBody835_91

def optimizedBody835_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_7 optimizedBody835_92

def optimizedBody835_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_6 optimizedBody835_93

def optimizedBody835_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_5 optimizedBody835_94

def optimizedBody835_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody835_0 optimizedBody835_95

def oracle835 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 5
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
def optimized835 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(835, 8, optimizedBody835_96)
theorem optimize835_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source835, oracle835) = optimized835 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize835_eq
end InitECandidate.Proofs.WordStages
