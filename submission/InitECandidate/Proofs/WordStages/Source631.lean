import InitECandidate.Proofs.WordStages.Source615
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody631_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody631_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 336#64]))

def sourceBody631_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1732584193#64)

def sourceBody631_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody631_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 14

def sourceBody631_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_4 sourceBody631_0

def sourceBody631_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_3 sourceBody631_5

def sourceBody631_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_6 sourceBody631_0

def sourceBody631_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_2 sourceBody631_7

def sourceBody631_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_8

def sourceBody631_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_1 sourceBody631_9

def sourceBody631_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_10

def sourceBody631_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 336#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody631_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4023233417#64)

def sourceBody631_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_13 sourceBody631_7

def sourceBody631_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_14

def sourceBody631_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_12 sourceBody631_15

def sourceBody631_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_16

def sourceBody631_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_11 sourceBody631_17

def sourceBody631_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 336#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody631_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2562383102#64)

def sourceBody631_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_20 sourceBody631_7

def sourceBody631_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_21

def sourceBody631_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_19 sourceBody631_22

def sourceBody631_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_23

def sourceBody631_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_18 sourceBody631_24

def sourceBody631_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 336#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody631_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 271733878#64)

def sourceBody631_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_27 sourceBody631_7

def sourceBody631_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_28

def sourceBody631_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_26 sourceBody631_29

def sourceBody631_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_30

def sourceBody631_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_25 sourceBody631_31

def sourceBody631_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 336#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody631_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3285377520#64)

def sourceBody631_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_34 sourceBody631_7

def sourceBody631_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_35

def sourceBody631_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_33 sourceBody631_36

def sourceBody631_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_37

def sourceBody631_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_32 sourceBody631_38

def sourceBody631_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody631_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody631_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody631_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody631_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody631_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody631_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) sourceBody631_44 sourceBody631_45

def sourceBody631_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_46 sourceBody631_41

def sourceBody631_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody631_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 336#64]))

def sourceBody631_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody631_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody631_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 2)) (some 630) ([14, 20]) (some (14, sourceBody631_51, 631, 3))

def sourceBody631_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_52 sourceBody631_41

def sourceBody631_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_53 sourceBody631_0

def sourceBody631_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_50 sourceBody631_54

def sourceBody631_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_49 sourceBody631_55

def sourceBody631_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_56

def sourceBody631_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_57

def sourceBody631_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody631_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody631_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_60 sourceBody631_0

def sourceBody631_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_61 sourceBody631_0

def sourceBody631_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_59 sourceBody631_62

def sourceBody631_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_63

def sourceBody631_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_58 sourceBody631_64

def sourceBody631_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody631_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_65 sourceBody631_66

def sourceBody631_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody631_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody631_67 sourceBody631_68

def sourceBody631_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_69 sourceBody631_41

def sourceBody631_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_70 sourceBody631_0

def sourceBody631_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_48 sourceBody631_71

def sourceBody631_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_47 sourceBody631_72

def sourceBody631_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_43 sourceBody631_73

def sourceBody631_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_42 sourceBody631_74

def sourceBody631_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody631_75 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody631_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_76 sourceBody631_41

def sourceBody631_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_41 sourceBody631_77

def sourceBody631_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody631_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 344#64]))

def sourceBody631_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody631_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody631_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 4)) (some 78) ([20, 8]) (some (20, sourceBody631_82, 631, 5))

def sourceBody631_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_83 sourceBody631_41

def sourceBody631_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_84 sourceBody631_0

def sourceBody631_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_81 sourceBody631_85

def sourceBody631_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_80 sourceBody631_86

def sourceBody631_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_87

def sourceBody631_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_88

def sourceBody631_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody631_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody631_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 6)) (some 77) ([20, 8, 16]) (some (20, sourceBody631_82, 631, 7))

def sourceBody631_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_92 sourceBody631_41

def sourceBody631_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_93 sourceBody631_0

def sourceBody631_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_91 sourceBody631_94

def sourceBody631_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_90 sourceBody631_95

def sourceBody631_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_80 sourceBody631_96

def sourceBody631_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_97

def sourceBody631_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_98

def sourceBody631_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_89 sourceBody631_99

def sourceBody631_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 344#64]),
      Flapjack.WordLangExpHOL.var 18])

def sourceBody631_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody631_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 20 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody631_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_103 sourceBody631_0

def sourceBody631_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_102 sourceBody631_104

def sourceBody631_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_101 sourceBody631_105

def sourceBody631_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_100 sourceBody631_106

def sourceBody631_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody631_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody631_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody631_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody631_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody631_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 16) sourceBody631_111 sourceBody631_112

def sourceBody631_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_113 sourceBody631_41

def sourceBody631_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody631_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody631_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_116 sourceBody631_0

def sourceBody631_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_117 sourceBody631_0

def sourceBody631_119 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody631_118 sourceBody631_0

