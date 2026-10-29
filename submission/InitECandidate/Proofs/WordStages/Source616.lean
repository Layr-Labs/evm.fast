import InitECandidate.Proofs.WordStages.Source600
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody616_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 131072#64)

def sourceBody616_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 14)

def sourceBody616_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 52 (Flapjack.WordRegImm.reg 36) sourceBody616_2 sourceBody616_3

def sourceBody616_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody616_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_4 sourceBody616_5

def sourceBody616_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 52)

def sourceBody616_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody616_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody616_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody616_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_10 sourceBody616_8

def sourceBody616_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_11 sourceBody616_8

def sourceBody616_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_9 sourceBody616_12

def sourceBody616_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_13

def sourceBody616_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody616_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody616_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_15 sourceBody616_16

def sourceBody616_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_14 sourceBody616_17

def sourceBody616_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody616_18 sourceBody616_8

def sourceBody616_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_19 sourceBody616_5

def sourceBody616_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_20 sourceBody616_8

def sourceBody616_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_7 sourceBody616_21

def sourceBody616_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_6 sourceBody616_22

def sourceBody616_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_1 sourceBody616_23

def sourceBody616_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_0 sourceBody616_24

def sourceBody616_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 12])

def sourceBody616_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody616_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody616_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 2)) (some 613) ([68, 28]) (some (68, sourceBody616_29, 616, 3))

def sourceBody616_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_30 sourceBody616_5

def sourceBody616_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_31 sourceBody616_8

def sourceBody616_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_28 sourceBody616_32

def sourceBody616_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_7 sourceBody616_33

def sourceBody616_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_34

def sourceBody616_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_35

def sourceBody616_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody616_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody616_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 68)

def sourceBody616_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody616_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 4)) (some 407) ([60]) (some (60, sourceBody616_40, 616, 5))

def sourceBody616_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_41 sourceBody616_5

def sourceBody616_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_42 sourceBody616_8

def sourceBody616_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_39 sourceBody616_43

def sourceBody616_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody616_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody616_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody616_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody616_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody616_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 4)

def sourceBody616_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody616_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def sourceBody616_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody616_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 6)) (some 106) ([44, 76, 18, 50, 34, 66, 26, 58]) (some (44, sourceBody616_53, 616, 7))

def sourceBody616_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_54 sourceBody616_5

def sourceBody616_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_55 sourceBody616_8

def sourceBody616_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_52 sourceBody616_56

def sourceBody616_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_51 sourceBody616_57

def sourceBody616_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_50 sourceBody616_58

def sourceBody616_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_49 sourceBody616_59

def sourceBody616_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_48 sourceBody616_60

def sourceBody616_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_47 sourceBody616_61

def sourceBody616_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_46 sourceBody616_62

def sourceBody616_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_45 sourceBody616_63

def sourceBody616_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 60)

def sourceBody616_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 76 (Flapjack.WordRegImm.reg 18) sourceBody616_67 sourceBody616_68

def sourceBody616_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_69 sourceBody616_5

def sourceBody616_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody616_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody616_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 66) sourceBody616_73 sourceBody616_74

def sourceBody616_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_75 sourceBody616_5

def sourceBody616_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody616_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 128#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody616_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 58 (Flapjack.WordRegImm.reg 42) sourceBody616_79 sourceBody616_80

def sourceBody616_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_81 sourceBody616_5

def sourceBody616_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.var 58])

def sourceBody616_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 54) sourceBody616_85 sourceBody616_83

def sourceBody616_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_86 sourceBody616_5

def sourceBody616_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody616_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def sourceBody616_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody616_8, 616, 8)) (some 476) ([76, 18, 50, 34]) (some (76, sourceBody616_90, 616, 9))

def sourceBody616_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_91 sourceBody616_5

def sourceBody616_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_92 sourceBody616_8

def sourceBody616_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_74 sourceBody616_93

def sourceBody616_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_89 sourceBody616_94

def sourceBody616_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_66 sourceBody616_95

def sourceBody616_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_68 sourceBody616_96

def sourceBody616_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_97

def sourceBody616_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_98

def sourceBody616_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44]

def sourceBody616_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_101 sourceBody616_8

def sourceBody616_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_100 sourceBody616_102

