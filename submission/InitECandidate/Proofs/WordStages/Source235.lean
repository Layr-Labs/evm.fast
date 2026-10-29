import InitECandidate.Proofs.WordStages.Source219
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody235_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody235_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody235_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody235_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 2)) (some 97) ([18]) (some (18, sourceBody235_2, 235, 3))

def sourceBody235_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody235_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_3 sourceBody235_4

def sourceBody235_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_5 sourceBody235_0

def sourceBody235_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_1 sourceBody235_6

def sourceBody235_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody235_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody235_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 4)) (some 97) ([32]) (some (32, sourceBody235_9, 235, 5))

def sourceBody235_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_10 sourceBody235_4

def sourceBody235_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_11 sourceBody235_0

def sourceBody235_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_8 sourceBody235_12

def sourceBody235_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody235_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody235_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody235_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 6)) (some 93) ([12, 24]) (some (12, sourceBody235_16, 235, 7))

def sourceBody235_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_17 sourceBody235_4

def sourceBody235_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_18 sourceBody235_0

def sourceBody235_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_15 sourceBody235_19

def sourceBody235_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_14 sourceBody235_20

def sourceBody235_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody235_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody235_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody235_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody235_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 16) sourceBody235_24 sourceBody235_25

def sourceBody235_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_26 sourceBody235_4

def sourceBody235_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody235_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody235_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody235_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody235_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody235_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody235_0, 235, 8)) (some 77) ([24, 16, 30]) (some (24, sourceBody235_32, 235, 9))

def sourceBody235_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_33 sourceBody235_4

def sourceBody235_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_34 sourceBody235_0

def sourceBody235_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_31 sourceBody235_35

def sourceBody235_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_30 sourceBody235_36

def sourceBody235_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_29 sourceBody235_37

def sourceBody235_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_38

def sourceBody235_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_39

def sourceBody235_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody235_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody235_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_42 sourceBody235_0

def sourceBody235_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_41 sourceBody235_43

def sourceBody235_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_40 sourceBody235_44

def sourceBody235_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody235_45 sourceBody235_0

def sourceBody235_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_46 sourceBody235_4

def sourceBody235_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_47 sourceBody235_0

def sourceBody235_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_28 sourceBody235_48

def sourceBody235_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_27 sourceBody235_49

def sourceBody235_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_23 sourceBody235_50

def sourceBody235_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_22 sourceBody235_51

def sourceBody235_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 10)) (some 69) ([]) (some (24, sourceBody235_32, 235, 11))

def sourceBody235_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_53 sourceBody235_4

def sourceBody235_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_54 sourceBody235_0

def sourceBody235_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.const 1#64)
    (Flapjack.WordLangExpHOL.var 18))

def sourceBody235_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody235_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody235_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 12)) (some 68) ([30]) (some (30, sourceBody235_58, 235, 13))

def sourceBody235_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_59 sourceBody235_4

def sourceBody235_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_60 sourceBody235_0

def sourceBody235_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_57 sourceBody235_61

def sourceBody235_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody235_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody235_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody235_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody235_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 14)) (some 77) ([14, 28, 20]) (some (14, sourceBody235_66, 235, 15))

def sourceBody235_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_67 sourceBody235_4

def sourceBody235_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_68 sourceBody235_0

def sourceBody235_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_65 sourceBody235_69

def sourceBody235_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_64 sourceBody235_70

def sourceBody235_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_63 sourceBody235_71

def sourceBody235_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_72

def sourceBody235_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_73

def sourceBody235_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody235_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 4])
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody235_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 16)) (some 78) ([14, 28]) (some (14, sourceBody235_66, 235, 17))

def sourceBody235_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_77 sourceBody235_4

def sourceBody235_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_78 sourceBody235_0

def sourceBody235_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_76 sourceBody235_79

def sourceBody235_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_75 sourceBody235_80

def sourceBody235_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_81

def sourceBody235_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_82

def sourceBody235_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_74 sourceBody235_83

def sourceBody235_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody235_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody235_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody235_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 28 (Flapjack.WordRegImm.reg 20) sourceBody235_85 sourceBody235_87

def sourceBody235_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_88 sourceBody235_4

def sourceBody235_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody235_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 30)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody235_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody235_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody235_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody235_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 34 (Flapjack.WordRegImm.reg 10) sourceBody235_93 sourceBody235_94

def sourceBody235_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_95 sourceBody235_4

def sourceBody235_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody235_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 6#64)])

def sourceBody235_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 6#64),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody235_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 28)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody235_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody235_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 18)) (some 154) ([34, 10, 22]) (some (34, sourceBody235_101, 235, 19))

def sourceBody235_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_102 sourceBody235_4

def sourceBody235_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_103 sourceBody235_0

def sourceBody235_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_100 sourceBody235_104

def sourceBody235_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_99 sourceBody235_105

def sourceBody235_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_98 sourceBody235_106

def sourceBody235_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_107

def sourceBody235_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_108

def sourceBody235_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody235_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody235_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_111 sourceBody235_0

def sourceBody235_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_112 sourceBody235_0

def sourceBody235_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_110 sourceBody235_113

def sourceBody235_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_114

def sourceBody235_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_109 sourceBody235_115

