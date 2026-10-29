import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source847
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles847
def optimizedBody847_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 12), (50, 10), (52, 6), (54, 14)]

def optimizedBody847_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (14, 48), (12, 50), (48, 52), (8, 54)]

def optimizedBody847_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (12, 50), (48, 52), (8, 54)]

def optimizedBody847_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody847_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_2 optimizedBody847_3

def optimizedBody847_5 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody847_1, 847, 2)) (some 93) ([2, 4]) (some (2, optimizedBody847_4, 847, 3))

def optimizedBody847_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody847_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody847_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody847_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody847_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody847_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody847_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody847_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody847_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody847_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody847_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0)]

def optimizedBody847_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_15 optimizedBody847_16

def optimizedBody847_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_14 optimizedBody847_17

def optimizedBody847_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_13 optimizedBody847_18

def optimizedBody847_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_12 optimizedBody847_19

def optimizedBody847_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_20

def optimizedBody847_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 2)]

def optimizedBody847_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_22

def optimizedBody847_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody847_21 optimizedBody847_23

def optimizedBody847_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 12), (6, 14), (8, 8), (44, 44), (46, 46), (48, 48)]

def optimizedBody847_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody847_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody847_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_27 optimizedBody847_3

def optimizedBody847_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody847_26, 847, 4)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody847_28, 847, 5))

def optimizedBody847_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody847_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody847_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody847_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_31 optimizedBody847_32

def optimizedBody847_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_12 optimizedBody847_33

def optimizedBody847_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_34

def optimizedBody847_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_32

def optimizedBody847_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody847_35 optimizedBody847_36

def optimizedBody847_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody847_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody847_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody847_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551584#64)))

def optimizedBody847_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody847_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody847_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_43 optimizedBody847_32

def optimizedBody847_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_42 optimizedBody847_44

def optimizedBody847_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_41 optimizedBody847_45

def optimizedBody847_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_40 optimizedBody847_46

def optimizedBody847_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_47

def optimizedBody847_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody847_36 optimizedBody847_48

def optimizedBody847_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody847_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody847_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_51 optimizedBody847_32

def optimizedBody847_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_52

def optimizedBody847_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody847_53 optimizedBody847_36

def optimizedBody847_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody847_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 500#64)

def optimizedBody847_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 500#64)

def optimizedBody847_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_57 optimizedBody847_55

def optimizedBody847_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_58

def optimizedBody847_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_55

def optimizedBody847_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody847_59 optimizedBody847_60

def optimizedBody847_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody847_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody847_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_62 optimizedBody847_63

def optimizedBody847_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_64

def optimizedBody847_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_61 optimizedBody847_65

def optimizedBody847_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_56 optimizedBody847_66

def optimizedBody847_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_55 optimizedBody847_67

def optimizedBody847_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_15 optimizedBody847_68

def optimizedBody847_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_14 optimizedBody847_69

def optimizedBody847_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_70

def optimizedBody847_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_54 optimizedBody847_71

def optimizedBody847_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_50 optimizedBody847_72

def optimizedBody847_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_12 optimizedBody847_73

def optimizedBody847_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_74

def optimizedBody847_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_49 optimizedBody847_75

def optimizedBody847_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_39 optimizedBody847_76

def optimizedBody847_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_38 optimizedBody847_77

def optimizedBody847_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_78

def optimizedBody847_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_37 optimizedBody847_79

def optimizedBody847_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_12 optimizedBody847_80

def optimizedBody847_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_30 optimizedBody847_81

def optimizedBody847_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_82

def optimizedBody847_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_29 optimizedBody847_83

def optimizedBody847_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_25 optimizedBody847_84

def optimizedBody847_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_85

def optimizedBody847_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_24 optimizedBody847_86

def optimizedBody847_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_7 optimizedBody847_87

def optimizedBody847_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_11 optimizedBody847_88

def optimizedBody847_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_10 optimizedBody847_89

def optimizedBody847_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_9 optimizedBody847_90

def optimizedBody847_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_8 optimizedBody847_91

def optimizedBody847_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_7 optimizedBody847_92

def optimizedBody847_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_6 optimizedBody847_93

def optimizedBody847_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_5 optimizedBody847_94

def optimizedBody847_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody847_0 optimizedBody847_95

def oracle847 : Option (Spt Nat) :=
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
def optimized847 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(847, 8, optimizedBody847_96)
end InitECandidate.Proofs.SmallStages.Oracles847