def sourceBody616_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_99 sourceBody616_103

def sourceBody616_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody616_104 sourceBody616_8

def sourceBody616_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_105 sourceBody616_5

def sourceBody616_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_106 sourceBody616_8

def sourceBody616_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_88 sourceBody616_107

def sourceBody616_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_87 sourceBody616_108

def sourceBody616_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_84 sourceBody616_109

def sourceBody616_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_83 sourceBody616_110

def sourceBody616_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_82 sourceBody616_111

def sourceBody616_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_78 sourceBody616_112

def sourceBody616_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_77 sourceBody616_113

def sourceBody616_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_76 sourceBody616_114

def sourceBody616_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_72 sourceBody616_115

def sourceBody616_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_71 sourceBody616_116

def sourceBody616_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_70 sourceBody616_117

def sourceBody616_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_66 sourceBody616_118

def sourceBody616_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_65 sourceBody616_119

def sourceBody616_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 10)

def sourceBody616_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 10)) (some 494) ([76]) (some (76, sourceBody616_90, 616, 11))

def sourceBody616_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_122 sourceBody616_5

def sourceBody616_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_123 sourceBody616_8

def sourceBody616_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_121 sourceBody616_124

def sourceBody616_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_125

def sourceBody616_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_126

def sourceBody616_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_120 sourceBody616_127

def sourceBody616_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 12)) (some 418) ([76]) (some (76, sourceBody616_90, 616, 13))

def sourceBody616_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_129 sourceBody616_5

def sourceBody616_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_130 sourceBody616_8

def sourceBody616_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_121 sourceBody616_131

def sourceBody616_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def sourceBody616_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 34) sourceBody616_134 sourceBody616_89

def sourceBody616_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_135 sourceBody616_5

def sourceBody616_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 50)

def sourceBody616_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_67 sourceBody616_8

def sourceBody616_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_138 sourceBody616_8

def sourceBody616_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody616_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody616_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 14)) (some 471) ([50]) (some (50, sourceBody616_141, 616, 15))

def sourceBody616_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_142 sourceBody616_5

def sourceBody616_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_143 sourceBody616_8

def sourceBody616_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_140 sourceBody616_144

def sourceBody616_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_145

def sourceBody616_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_146

def sourceBody616_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_139 sourceBody616_147

def sourceBody616_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.imm 0#64) sourceBody616_148 sourceBody616_8

def sourceBody616_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_149 sourceBody616_5

def sourceBody616_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_150 sourceBody616_8

def sourceBody616_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_137 sourceBody616_151

def sourceBody616_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_136 sourceBody616_152

def sourceBody616_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_74 sourceBody616_153

def sourceBody616_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_133 sourceBody616_154

def sourceBody616_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody616_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 6#64)])

def sourceBody616_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody616_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 50])

def sourceBody616_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 66)

def sourceBody616_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 26

def sourceBody616_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_161 sourceBody616_8

def sourceBody616_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_160 sourceBody616_162

def sourceBody616_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_163 sourceBody616_8

def sourceBody616_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_159 sourceBody616_164

def sourceBody616_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_165

def sourceBody616_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_158 sourceBody616_166

def sourceBody616_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_167

def sourceBody616_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 10)

def sourceBody616_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody616_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 16)) (some 415) ([66]) (some (66, sourceBody616_170, 616, 17))

def sourceBody616_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_171 sourceBody616_5

def sourceBody616_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_172 sourceBody616_8

def sourceBody616_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_169 sourceBody616_173

def sourceBody616_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody616_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_178 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 58) sourceBody616_176 sourceBody616_177

def sourceBody616_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_178 sourceBody616_5

def sourceBody616_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody616_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 68)

def sourceBody616_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody616_183 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 18)) (some 430) ([26]) (some (26, sourceBody616_182, 616, 19))

def sourceBody616_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_183 sourceBody616_5

def sourceBody616_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_184 sourceBody616_8

def sourceBody616_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_181 sourceBody616_185

def sourceBody616_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_186

def sourceBody616_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_187

def sourceBody616_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody616_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.var 50])

def sourceBody616_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 26)

def sourceBody616_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 66) 58

def sourceBody616_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_192 sourceBody616_8

def sourceBody616_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_191 sourceBody616_193

