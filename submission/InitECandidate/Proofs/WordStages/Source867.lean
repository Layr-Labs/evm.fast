import InitECandidate.Proofs.WordStages.Source851
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody867_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody867_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody867_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody867_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody867_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody867_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody867_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody867_0, 867, 2)) (some 68) ([18]) (some (18, sourceBody867_5, 867, 3))

def sourceBody867_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody867_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_6 sourceBody867_7

def sourceBody867_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_8 sourceBody867_0

def sourceBody867_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_4 sourceBody867_9

def sourceBody867_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody867_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody867_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 34) sourceBody867_16 sourceBody867_17

def sourceBody867_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_18 sourceBody867_7

def sourceBody867_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody867_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody867_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody867_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody867_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody867_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody867_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 38) sourceBody867_27 sourceBody867_28

def sourceBody867_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_29 sourceBody867_7

def sourceBody867_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 20)

def sourceBody867_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody867_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody867_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 512#64]))

def sourceBody867_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody867_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody867_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody867_0, 867, 4)) (some 79) ([38, 2, 22]) (some (38, sourceBody867_36, 867, 5))

def sourceBody867_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_37 sourceBody867_7

def sourceBody867_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_38 sourceBody867_0

def sourceBody867_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_35 sourceBody867_39

def sourceBody867_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_34 sourceBody867_40

def sourceBody867_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_33 sourceBody867_41

def sourceBody867_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 22) sourceBody867_44 sourceBody867_45

def sourceBody867_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_46 sourceBody867_7

def sourceBody867_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody867_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody867_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 22) sourceBody867_44 sourceBody867_45

def sourceBody867_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_50 sourceBody867_7

def sourceBody867_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody867_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 520#64]))

def sourceBody867_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody867_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody867_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody867_0, 867, 6)) (some 79) ([2, 22, 14]) (some (2, sourceBody867_55, 867, 7))

def sourceBody867_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_56 sourceBody867_7

def sourceBody867_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_57 sourceBody867_0

def sourceBody867_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_54 sourceBody867_58

def sourceBody867_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_53 sourceBody867_59

def sourceBody867_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_52 sourceBody867_60

def sourceBody867_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody867_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 14) sourceBody867_64 sourceBody867_43

def sourceBody867_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_65 sourceBody867_7

def sourceBody867_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody867_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 36)

def sourceBody867_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody867_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 14) sourceBody867_64 sourceBody867_43

def sourceBody867_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_70 sourceBody867_7

def sourceBody867_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 1024#64])

def sourceBody867_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody867_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody867_0, 867, 8)) (some 68) ([22]) (some (22, sourceBody867_73, 867, 9))

def sourceBody867_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_74 sourceBody867_7

def sourceBody867_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_75 sourceBody867_0

def sourceBody867_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_72 sourceBody867_76

def sourceBody867_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody867_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody867_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody867_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody867_0, 867, 10)) (some 77) ([14, 32, 8]) (some (14, sourceBody867_80, 867, 11))

def sourceBody867_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_81 sourceBody867_7

def sourceBody867_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_82 sourceBody867_0

def sourceBody867_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_79 sourceBody867_83

def sourceBody867_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_78 sourceBody867_84

def sourceBody867_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_48 sourceBody867_85

def sourceBody867_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_86

def sourceBody867_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_87

def sourceBody867_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody867_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_89 sourceBody867_0

def sourceBody867_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_90 sourceBody867_0

def sourceBody867_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_88 sourceBody867_91

def sourceBody867_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody867_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_93 sourceBody867_0

def sourceBody867_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_94 sourceBody867_0

def sourceBody867_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_72 sourceBody867_95

def sourceBody867_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_96

def sourceBody867_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_92 sourceBody867_97

def sourceBody867_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_77 sourceBody867_98

def sourceBody867_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_99

def sourceBody867_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_100

def sourceBody867_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody867_101 sourceBody867_0

def sourceBody867_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_102 sourceBody867_7

def sourceBody867_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_103 sourceBody867_0

def sourceBody867_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_67 sourceBody867_104