def sourceBody235_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody235_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_116 sourceBody235_117

def sourceBody235_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody235_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody235_118 sourceBody235_119

def sourceBody235_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_120 sourceBody235_4

def sourceBody235_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_121 sourceBody235_0

def sourceBody235_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_97 sourceBody235_122

def sourceBody235_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_96 sourceBody235_123

def sourceBody235_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_92 sourceBody235_124

def sourceBody235_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_90 sourceBody235_125

def sourceBody235_127 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody235_126 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody235_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_127 sourceBody235_4

def sourceBody235_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_4 sourceBody235_128

def sourceBody235_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody235_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_130 sourceBody235_0

def sourceBody235_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_131 sourceBody235_0

def sourceBody235_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_129 sourceBody235_132

def sourceBody235_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_87 sourceBody235_133

def sourceBody235_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_134

def sourceBody235_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_91 sourceBody235_135

def sourceBody235_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_136

def sourceBody235_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_137 sourceBody235_117

def sourceBody235_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody235_138 sourceBody235_119

def sourceBody235_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_139 sourceBody235_4

def sourceBody235_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_140 sourceBody235_0

def sourceBody235_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_90 sourceBody235_141

def sourceBody235_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_89 sourceBody235_142

def sourceBody235_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_86 sourceBody235_143

def sourceBody235_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_85 sourceBody235_144

def sourceBody235_146 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody235_145 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody235_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_146 sourceBody235_4

def sourceBody235_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_4 sourceBody235_147

def sourceBody235_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody235_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody235_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody235_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody235_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody235_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 34) sourceBody235_152 sourceBody235_153

def sourceBody235_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_154 sourceBody235_4

def sourceBody235_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody235_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody235_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody235_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody235_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody235_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 20)) (some 154) ([20, 34, 10]) (some (20, sourceBody235_160, 235, 21))

def sourceBody235_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_161 sourceBody235_4

def sourceBody235_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_162 sourceBody235_0

def sourceBody235_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_159 sourceBody235_163

def sourceBody235_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_158 sourceBody235_164

def sourceBody235_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_157 sourceBody235_165

def sourceBody235_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_166

def sourceBody235_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_167

def sourceBody235_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody235_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody235_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_170 sourceBody235_0

def sourceBody235_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_171 sourceBody235_0

def sourceBody235_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_169 sourceBody235_172

def sourceBody235_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_173

def sourceBody235_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_168 sourceBody235_174

def sourceBody235_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_175 sourceBody235_117

def sourceBody235_177 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody235_176 sourceBody235_119

def sourceBody235_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_177 sourceBody235_4

def sourceBody235_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_178 sourceBody235_0

def sourceBody235_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_156 sourceBody235_179

def sourceBody235_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_155 sourceBody235_180

def sourceBody235_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_151 sourceBody235_181

def sourceBody235_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_150 sourceBody235_182

def sourceBody235_184 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody235_183 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody235_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_184 sourceBody235_4

def sourceBody235_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_4 sourceBody235_185

def sourceBody235_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody235_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody235_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody235_190 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody235_0, 235, 22)) (some 77) ([20, 34, 10]) (some (20, sourceBody235_160, 235, 23))

def sourceBody235_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_190 sourceBody235_4

def sourceBody235_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_191 sourceBody235_0

def sourceBody235_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_189 sourceBody235_192

def sourceBody235_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_188 sourceBody235_193

def sourceBody235_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_187 sourceBody235_194

def sourceBody235_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_195

def sourceBody235_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_196

def sourceBody235_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_186 sourceBody235_197

def sourceBody235_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody235_200 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody235_0, 235, 24)) (some 70) ([20]) (some (20, sourceBody235_160, 235, 25))

def sourceBody235_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_200 sourceBody235_4

def sourceBody235_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_201 sourceBody235_0

def sourceBody235_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_199 sourceBody235_202

def sourceBody235_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_203

def sourceBody235_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_204

def sourceBody235_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_198 sourceBody235_205

def sourceBody235_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody235_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_207 sourceBody235_0

def sourceBody235_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_87 sourceBody235_208

def sourceBody235_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_206 sourceBody235_209

def sourceBody235_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_149 sourceBody235_210

def sourceBody235_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_211

def sourceBody235_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_148 sourceBody235_212

def sourceBody235_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_28 sourceBody235_213

def sourceBody235_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_214

def sourceBody235_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_84 sourceBody235_215

def sourceBody235_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_62 sourceBody235_216

def sourceBody235_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_217

def sourceBody235_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_218

def sourceBody235_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_56 sourceBody235_219

def sourceBody235_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_220

def sourceBody235_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_55 sourceBody235_221

def sourceBody235_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_222

def sourceBody235_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_223

def sourceBody235_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_52 sourceBody235_224

def sourceBody235_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_21 sourceBody235_225

def sourceBody235_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_226

def sourceBody235_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_227

def sourceBody235_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_13 sourceBody235_228

def sourceBody235_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_229

def sourceBody235_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_230

def sourceBody235_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_7 sourceBody235_231

def sourceBody235_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_232

def sourceBody235_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody235_0 sourceBody235_233

def source235 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (235, 5, sourceBody235_234)
end InitECandidate.Proofs.WordStages