def sourceBody616_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_194 sourceBody616_8

def sourceBody616_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_190 sourceBody616_195

def sourceBody616_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_196

def sourceBody616_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_189 sourceBody616_197

def sourceBody616_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_198

def sourceBody616_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_188 sourceBody616_199

def sourceBody616_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 76)

def sourceBody616_202 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 58) sourceBody616_176 sourceBody616_177

def sourceBody616_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_202 sourceBody616_5

def sourceBody616_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody616_205 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody616_8, 616, 20)) (some 472) ([26]) (some (26, sourceBody616_182, 616, 21))

def sourceBody616_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_205 sourceBody616_5

def sourceBody616_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_206 sourceBody616_8

def sourceBody616_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_204 sourceBody616_207

def sourceBody616_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_208

def sourceBody616_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_209

def sourceBody616_211 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody616_210 sourceBody616_8

def sourceBody616_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_211 sourceBody616_5

def sourceBody616_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_212 sourceBody616_8

def sourceBody616_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_180 sourceBody616_213

def sourceBody616_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_203 sourceBody616_214

def sourceBody616_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_80 sourceBody616_215

def sourceBody616_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_201 sourceBody616_216

def sourceBody616_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_200 sourceBody616_217

def sourceBody616_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_221 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody616_8, 616, 22)) (some 476) ([26, 58, 42, 74]) (some (26, sourceBody616_182, 616, 23))

def sourceBody616_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_221 sourceBody616_5

def sourceBody616_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_222 sourceBody616_8

def sourceBody616_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_220 sourceBody616_223

def sourceBody616_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_219 sourceBody616_224

def sourceBody616_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_80 sourceBody616_225

def sourceBody616_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_177 sourceBody616_226

def sourceBody616_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_227

def sourceBody616_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_228

def sourceBody616_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_218 sourceBody616_229

def sourceBody616_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [66]

def sourceBody616_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_232 sourceBody616_8

def sourceBody616_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_231 sourceBody616_233

def sourceBody616_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_230 sourceBody616_234

def sourceBody616_236 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody616_235 sourceBody616_8

def sourceBody616_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_236 sourceBody616_5

def sourceBody616_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_237 sourceBody616_8

def sourceBody616_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_180 sourceBody616_238

def sourceBody616_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_179 sourceBody616_239

def sourceBody616_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_80 sourceBody616_240

def sourceBody616_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_175 sourceBody616_241

def sourceBody616_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody616_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody616_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 58)

def sourceBody616_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 42

def sourceBody616_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_246 sourceBody616_8

def sourceBody616_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_245 sourceBody616_247

def sourceBody616_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_248 sourceBody616_8

def sourceBody616_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_80 sourceBody616_249

def sourceBody616_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_250

def sourceBody616_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_244 sourceBody616_251

def sourceBody616_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_252

def sourceBody616_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 68)

def sourceBody616_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody616_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 24)) (some 430) ([58]) (some (58, sourceBody616_255, 616, 25))

def sourceBody616_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_256 sourceBody616_5

def sourceBody616_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_257 sourceBody616_8

def sourceBody616_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_254 sourceBody616_258

def sourceBody616_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_259

def sourceBody616_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_260

def sourceBody616_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_253 sourceBody616_261

def sourceBody616_263 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 26)) (some 75) ([]) (some (58, sourceBody616_255, 616, 27))

def sourceBody616_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_263 sourceBody616_5

def sourceBody616_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_264 sourceBody616_8

def sourceBody616_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody616_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 28)) (some 72) ([]) (some (42, sourceBody616_266, 616, 29))

def sourceBody616_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_267 sourceBody616_5

def sourceBody616_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_268 sourceBody616_8

def sourceBody616_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 68)

def sourceBody616_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 10)

def sourceBody616_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 50)

def sourceBody616_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 66)

def sourceBody616_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody616_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 4)

def sourceBody616_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 6)

def sourceBody616_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 8)

def sourceBody616_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 52)

def sourceBody616_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 20)

def sourceBody616_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody616_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody616_287 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody616_8, 616, 30)) (some 612) ([74, 22, 54, 38, 70, 30, 62, 46, 78, 16, 48, 32, 64, 24, 56, 40, 72]) (some (74, sourceBody616_286, 616, 31))