def sourceBody867_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_71 sourceBody867_105

def sourceBody867_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_69 sourceBody867_106

def sourceBody867_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_68 sourceBody867_107

def sourceBody867_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody867_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody867_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 18])

def sourceBody867_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody867_0, 867, 12)) (some 848) ([22, 14, 32]) (some (22, sourceBody867_73, 867, 13))

def sourceBody867_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_112 sourceBody867_7

def sourceBody867_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_113 sourceBody867_0

def sourceBody867_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_111 sourceBody867_114

def sourceBody867_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_110 sourceBody867_115

def sourceBody867_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_109 sourceBody867_116

def sourceBody867_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_117

def sourceBody867_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_118

def sourceBody867_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_108 sourceBody867_119

def sourceBody867_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody867_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody867_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_122 sourceBody867_0

def sourceBody867_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_123 sourceBody867_0

def sourceBody867_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_121 sourceBody867_124

def sourceBody867_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_125

def sourceBody867_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_120 sourceBody867_126

def sourceBody867_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody867_127 sourceBody867_0

def sourceBody867_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_128 sourceBody867_7

def sourceBody867_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_129 sourceBody867_0

def sourceBody867_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_67 sourceBody867_130

def sourceBody867_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_66 sourceBody867_131

def sourceBody867_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_63 sourceBody867_132

def sourceBody867_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_62 sourceBody867_133

def sourceBody867_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_61 sourceBody867_134

def sourceBody867_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_135

def sourceBody867_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_136

def sourceBody867_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody867_137 sourceBody867_0

def sourceBody867_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_138 sourceBody867_7

def sourceBody867_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_139 sourceBody867_0

def sourceBody867_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_48 sourceBody867_140

def sourceBody867_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_51 sourceBody867_141

def sourceBody867_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_49 sourceBody867_142

def sourceBody867_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_45 sourceBody867_143

def sourceBody867_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody867_144 sourceBody867_0

def sourceBody867_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_145 sourceBody867_7

def sourceBody867_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_146 sourceBody867_0

def sourceBody867_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_48 sourceBody867_147

def sourceBody867_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_47 sourceBody867_148

def sourceBody867_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_43 sourceBody867_149

def sourceBody867_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_31 sourceBody867_150

def sourceBody867_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody867_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 38)

def sourceBody867_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_153 sourceBody867_0

def sourceBody867_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_154 sourceBody867_0

def sourceBody867_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_152 sourceBody867_155

def sourceBody867_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_156

def sourceBody867_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_151 sourceBody867_157

def sourceBody867_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_42 sourceBody867_158

def sourceBody867_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_159

def sourceBody867_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_160

def sourceBody867_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_32 sourceBody867_161

def sourceBody867_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_162

def sourceBody867_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody867_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_163 sourceBody867_164

def sourceBody867_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody867_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody867_165 sourceBody867_166

def sourceBody867_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_167 sourceBody867_7

def sourceBody867_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_168 sourceBody867_0

def sourceBody867_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_31 sourceBody867_169

def sourceBody867_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_30 sourceBody867_170

def sourceBody867_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_26 sourceBody867_171

def sourceBody867_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_25 sourceBody867_172

def sourceBody867_174 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody867_173 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody867_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_174 sourceBody867_7

def sourceBody867_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_7 sourceBody867_175

def sourceBody867_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody867_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 28)

def sourceBody867_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_178 sourceBody867_0

def sourceBody867_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_179 sourceBody867_0

def sourceBody867_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_177 sourceBody867_180

def sourceBody867_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_181

def sourceBody867_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_176 sourceBody867_182

def sourceBody867_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_24 sourceBody867_183

def sourceBody867_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_184

def sourceBody867_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_23 sourceBody867_185

def sourceBody867_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_186

def sourceBody867_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_22 sourceBody867_187

def sourceBody867_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_188

def sourceBody867_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_21 sourceBody867_189

def sourceBody867_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_190

def sourceBody867_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_191 sourceBody867_164

def sourceBody867_193 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody867_192 sourceBody867_166

def sourceBody867_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_193 sourceBody867_7

def sourceBody867_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_194 sourceBody867_0

