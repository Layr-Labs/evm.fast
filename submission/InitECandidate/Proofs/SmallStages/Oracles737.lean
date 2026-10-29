import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles737
def optimizedBody737_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (6, 4)]

def optimizedBody737_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 16#64)

def optimizedBody737_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 6), (46, 2)]

def optimizedBody737_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (50, 50), (0, 46)]

def optimizedBody737_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (50, 50), (0, 46)]

def optimizedBody737_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody737_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_4 optimizedBody737_5

def optimizedBody737_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody737_3, 737, 2)) (some 80) ([2, 4]) (some (2, optimizedBody737_6, 737, 3))

def optimizedBody737_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody737_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody737_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody737_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody737_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody737_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_11 optimizedBody737_12

def optimizedBody737_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_10 optimizedBody737_13

def optimizedBody737_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_14

def optimizedBody737_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody737_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody737_15 optimizedBody737_16

def optimizedBody737_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody737_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody737_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (50, 50)]

def optimizedBody737_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 10), (0, 2), (8, 8), (6, 6), (12, 12), (44, 44), (50, 50)]

def optimizedBody737_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody737_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_22 optimizedBody737_5

def optimizedBody737_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody737_21, 737, 4)) (some 735) ([2]) (some (2, optimizedBody737_23, 737, 5))

def optimizedBody737_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody737_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1873798617647539866#64)

def optimizedBody737_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 5412103778470702295#64)

def optimizedBody737_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 7239337960414712511#64)

def optimizedBody737_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 7435674573564081700#64)

def optimizedBody737_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 2210141511517208575#64)

def optimizedBody737_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 13402431016077863595#64)

def optimizedBody737_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 4), (48, 10), (50, 50), (52, 2), (54, 8), (56, 6), (58, 12)]

def optimizedBody737_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (16, 44), (4, 46), (10, 48), (46, 50), (14, 52), (8, 54), (6, 56), (12, 58)]

def optimizedBody737_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (4, 46), (10, 48), (46, 50), (14, 52), (8, 54), (6, 56), (12, 58)]

def optimizedBody737_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_34 optimizedBody737_5

def optimizedBody737_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody737_33, 737, 6)) (some 716) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody737_35, 737, 7))

def optimizedBody737_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody737_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_11 optimizedBody737_37

def optimizedBody737_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_10 optimizedBody737_38

def optimizedBody737_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_39

def optimizedBody737_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody737_40 optimizedBody737_16

def optimizedBody737_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 16), (46, 46)]

def optimizedBody737_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 10), (6, 6), (14, 2), (8, 8), (12, 12), (16, 44), (0, 46)]

def optimizedBody737_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (0, 46)]

def optimizedBody737_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_44 optimizedBody737_5

def optimizedBody737_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody737_43, 737, 8)) (some 726) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody737_45, 737, 9))

def optimizedBody737_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody737_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody737_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody737_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody737_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody737_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody737_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody737_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody737_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody737_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody737_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody737_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody737_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody737_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_59 optimizedBody737_38

def optimizedBody737_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_58 optimizedBody737_60

def optimizedBody737_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_57 optimizedBody737_61

def optimizedBody737_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_56 optimizedBody737_62

def optimizedBody737_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_55 optimizedBody737_63

def optimizedBody737_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_54 optimizedBody737_64

def optimizedBody737_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_53 optimizedBody737_65

def optimizedBody737_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_52 optimizedBody737_66

def optimizedBody737_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_51 optimizedBody737_67

def optimizedBody737_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_50 optimizedBody737_68

def optimizedBody737_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_49 optimizedBody737_69

def optimizedBody737_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_48 optimizedBody737_70

def optimizedBody737_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_47 optimizedBody737_71

def optimizedBody737_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_72

def optimizedBody737_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_46 optimizedBody737_73

def optimizedBody737_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_42 optimizedBody737_74

def optimizedBody737_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_75

def optimizedBody737_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_76

def optimizedBody737_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_41 optimizedBody737_77

def optimizedBody737_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_10 optimizedBody737_78

def optimizedBody737_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_18 optimizedBody737_79

def optimizedBody737_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_80

def optimizedBody737_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_36 optimizedBody737_81

def optimizedBody737_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_32 optimizedBody737_82

def optimizedBody737_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_31 optimizedBody737_83

def optimizedBody737_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_30 optimizedBody737_84

def optimizedBody737_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_29 optimizedBody737_85

def optimizedBody737_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_28 optimizedBody737_86

def optimizedBody737_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_27 optimizedBody737_87

def optimizedBody737_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_26 optimizedBody737_88

def optimizedBody737_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_25 optimizedBody737_89

def optimizedBody737_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_90

def optimizedBody737_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_24 optimizedBody737_91

def optimizedBody737_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_20 optimizedBody737_92

def optimizedBody737_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_19 optimizedBody737_93

def optimizedBody737_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_18 optimizedBody737_94

def optimizedBody737_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_95

def optimizedBody737_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_96

def optimizedBody737_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_17 optimizedBody737_97

def optimizedBody737_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_10 optimizedBody737_98

def optimizedBody737_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_9 optimizedBody737_99

def optimizedBody737_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_8 optimizedBody737_100

def optimizedBody737_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_7 optimizedBody737_101

def optimizedBody737_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_2 optimizedBody737_102

def optimizedBody737_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_1 optimizedBody737_103

def optimizedBody737_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody737_0 optimizedBody737_104

def oracle737 : Option (Spt Nat) :=
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
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 3
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))))
              0
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 4)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 6))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27)) 25 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 28)) 23 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))))))
def optimized737 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(737, 3, optimizedBody737_105)
end InitECandidate.Proofs.SmallStages.Oracles737