def sourceBody616_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_287 sourceBody616_5

def sourceBody616_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_288 sourceBody616_8

def sourceBody616_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_285 sourceBody616_289

def sourceBody616_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_284 sourceBody616_290

def sourceBody616_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_283 sourceBody616_291

def sourceBody616_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_282 sourceBody616_292

def sourceBody616_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_281 sourceBody616_293

def sourceBody616_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_280 sourceBody616_294

def sourceBody616_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_279 sourceBody616_295

def sourceBody616_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_278 sourceBody616_296

def sourceBody616_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_277 sourceBody616_297

def sourceBody616_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_276 sourceBody616_298

def sourceBody616_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_275 sourceBody616_299

def sourceBody616_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_274 sourceBody616_300

def sourceBody616_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_273 sourceBody616_301

def sourceBody616_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_272 sourceBody616_302

def sourceBody616_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_271 sourceBody616_303

def sourceBody616_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_83 sourceBody616_304

def sourceBody616_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_270 sourceBody616_305

def sourceBody616_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 42)

def sourceBody616_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody616_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 26)

def sourceBody616_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 58)

def sourceBody616_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 76)

def sourceBody616_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody616_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 10)

def sourceBody616_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody616_316 : WordLangProgHOL (BitVec 64) :=
.call (some (([74]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody616_8, 616, 32)) (some 603) ([22, 54, 38, 70, 30, 62, 46, 78]) (some (22, sourceBody616_315, 616, 33))

def sourceBody616_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_316 sourceBody616_5

def sourceBody616_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_317 sourceBody616_8

def sourceBody616_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_314 sourceBody616_318

def sourceBody616_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_313 sourceBody616_319

def sourceBody616_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_312 sourceBody616_320

def sourceBody616_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_311 sourceBody616_321

def sourceBody616_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_310 sourceBody616_322

def sourceBody616_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_309 sourceBody616_323

def sourceBody616_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_308 sourceBody616_324

def sourceBody616_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_307 sourceBody616_325

def sourceBody616_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_326

def sourceBody616_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_327

def sourceBody616_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody616_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [74]

def sourceBody616_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_330 sourceBody616_8

def sourceBody616_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_329 sourceBody616_331

def sourceBody616_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_328 sourceBody616_332

def sourceBody616_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_306 sourceBody616_333

def sourceBody616_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_334

def sourceBody616_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_335

def sourceBody616_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_269 sourceBody616_336

def sourceBody616_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_337

def sourceBody616_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_338

def sourceBody616_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_265 sourceBody616_339

def sourceBody616_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_340

def sourceBody616_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_341

def sourceBody616_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_262 sourceBody616_342

def sourceBody616_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_243 sourceBody616_343

def sourceBody616_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_344

def sourceBody616_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_242 sourceBody616_345

def sourceBody616_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_174 sourceBody616_346

def sourceBody616_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_347

def sourceBody616_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_348

def sourceBody616_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_168 sourceBody616_349

def sourceBody616_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_157 sourceBody616_350

def sourceBody616_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_351

def sourceBody616_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_156 sourceBody616_352

def sourceBody616_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_353

def sourceBody616_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_155 sourceBody616_354

def sourceBody616_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_68 sourceBody616_355

def sourceBody616_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_356

def sourceBody616_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_132 sourceBody616_357

def sourceBody616_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_358

def sourceBody616_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_359

def sourceBody616_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_128 sourceBody616_360

def sourceBody616_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_64 sourceBody616_361

def sourceBody616_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_362

def sourceBody616_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_363

def sourceBody616_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_44 sourceBody616_364

def sourceBody616_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_365

def sourceBody616_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_366

def sourceBody616_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_38 sourceBody616_367

def sourceBody616_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_368

def sourceBody616_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_37 sourceBody616_369

def sourceBody616_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_370

def sourceBody616_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_36 sourceBody616_371

def sourceBody616_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_27 sourceBody616_372

def sourceBody616_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_373

def sourceBody616_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_26 sourceBody616_374

def sourceBody616_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_8 sourceBody616_375

def sourceBody616_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody616_25 sourceBody616_376

def source616 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (616, 8, sourceBody616_377)
end InitECandidate.Proofs.WordStages
