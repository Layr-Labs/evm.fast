import InitECandidate.Proofs.WordStages.Source262
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody278_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody278_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody278_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody278_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody278_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 16) sourceBody278_2 sourceBody278_3

def sourceBody278_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody278_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_4 sourceBody278_5

def sourceBody278_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody278_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody278_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody278_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 18)

def sourceBody278_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_10 sourceBody278_8

def sourceBody278_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_11 sourceBody278_8

def sourceBody278_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_9 sourceBody278_12

def sourceBody278_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_13

def sourceBody278_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody278_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody278_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_15 sourceBody278_16

def sourceBody278_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_14 sourceBody278_17

def sourceBody278_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody278_18 sourceBody278_8

def sourceBody278_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_19 sourceBody278_5

def sourceBody278_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_20 sourceBody278_8

def sourceBody278_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_7 sourceBody278_21

def sourceBody278_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_6 sourceBody278_22

def sourceBody278_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_1 sourceBody278_23

def sourceBody278_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_0 sourceBody278_24

def sourceBody278_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody278_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody278_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody278_8, 278, 2)) (some 68) ([8]) (some (8, sourceBody278_27, 278, 3))

def sourceBody278_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_28 sourceBody278_5

def sourceBody278_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_29 sourceBody278_8

def sourceBody278_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_26 sourceBody278_30

def sourceBody278_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody278_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody278_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody278_8, 278, 4)) (some 68) ([16]) (some (16, sourceBody278_33, 278, 5))

def sourceBody278_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_34 sourceBody278_5

def sourceBody278_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_35 sourceBody278_8

def sourceBody278_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_32 sourceBody278_36

def sourceBody278_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody278_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody278_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody278_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody278_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody278_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 6) sourceBody278_41 sourceBody278_42

def sourceBody278_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_43 sourceBody278_5

def sourceBody278_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody278_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody278_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody278_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody278_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody278_8, 278, 6)) (some 274) ([20, 6]) (some (20, sourceBody278_48, 278, 7))

def sourceBody278_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_49 sourceBody278_5

def sourceBody278_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_50 sourceBody278_8

def sourceBody278_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_47 sourceBody278_51

def sourceBody278_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_46 sourceBody278_52

def sourceBody278_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody278_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody278_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody278_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 14

def sourceBody278_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_57 sourceBody278_8

def sourceBody278_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_56 sourceBody278_58

def sourceBody278_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_59 sourceBody278_8

def sourceBody278_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_55 sourceBody278_60

def sourceBody278_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_61

def sourceBody278_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_54 sourceBody278_62

def sourceBody278_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_63

def sourceBody278_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody278_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody278_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody278_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody278_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody278_8, 278, 8)) (some 158) ([6, 14, 10]) (some (6, sourceBody278_68, 278, 9))

def sourceBody278_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_69 sourceBody278_5

def sourceBody278_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_70 sourceBody278_8

def sourceBody278_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_67 sourceBody278_71

def sourceBody278_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_66 sourceBody278_72

def sourceBody278_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_65 sourceBody278_73

def sourceBody278_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_74

def sourceBody278_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_75

def sourceBody278_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_64 sourceBody278_76

def sourceBody278_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody278_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody278_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_79 sourceBody278_8

def sourceBody278_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_80 sourceBody278_8

def sourceBody278_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_78 sourceBody278_81

def sourceBody278_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_82

def sourceBody278_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_77 sourceBody278_83

def sourceBody278_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_53 sourceBody278_84

def sourceBody278_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_85

def sourceBody278_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_86

def sourceBody278_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody278_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_87 sourceBody278_88

def sourceBody278_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody278_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody278_89 sourceBody278_90

def sourceBody278_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_91 sourceBody278_5

def sourceBody278_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_92 sourceBody278_8

def sourceBody278_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_45 sourceBody278_93

def sourceBody278_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_44 sourceBody278_94

def sourceBody278_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_40 sourceBody278_95

def sourceBody278_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_39 sourceBody278_96

def sourceBody278_98 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody278_97 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody278_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_98 sourceBody278_5

def sourceBody278_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_5 sourceBody278_99

def sourceBody278_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody278_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_101 sourceBody278_8

def sourceBody278_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_102 sourceBody278_8

def sourceBody278_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_100 sourceBody278_103

def sourceBody278_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 18,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
                (Flapjack.WordLangExpHOL.const 3#64)]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody278_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody278_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody278_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody278_8, 278, 10)) (some 79) ([20, 6, 14]) (some (20, sourceBody278_48, 278, 11))

def sourceBody278_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_108 sourceBody278_5

def sourceBody278_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_109 sourceBody278_8

def sourceBody278_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_107 sourceBody278_110

def sourceBody278_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_106 sourceBody278_111

def sourceBody278_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_105 sourceBody278_112

def sourceBody278_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody278_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody278_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody278_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody278_115 sourceBody278_116

def sourceBody278_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_117 sourceBody278_5

def sourceBody278_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody278_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody278_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody278_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_121 sourceBody278_8

def sourceBody278_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_122 sourceBody278_8

def sourceBody278_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_120 sourceBody278_123

def sourceBody278_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_124

def sourceBody278_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody278_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_126 sourceBody278_48

def sourceBody278_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_125 sourceBody278_127

def sourceBody278_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody278_128 sourceBody278_8

def sourceBody278_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_129 sourceBody278_5

def sourceBody278_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_130 sourceBody278_8

def sourceBody278_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_119 sourceBody278_131

def sourceBody278_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_118 sourceBody278_132

def sourceBody278_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_114 sourceBody278_133

def sourceBody278_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_55 sourceBody278_134

def sourceBody278_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_135 sourceBody278_83

def sourceBody278_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_113 sourceBody278_136

def sourceBody278_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_137

def sourceBody278_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_138

def sourceBody278_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_139 sourceBody278_88

def sourceBody278_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody278_140 sourceBody278_90

def sourceBody278_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_141 sourceBody278_5

def sourceBody278_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_142 sourceBody278_8

def sourceBody278_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_45 sourceBody278_143

def sourceBody278_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_44 sourceBody278_144

def sourceBody278_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_40 sourceBody278_145

def sourceBody278_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_39 sourceBody278_146

def sourceBody278_148 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody278_147 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody278_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_148 sourceBody278_5

def sourceBody278_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_5 sourceBody278_149

def sourceBody278_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_104 sourceBody278_150

def sourceBody278_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody278_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody278_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 20]

def sourceBody278_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_154 sourceBody278_8

def sourceBody278_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_153 sourceBody278_155

def sourceBody278_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_152 sourceBody278_156

def sourceBody278_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_151 sourceBody278_157

def sourceBody278_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_38 sourceBody278_158

def sourceBody278_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_159

def sourceBody278_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_37 sourceBody278_160

def sourceBody278_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_161

def sourceBody278_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_162

def sourceBody278_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_31 sourceBody278_163

def sourceBody278_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_164

def sourceBody278_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_8 sourceBody278_165

def sourceBody278_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody278_25 sourceBody278_166

def source278 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (278, 3, sourceBody278_167)
end InitECandidate.Proofs.WordStages
