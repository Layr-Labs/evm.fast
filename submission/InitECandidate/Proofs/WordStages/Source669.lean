import InitECandidate.Proofs.WordStages.Source653
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody669_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody669_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody669_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 2)) (some 69) ([]) (some (12, sourceBody669_1, 669, 3))

def sourceBody669_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody669_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_2 sourceBody669_3

def sourceBody669_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_4 sourceBody669_0

def sourceBody669_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 736#64)

def sourceBody669_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody669_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 4)) (some 68) ([40]) (some (40, sourceBody669_7, 669, 5))

def sourceBody669_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_8 sourceBody669_3

def sourceBody669_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_9 sourceBody669_0

def sourceBody669_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_6 sourceBody669_10

def sourceBody669_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 40)

def sourceBody669_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 23#64)

def sourceBody669_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody669_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 56 (Flapjack.WordRegImm.reg 8) sourceBody669_15 sourceBody669_16

def sourceBody669_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_17 sourceBody669_3

def sourceBody669_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 56)

def sourceBody669_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody669_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody669_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody669_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 44) sourceBody669_26 sourceBody669_27

def sourceBody669_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_28 sourceBody669_3

def sourceBody669_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody669_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 11#64])

def sourceBody669_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_31 sourceBody669_0

def sourceBody669_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_32 sourceBody669_0

def sourceBody669_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody669_33 sourceBody669_0

def sourceBody669_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_34 sourceBody669_3

def sourceBody669_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_35 sourceBody669_0

def sourceBody669_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_30 sourceBody669_36

def sourceBody669_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_29 sourceBody669_37

def sourceBody669_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_25 sourceBody669_38

def sourceBody669_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_24 sourceBody669_39

def sourceBody669_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody669_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 22])

def sourceBody669_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody669_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody669_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody669_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody669_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 22])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody669_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 22])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody669_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 22])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody669_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 22])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody669_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 52)

def sourceBody669_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody669_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody669_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody669_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 60)

def sourceBody669_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody669_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def sourceBody669_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody669_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody669_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([50, 14, 42, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 6)) (some 661) ([58, 10, 38, 24, 54, 18, 46, 32]) (some (58, sourceBody669_59, 669, 7))

def sourceBody669_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_60 sourceBody669_3

def sourceBody669_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_61 sourceBody669_0

def sourceBody669_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_58 sourceBody669_62

def sourceBody669_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_57 sourceBody669_63

def sourceBody669_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_56 sourceBody669_64

def sourceBody669_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_55 sourceBody669_65

def sourceBody669_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_54 sourceBody669_66

def sourceBody669_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_53 sourceBody669_67

def sourceBody669_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_52 sourceBody669_68

def sourceBody669_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_51 sourceBody669_69

def sourceBody669_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 26)

def sourceBody669_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 56)

def sourceBody669_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody669_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody669_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody669_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody669_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 42)

def sourceBody669_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody669_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 56, 8, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 8)) (some 658) ([58, 10, 38, 24, 54, 18, 46, 32]) (some (58, sourceBody669_59, 669, 9))

def sourceBody669_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_79 sourceBody669_3

def sourceBody669_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_80 sourceBody669_0

def sourceBody669_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_78 sourceBody669_81

def sourceBody669_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_77 sourceBody669_82

def sourceBody669_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_76 sourceBody669_83

def sourceBody669_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_75 sourceBody669_84

def sourceBody669_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_74 sourceBody669_85

def sourceBody669_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_73 sourceBody669_86

def sourceBody669_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_72 sourceBody669_87

def sourceBody669_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_71 sourceBody669_88

def sourceBody669_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody669_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 58)

def sourceBody669_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_91 sourceBody669_0

def sourceBody669_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_92 sourceBody669_0

def sourceBody669_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_90 sourceBody669_93

def sourceBody669_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_94

def sourceBody669_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_89 sourceBody669_95

def sourceBody669_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_70 sourceBody669_96

def sourceBody669_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_97

def sourceBody669_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_98

def sourceBody669_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_99

def sourceBody669_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_100

def sourceBody669_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_101

def sourceBody669_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_102

def sourceBody669_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_103

def sourceBody669_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_104

def sourceBody669_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_50 sourceBody669_105

def sourceBody669_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_106

def sourceBody669_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_49 sourceBody669_107

def sourceBody669_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_108

def sourceBody669_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_48 sourceBody669_109

def sourceBody669_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_110

def sourceBody669_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_47 sourceBody669_111

def sourceBody669_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_112

def sourceBody669_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_46 sourceBody669_113

def sourceBody669_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_114

def sourceBody669_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_45 sourceBody669_115

def sourceBody669_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_116

def sourceBody669_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_44 sourceBody669_117

def sourceBody669_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_118

def sourceBody669_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_43 sourceBody669_119

