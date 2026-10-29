import InitECandidate.Proofs.WordStages.Source849
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody865_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody865_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody865_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody865_0, 865, 2)) (some 387) ([]) (some (50, sourceBody865_1, 865, 3))

def sourceBody865_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody865_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_2 sourceBody865_3

def sourceBody865_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_4 sourceBody865_0

def sourceBody865_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_5

def sourceBody865_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_6

def sourceBody865_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody865_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody865_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody865_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 20)

def sourceBody865_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody865_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 28 (Flapjack.WordRegImm.reg 58) sourceBody865_13 sourceBody865_14

def sourceBody865_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_15 sourceBody865_3

def sourceBody865_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody865_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody865_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody865_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 58 58 42 28))

def sourceBody865_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_20 sourceBody865_0

def sourceBody865_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_19 sourceBody865_21

def sourceBody865_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_18 sourceBody865_22

def sourceBody865_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.var 58])

def sourceBody865_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64])

def sourceBody865_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 38 0#64))

def sourceBody865_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody865_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody865_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody865_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 54 (Flapjack.WordLangAddr.addr 54 0#64))

def sourceBody865_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody865_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody865_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody865_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def sourceBody865_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody865_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 32 (Flapjack.WordLangAddr.addr 32 0#64))

def sourceBody865_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody865_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 62 (Flapjack.WordLangAddr.addr 62 0#64))

def sourceBody865_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 36#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody865_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody865_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_40 sourceBody865_0

def sourceBody865_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_39 sourceBody865_41

def sourceBody865_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_38 sourceBody865_42

def sourceBody865_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_37 sourceBody865_43

def sourceBody865_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_36 sourceBody865_44

def sourceBody865_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_35 sourceBody865_45

def sourceBody865_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_34 sourceBody865_46

def sourceBody865_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_33 sourceBody865_47

def sourceBody865_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_32 sourceBody865_48

def sourceBody865_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_31 sourceBody865_49

def sourceBody865_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_30 sourceBody865_50

def sourceBody865_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_29 sourceBody865_51

def sourceBody865_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_28 sourceBody865_52

def sourceBody865_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_27 sourceBody865_53

def sourceBody865_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_26 sourceBody865_54

def sourceBody865_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_25 sourceBody865_55

def sourceBody865_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 38,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 46,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody865_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 36)

def sourceBody865_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody865_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 52)

def sourceBody865_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody865_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1000000000#64)

def sourceBody865_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody865_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 30, 60, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody865_0, 865, 4)) (some 120) ([40, 26, 56, 18, 48, 34, 64, 4]) (some (40, sourceBody865_69, 865, 5))

def sourceBody865_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_70 sourceBody865_3

def sourceBody865_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_71 sourceBody865_0

def sourceBody865_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_68 sourceBody865_72

def sourceBody865_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_67 sourceBody865_73

def sourceBody865_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_66 sourceBody865_74

def sourceBody865_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_65 sourceBody865_75

def sourceBody865_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_64 sourceBody865_76

def sourceBody865_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_63 sourceBody865_77

def sourceBody865_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_62 sourceBody865_78

def sourceBody865_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_61 sourceBody865_79

def sourceBody865_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody865_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 44)

def sourceBody865_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody865_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 60)

def sourceBody865_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody865_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody865_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody865_0, 865, 6)) (some 428) ([26, 56, 18, 48, 34]) (some (26, sourceBody865_86, 865, 7))

def sourceBody865_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_87 sourceBody865_3

def sourceBody865_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_88 sourceBody865_0

def sourceBody865_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_85 sourceBody865_89

def sourceBody865_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_84 sourceBody865_90

def sourceBody865_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_83 sourceBody865_91

def sourceBody865_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_82 sourceBody865_92

def sourceBody865_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_81 sourceBody865_93

def sourceBody865_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_94

def sourceBody865_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_95

def sourceBody865_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody865_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 26)

def sourceBody865_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 56

def sourceBody865_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_100 sourceBody865_0

def sourceBody865_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_99 sourceBody865_101

def sourceBody865_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_102 sourceBody865_0

def sourceBody865_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_98 sourceBody865_103

def sourceBody865_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_104

def sourceBody865_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_97 sourceBody865_105

def sourceBody865_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_106

def sourceBody865_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_96 sourceBody865_107

def sourceBody865_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody865_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 40)

def sourceBody865_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_110 sourceBody865_0

def sourceBody865_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_111 sourceBody865_0

def sourceBody865_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_109 sourceBody865_112

def sourceBody865_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_113

def sourceBody865_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_108 sourceBody865_114

def sourceBody865_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_80 sourceBody865_115

def sourceBody865_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_116

def sourceBody865_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_117

def sourceBody865_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_118

def sourceBody865_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_119

def sourceBody865_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_120

def sourceBody865_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_121

def sourceBody865_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_122

def sourceBody865_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_123

def sourceBody865_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_60 sourceBody865_124

def sourceBody865_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_125

def sourceBody865_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_59 sourceBody865_126

def sourceBody865_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_127

def sourceBody865_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_58 sourceBody865_128

def sourceBody865_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_129

def sourceBody865_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_57 sourceBody865_130

def sourceBody865_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_56 sourceBody865_131

def sourceBody865_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_24 sourceBody865_132

def sourceBody865_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_23 sourceBody865_133

def sourceBody865_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody865_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_134 sourceBody865_135

def sourceBody865_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody865_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody865_136 sourceBody865_137

def sourceBody865_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_138 sourceBody865_3

def sourceBody865_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_139 sourceBody865_0

def sourceBody865_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_17 sourceBody865_140

def sourceBody865_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_16 sourceBody865_141

def sourceBody865_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_12 sourceBody865_142

def sourceBody865_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_11 sourceBody865_143

def sourceBody865_145 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody865_144 (Flapjack.Spt.ls PUnit.unit)

def sourceBody865_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_145 sourceBody865_3

def sourceBody865_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_3 sourceBody865_146

def sourceBody865_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody865_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody865_0, 865, 8)) (some 455) ([]) (some (28, sourceBody865_148, 865, 9))

def sourceBody865_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_149 sourceBody865_3

def sourceBody865_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_150 sourceBody865_0

def sourceBody865_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_151

def sourceBody865_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_152

def sourceBody865_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_147 sourceBody865_153

def sourceBody865_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody865_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody865_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_156 sourceBody865_0

def sourceBody865_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_155 sourceBody865_157

def sourceBody865_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_154 sourceBody865_158

def sourceBody865_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_10 sourceBody865_159

def sourceBody865_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_160

def sourceBody865_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_9 sourceBody865_161

def sourceBody865_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_162

def sourceBody865_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_8 sourceBody865_163

def sourceBody865_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_0 sourceBody865_164

def sourceBody865_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody865_7 sourceBody865_165

def source865 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (865, 2, sourceBody865_166)
end InitECandidate.Proofs.WordStages
