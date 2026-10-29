import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source749
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles749
def optimizedBody749_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (14, 2)]

def optimizedBody749_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody749_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4)]

def optimizedBody749_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 12 8#64))

def optimizedBody749_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody749_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 12 16#64))

def optimizedBody749_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 12 24#64))

def optimizedBody749_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 12 32#64))

def optimizedBody749_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 12 40#64))

def optimizedBody749_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 12 48#64))

def optimizedBody749_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 56#64))

def optimizedBody749_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 12 64#64))

def optimizedBody749_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 12 72#64))

def optimizedBody749_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 12 80#64))

def optimizedBody749_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody749_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 24), (48, 26), (50, 16), (52, 18), (54, 14),
    (56, 22), (58, 20)]

def optimizedBody749_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (0, 2), (8, 8), (4, 4), (12, 12), (10, 10), (28, 44), (16, 46), (14, 48), (20, 50), (22, 52), (18, 54),
    (26, 56), (24, 58)]

def optimizedBody749_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (16, 46), (14, 48), (20, 50), (22, 52), (18, 54), (26, 56), (24, 58)]

def optimizedBody749_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody749_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_17 optimizedBody749_18

def optimizedBody749_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody749_16, 749, 2)) (some 721) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody749_19, 749, 3))

def optimizedBody749_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody749_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (22, 22), (16, 16), (14, 14), (26, 26), (24, 24), (20, 20)]

def optimizedBody749_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody749_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (20, 20)]

def optimizedBody749_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 18 8#64))

def optimizedBody749_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (24, 24)]

def optimizedBody749_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 18 16#64))

def optimizedBody749_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (26, 26)]

def optimizedBody749_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 18 24#64))

def optimizedBody749_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (14, 14)]

def optimizedBody749_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 18 32#64))

def optimizedBody749_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody749_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 40#64))

def optimizedBody749_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody749_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody749_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody749_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody749_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody749_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody749_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody749_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody749_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody749_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody749_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody749_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody749_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody749_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody749_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody749_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody749_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody749_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_49 optimizedBody749_50

def optimizedBody749_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_48 optimizedBody749_51

def optimizedBody749_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_47 optimizedBody749_52

def optimizedBody749_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_46 optimizedBody749_53

def optimizedBody749_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_45 optimizedBody749_54

def optimizedBody749_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_44 optimizedBody749_55

def optimizedBody749_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_43 optimizedBody749_56

def optimizedBody749_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_42 optimizedBody749_57

def optimizedBody749_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_41 optimizedBody749_58

def optimizedBody749_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_40 optimizedBody749_59

def optimizedBody749_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_39 optimizedBody749_60

def optimizedBody749_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_38 optimizedBody749_61

def optimizedBody749_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_37 optimizedBody749_62

def optimizedBody749_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_36 optimizedBody749_63

def optimizedBody749_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_35 optimizedBody749_64

def optimizedBody749_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_34 optimizedBody749_65

def optimizedBody749_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_33 optimizedBody749_66

def optimizedBody749_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_32 optimizedBody749_67

def optimizedBody749_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_31 optimizedBody749_68

def optimizedBody749_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_30 optimizedBody749_69

def optimizedBody749_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_29 optimizedBody749_70

def optimizedBody749_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_28 optimizedBody749_71

def optimizedBody749_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_27 optimizedBody749_72

def optimizedBody749_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_26 optimizedBody749_73

def optimizedBody749_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_25 optimizedBody749_74

def optimizedBody749_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_24 optimizedBody749_75

def optimizedBody749_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_23 optimizedBody749_76

def optimizedBody749_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_22 optimizedBody749_77

def optimizedBody749_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_21 optimizedBody749_78

def optimizedBody749_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_20 optimizedBody749_79

def optimizedBody749_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_15 optimizedBody749_80

def optimizedBody749_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_14 optimizedBody749_81

def optimizedBody749_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_82

def optimizedBody749_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_13 optimizedBody749_83

def optimizedBody749_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_84

def optimizedBody749_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_12 optimizedBody749_85

def optimizedBody749_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_86

def optimizedBody749_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_11 optimizedBody749_87

def optimizedBody749_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_88

def optimizedBody749_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_10 optimizedBody749_89

def optimizedBody749_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_90

def optimizedBody749_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_9 optimizedBody749_91

def optimizedBody749_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_92

def optimizedBody749_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_8 optimizedBody749_93

def optimizedBody749_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_94

def optimizedBody749_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_7 optimizedBody749_95

def optimizedBody749_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_96

def optimizedBody749_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_6 optimizedBody749_97

def optimizedBody749_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_98

def optimizedBody749_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_5 optimizedBody749_99

def optimizedBody749_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_4 optimizedBody749_100

def optimizedBody749_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_3 optimizedBody749_101

def optimizedBody749_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_2 optimizedBody749_102

def optimizedBody749_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_1 optimizedBody749_103

def optimizedBody749_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody749_0 optimizedBody749_104

def oracle749 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 9)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 10
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 9)) 13
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 13)) 9
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 9)) 12
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 8)) 8
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 9)) 11
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 10))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 7)) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 11)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 12)) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 12)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 6 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 13)) 6
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 7)) 6 (Flapjack.Spt.ls 6)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 6
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 7
                (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 6 (Flapjack.Spt.ls 12)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
def optimized749 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(749, 3, optimizedBody749_105)
end InitECandidate.Proofs.SmallStages.Oracles749