def sourceBody669_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_120

def sourceBody669_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody669_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_121 sourceBody669_122

def sourceBody669_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody669_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody669_123 sourceBody669_124

def sourceBody669_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_125 sourceBody669_3

def sourceBody669_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_126 sourceBody669_0

def sourceBody669_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_30 sourceBody669_127

def sourceBody669_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_29 sourceBody669_128

def sourceBody669_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_42 sourceBody669_129

def sourceBody669_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_41 sourceBody669_130

def sourceBody669_132 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody669_131 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody669_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_132 sourceBody669_3

def sourceBody669_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_3 sourceBody669_133

def sourceBody669_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_40 sourceBody669_134

def sourceBody669_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 26)

def sourceBody669_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 56)

def sourceBody669_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody669_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody669_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 26)

def sourceBody669_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 56)

def sourceBody669_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 8)

def sourceBody669_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody669_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody669_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 56, 8, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 10)) (some 658) ([52, 16, 44, 30, 60, 6, 34, 20]) (some (52, sourceBody669_144, 669, 11))

def sourceBody669_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_145 sourceBody669_3

def sourceBody669_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_146 sourceBody669_0

def sourceBody669_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_143 sourceBody669_147

def sourceBody669_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_142 sourceBody669_148

def sourceBody669_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_141 sourceBody669_149

def sourceBody669_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_140 sourceBody669_150

def sourceBody669_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_139 sourceBody669_151

def sourceBody669_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_138 sourceBody669_152

def sourceBody669_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_137 sourceBody669_153

def sourceBody669_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_136 sourceBody669_154

def sourceBody669_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_135 sourceBody669_155

def sourceBody669_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody669_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody669_159 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 44) sourceBody669_26 sourceBody669_27

def sourceBody669_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_159 sourceBody669_3

def sourceBody669_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
            (Flapjack.WordLangExpHOL.const 1#64))
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody669_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                (Flapjack.WordLangExpHOL.const 1#64))
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody669_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                (Flapjack.WordLangExpHOL.const 1#64))
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody669_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 40)
                (Flapjack.WordLangExpHOL.const 1#64))
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody669_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody669_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody669_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody669_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody669_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody669_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 6, 34, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 12)) (some 661) ([50, 14, 42, 28, 58, 10, 38, 24]) (some (50, sourceBody669_169, 669, 13))

def sourceBody669_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_170 sourceBody669_3

def sourceBody669_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_171 sourceBody669_0

def sourceBody669_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_54 sourceBody669_172

def sourceBody669_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_53 sourceBody669_173

def sourceBody669_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_52 sourceBody669_174

def sourceBody669_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_51 sourceBody669_175

def sourceBody669_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_168 sourceBody669_176

def sourceBody669_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_167 sourceBody669_177

def sourceBody669_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_166 sourceBody669_178

def sourceBody669_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_165 sourceBody669_179

def sourceBody669_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 26)

def sourceBody669_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 56)

def sourceBody669_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 8)

def sourceBody669_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 36)

def sourceBody669_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 60)

def sourceBody669_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody669_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody669_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody669_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 56, 8, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 14)) (some 658) ([50, 14, 42, 28, 58, 10, 38, 24]) (some (50, sourceBody669_169, 669, 15))

def sourceBody669_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_189 sourceBody669_3

def sourceBody669_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_190 sourceBody669_0

def sourceBody669_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_188 sourceBody669_191

def sourceBody669_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_187 sourceBody669_192

def sourceBody669_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_186 sourceBody669_193

def sourceBody669_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_185 sourceBody669_194

def sourceBody669_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_184 sourceBody669_195

def sourceBody669_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_183 sourceBody669_196

def sourceBody669_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_182 sourceBody669_197

def sourceBody669_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_181 sourceBody669_198

def sourceBody669_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_180 sourceBody669_199

def sourceBody669_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_200

def sourceBody669_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_201

def sourceBody669_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_202

def sourceBody669_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_203

def sourceBody669_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_204

def sourceBody669_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_205

def sourceBody669_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_206

def sourceBody669_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_207

def sourceBody669_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_164 sourceBody669_208

def sourceBody669_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_209

def sourceBody669_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_163 sourceBody669_210

def sourceBody669_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_211

def sourceBody669_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_162 sourceBody669_212

def sourceBody669_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_213

def sourceBody669_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_161 sourceBody669_214

def sourceBody669_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_215

def sourceBody669_217 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody669_216 sourceBody669_0

def sourceBody669_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_217 sourceBody669_3

def sourceBody669_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_218 sourceBody669_0

def sourceBody669_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_30 sourceBody669_219

def sourceBody669_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_160 sourceBody669_220

def sourceBody669_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_158 sourceBody669_221

def sourceBody669_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_157 sourceBody669_222