def sourceBody631_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_119 sourceBody631_41

def sourceBody631_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_120 sourceBody631_0

def sourceBody631_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_115 sourceBody631_121

def sourceBody631_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_114 sourceBody631_122

def sourceBody631_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_110 sourceBody631_123

def sourceBody631_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_109 sourceBody631_124

def sourceBody631_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                  [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                    Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                      (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                      (Flapjack.WordLangExpHOL.const 1#64)],
                Flapjack.WordLangExpHOL.const 344#64]),
          Flapjack.WordLangExpHOL.var 14],
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody631_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody631_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody631_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 8)) (some 87) ([8, 16]) (some (8, sourceBody631_128, 631, 9))

def sourceBody631_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_129 sourceBody631_41

def sourceBody631_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_130 sourceBody631_0

def sourceBody631_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_127 sourceBody631_131

def sourceBody631_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_126 sourceBody631_132

def sourceBody631_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_133

def sourceBody631_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_134

def sourceBody631_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_125 sourceBody631_135

def sourceBody631_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 336#64]))

def sourceBody631_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 344#64]))

def sourceBody631_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 10)) (some 630) ([8, 16]) (some (8, sourceBody631_128, 631, 11))

def sourceBody631_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_139 sourceBody631_41

def sourceBody631_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_140 sourceBody631_0

def sourceBody631_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_138 sourceBody631_141

def sourceBody631_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_137 sourceBody631_142

def sourceBody631_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_143

def sourceBody631_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_144

def sourceBody631_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_136 sourceBody631_145

def sourceBody631_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody631_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) sourceBody631_111 sourceBody631_112

def sourceBody631_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_148 sourceBody631_41

def sourceBody631_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 344#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody631_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 12)) (some 630) ([8, 16]) (some (8, sourceBody631_128, 631, 13))

def sourceBody631_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_151 sourceBody631_41

def sourceBody631_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_152 sourceBody631_0

def sourceBody631_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_150 sourceBody631_153

def sourceBody631_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_137 sourceBody631_154

def sourceBody631_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_155

def sourceBody631_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_156

def sourceBody631_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody631_157 sourceBody631_0

def sourceBody631_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_158 sourceBody631_41

def sourceBody631_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_159 sourceBody631_0

def sourceBody631_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_115 sourceBody631_160

def sourceBody631_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_149 sourceBody631_161

def sourceBody631_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_147 sourceBody631_162

def sourceBody631_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_48 sourceBody631_163

def sourceBody631_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_146 sourceBody631_164

def sourceBody631_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_40 sourceBody631_0

def sourceBody631_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_166 sourceBody631_0

def sourceBody631_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_165 sourceBody631_167

def sourceBody631_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody631_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody631_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 16) sourceBody631_111 sourceBody631_112

def sourceBody631_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_171 sourceBody631_41

def sourceBody631_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 2#64)])

def sourceBody631_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 336#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody631_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody631_0, 631, 14)) (some 86) ([8, 16]) (some (8, sourceBody631_128, 631, 15))

def sourceBody631_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_175 sourceBody631_41

def sourceBody631_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_176 sourceBody631_0

def sourceBody631_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_174 sourceBody631_177

def sourceBody631_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_173 sourceBody631_178

def sourceBody631_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_179

def sourceBody631_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_180

def sourceBody631_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody631_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody631_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_183 sourceBody631_0

def sourceBody631_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_184 sourceBody631_0

def sourceBody631_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_182 sourceBody631_185

def sourceBody631_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_186

def sourceBody631_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_181 sourceBody631_187

def sourceBody631_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_188 sourceBody631_66

def sourceBody631_190 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody631_189 sourceBody631_68

def sourceBody631_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_190 sourceBody631_41

def sourceBody631_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_191 sourceBody631_0

def sourceBody631_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_115 sourceBody631_192

def sourceBody631_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_172 sourceBody631_193

def sourceBody631_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_170 sourceBody631_194

def sourceBody631_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_169 sourceBody631_195

def sourceBody631_197 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody631_196 (Flapjack.Spt.ls PUnit.unit)

def sourceBody631_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_197 sourceBody631_41

def sourceBody631_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_41 sourceBody631_198

def sourceBody631_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_168 sourceBody631_199

def sourceBody631_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody631_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody631_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_202 sourceBody631_0

def sourceBody631_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_201 sourceBody631_203

def sourceBody631_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_200 sourceBody631_204

def sourceBody631_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_108 sourceBody631_205

def sourceBody631_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_206

def sourceBody631_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_107 sourceBody631_207

def sourceBody631_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_79 sourceBody631_208

def sourceBody631_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_209

def sourceBody631_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_78 sourceBody631_210

def sourceBody631_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_40 sourceBody631_211

def sourceBody631_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_0 sourceBody631_212

def sourceBody631_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody631_39 sourceBody631_213

def source631 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (631, 4, sourceBody631_214)
end InitECandidate.Proofs.WordStages