def sourceBody867_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_20 sourceBody867_195

def sourceBody867_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_19 sourceBody867_196

def sourceBody867_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_15 sourceBody867_197

def sourceBody867_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_14 sourceBody867_198

def sourceBody867_200 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody867_199 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody867_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_200 sourceBody867_7

def sourceBody867_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_7 sourceBody867_201

def sourceBody867_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody867_204 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 34) sourceBody867_16 sourceBody867_17

def sourceBody867_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_204 sourceBody867_7

def sourceBody867_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody867_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody867_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody867_209 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 14)) (some 866) ([16, 34, 10]) (some (16, sourceBody867_208, 867, 15))

def sourceBody867_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_209 sourceBody867_7

def sourceBody867_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_210 sourceBody867_0

def sourceBody867_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_207 sourceBody867_211

def sourceBody867_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_206 sourceBody867_212

def sourceBody867_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_17 sourceBody867_213

def sourceBody867_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_214

def sourceBody867_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_215

def sourceBody867_217 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody867_216 sourceBody867_0

def sourceBody867_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_217 sourceBody867_7

def sourceBody867_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_218 sourceBody867_0

def sourceBody867_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_20 sourceBody867_219

def sourceBody867_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_205 sourceBody867_220

def sourceBody867_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_203 sourceBody867_221

def sourceBody867_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_17 sourceBody867_222

def sourceBody867_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_202 sourceBody867_223

def sourceBody867_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 480#64]))

def sourceBody867_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 16)) (some 861) ([16]) (some (16, sourceBody867_208, 867, 17))

def sourceBody867_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_226 sourceBody867_7

def sourceBody867_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_227 sourceBody867_0

def sourceBody867_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_225 sourceBody867_228

def sourceBody867_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_233 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 10) sourceBody867_232 sourceBody867_230

def sourceBody867_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_233 sourceBody867_7

def sourceBody867_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody867_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody867_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody867_239 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 18)) (some 866) ([34, 10, 28]) (some (34, sourceBody867_238, 867, 19))

def sourceBody867_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_239 sourceBody867_7

def sourceBody867_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_240 sourceBody867_0

def sourceBody867_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_237 sourceBody867_241

def sourceBody867_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_236 sourceBody867_242

def sourceBody867_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_232 sourceBody867_243

def sourceBody867_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_244

def sourceBody867_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_245

def sourceBody867_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody867_246 sourceBody867_0

def sourceBody867_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_247 sourceBody867_7

def sourceBody867_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_248 sourceBody867_0

def sourceBody867_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_235 sourceBody867_249

def sourceBody867_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_234 sourceBody867_250

def sourceBody867_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_231 sourceBody867_251

def sourceBody867_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_230 sourceBody867_252

def sourceBody867_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 488#64]))

def sourceBody867_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 20)) (some 861) ([34]) (some (34, sourceBody867_238, 867, 21))

def sourceBody867_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_255 sourceBody867_7

def sourceBody867_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_256 sourceBody867_0

def sourceBody867_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_254 sourceBody867_257

def sourceBody867_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 28) sourceBody867_260 sourceBody867_24

def sourceBody867_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_261 sourceBody867_7

def sourceBody867_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody867_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody867_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody867_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 22)) (some 866) ([10, 28, 20]) (some (10, sourceBody867_266, 867, 23))

def sourceBody867_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_267 sourceBody867_7

def sourceBody867_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_268 sourceBody867_0

def sourceBody867_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_265 sourceBody867_269

def sourceBody867_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_264 sourceBody867_270

def sourceBody867_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_263 sourceBody867_271

def sourceBody867_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_272

def sourceBody867_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_273

def sourceBody867_275 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody867_274 sourceBody867_0

def sourceBody867_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_275 sourceBody867_7

def sourceBody867_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_276 sourceBody867_0

def sourceBody867_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_25 sourceBody867_277

def sourceBody867_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_262 sourceBody867_278

def sourceBody867_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_259 sourceBody867_279

def sourceBody867_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_24 sourceBody867_280

def sourceBody867_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 496#64]))

def sourceBody867_283 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 24)) (some 861) ([10]) (some (10, sourceBody867_266, 867, 25))