def sourceBody669_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_156 sourceBody669_223

def sourceBody669_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 12,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody669_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody669_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 56)

def sourceBody669_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody669_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 36)

def sourceBody669_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody669_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 52) 6

def sourceBody669_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_231 sourceBody669_0

def sourceBody669_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_230 sourceBody669_232

def sourceBody669_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 44)

def sourceBody669_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 8#64]) 6

def sourceBody669_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_235 sourceBody669_0

def sourceBody669_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_234 sourceBody669_236

def sourceBody669_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody669_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 16#64])
  6

def sourceBody669_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_239 sourceBody669_0

def sourceBody669_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_238 sourceBody669_240

def sourceBody669_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 60)

def sourceBody669_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 24#64])
  6

def sourceBody669_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_243 sourceBody669_0

def sourceBody669_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_242 sourceBody669_244

def sourceBody669_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_245 sourceBody669_0

def sourceBody669_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_241 sourceBody669_246

def sourceBody669_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_237 sourceBody669_247

def sourceBody669_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_233 sourceBody669_248

def sourceBody669_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_229 sourceBody669_249

def sourceBody669_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_250

def sourceBody669_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_228 sourceBody669_251

def sourceBody669_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_252

def sourceBody669_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_227 sourceBody669_253

def sourceBody669_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_254

def sourceBody669_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_226 sourceBody669_255

def sourceBody669_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_256

def sourceBody669_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_225 sourceBody669_257

def sourceBody669_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_258

def sourceBody669_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_224 sourceBody669_259

def sourceBody669_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody669_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def sourceBody669_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_262 sourceBody669_0

def sourceBody669_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_263 sourceBody669_0

def sourceBody669_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_261 sourceBody669_264

def sourceBody669_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_265

def sourceBody669_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_260 sourceBody669_266

def sourceBody669_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_23 sourceBody669_267

def sourceBody669_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_268

def sourceBody669_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_22 sourceBody669_269

def sourceBody669_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_270

def sourceBody669_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_21 sourceBody669_271

def sourceBody669_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_272

def sourceBody669_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_16 sourceBody669_273

def sourceBody669_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_274

def sourceBody669_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_20 sourceBody669_275

def sourceBody669_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_276

def sourceBody669_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_277 sourceBody669_122

def sourceBody669_279 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody669_278 sourceBody669_124

def sourceBody669_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_279 sourceBody669_3

def sourceBody669_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_280 sourceBody669_0

def sourceBody669_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_19 sourceBody669_281

def sourceBody669_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_18 sourceBody669_282

def sourceBody669_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_14 sourceBody669_283

def sourceBody669_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_13 sourceBody669_284

def sourceBody669_286 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody669_285 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody669_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_286 sourceBody669_3

def sourceBody669_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_3 sourceBody669_287

def sourceBody669_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 12)

def sourceBody669_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody669_291 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 16)) (some 667) ([56]) (some (56, sourceBody669_290, 669, 17))

def sourceBody669_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_291 sourceBody669_3

def sourceBody669_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_292 sourceBody669_0

def sourceBody669_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_289 sourceBody669_293

def sourceBody669_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_294

def sourceBody669_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_295

def sourceBody669_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_288 sourceBody669_296

def sourceBody669_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 2)

def sourceBody669_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody669_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody669_301 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody669_0, 669, 18)) (some 77) ([56, 8, 36]) (some (56, sourceBody669_290, 669, 19))

def sourceBody669_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_301 sourceBody669_3

def sourceBody669_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_302 sourceBody669_0

def sourceBody669_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_300 sourceBody669_303

def sourceBody669_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_299 sourceBody669_304

def sourceBody669_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_298 sourceBody669_305

def sourceBody669_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_306

def sourceBody669_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_307

def sourceBody669_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_297 sourceBody669_308

def sourceBody669_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 48)

def sourceBody669_311 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody669_0, 669, 20)) (some 70) ([56]) (some (56, sourceBody669_290, 669, 21))

def sourceBody669_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_311 sourceBody669_3

def sourceBody669_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_312 sourceBody669_0

def sourceBody669_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_310 sourceBody669_313

def sourceBody669_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_314

def sourceBody669_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_315

def sourceBody669_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_309 sourceBody669_316

def sourceBody669_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody669_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_318 sourceBody669_0

def sourceBody669_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_20 sourceBody669_319

def sourceBody669_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_317 sourceBody669_320

def sourceBody669_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_12 sourceBody669_321

def sourceBody669_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_322

def sourceBody669_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_11 sourceBody669_323

def sourceBody669_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_324

def sourceBody669_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_325

def sourceBody669_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_5 sourceBody669_326

def sourceBody669_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_327

def sourceBody669_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody669_0 sourceBody669_328

def source669 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (669, 3, sourceBody669_329)
end InitECandidate.Proofs.WordStages