def sourceBody867_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_283 sourceBody867_7

def sourceBody867_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_284 sourceBody867_0

def sourceBody867_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_282 sourceBody867_285

def sourceBody867_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody867_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody867_290 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 20) sourceBody867_289 sourceBody867_287

def sourceBody867_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_290 sourceBody867_7

def sourceBody867_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 28)

def sourceBody867_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody867_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody867_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody867_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 26)) (some 866) ([28, 20, 38]) (some (28, sourceBody867_296, 867, 27))

def sourceBody867_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_297 sourceBody867_7

def sourceBody867_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_298 sourceBody867_0

def sourceBody867_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_295 sourceBody867_299

def sourceBody867_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_294 sourceBody867_300

def sourceBody867_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_293 sourceBody867_301

def sourceBody867_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_302

def sourceBody867_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_303

def sourceBody867_305 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody867_304 sourceBody867_0

def sourceBody867_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_305 sourceBody867_7

def sourceBody867_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_306 sourceBody867_0

def sourceBody867_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_292 sourceBody867_307

def sourceBody867_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_291 sourceBody867_308

def sourceBody867_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_288 sourceBody867_309

def sourceBody867_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_287 sourceBody867_310

def sourceBody867_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 504#64]))

def sourceBody867_313 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 28)) (some 861) ([28]) (some (28, sourceBody867_296, 867, 29))

def sourceBody867_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_313 sourceBody867_7

def sourceBody867_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_314 sourceBody867_0

def sourceBody867_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_312 sourceBody867_315

def sourceBody867_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_318 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 38) sourceBody867_27 sourceBody867_28

def sourceBody867_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_318 sourceBody867_7

def sourceBody867_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody867_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody867_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody867_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody867_324 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody867_0, 867, 30)) (some 866) ([20, 38, 2]) (some (20, sourceBody867_323, 867, 31))

def sourceBody867_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_324 sourceBody867_7

def sourceBody867_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_325 sourceBody867_0

def sourceBody867_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_322 sourceBody867_326

def sourceBody867_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_321 sourceBody867_327

def sourceBody867_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_320 sourceBody867_328

def sourceBody867_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_329

def sourceBody867_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_330

def sourceBody867_332 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody867_331 sourceBody867_0

def sourceBody867_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_332 sourceBody867_7

def sourceBody867_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_333 sourceBody867_0

def sourceBody867_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_31 sourceBody867_334

def sourceBody867_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_319 sourceBody867_335

def sourceBody867_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_317 sourceBody867_336

def sourceBody867_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_28 sourceBody867_337

def sourceBody867_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody867_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_339 sourceBody867_0

def sourceBody867_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_287 sourceBody867_340

def sourceBody867_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_338 sourceBody867_341

def sourceBody867_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_316 sourceBody867_342

def sourceBody867_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_343

def sourceBody867_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_344

def sourceBody867_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_311 sourceBody867_345

def sourceBody867_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_286 sourceBody867_346

def sourceBody867_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_347

def sourceBody867_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_348

def sourceBody867_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_281 sourceBody867_349

def sourceBody867_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_258 sourceBody867_350

def sourceBody867_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_351

def sourceBody867_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_352

def sourceBody867_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_253 sourceBody867_353

def sourceBody867_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_229 sourceBody867_354

def sourceBody867_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_355

def sourceBody867_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_356

def sourceBody867_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_224 sourceBody867_357

def sourceBody867_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_13 sourceBody867_358

def sourceBody867_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_359

def sourceBody867_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_12 sourceBody867_360

def sourceBody867_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_361

def sourceBody867_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_11 sourceBody867_362

def sourceBody867_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_363

def sourceBody867_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_10 sourceBody867_364

def sourceBody867_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_365

def sourceBody867_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_366

def sourceBody867_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_3 sourceBody867_367

def sourceBody867_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_368

def sourceBody867_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_2 sourceBody867_369

def sourceBody867_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_370

def sourceBody867_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_1 sourceBody867_371

def sourceBody867_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody867_0 sourceBody867_372

def source867 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (867, 1, sourceBody867_373)
end InitECandidate.Proofs.WordStages
