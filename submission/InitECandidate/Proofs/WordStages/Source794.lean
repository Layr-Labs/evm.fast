import InitECandidate.Proofs.WordStages.Source778
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody794_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody794_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody794_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody794_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 2)) (some 767) ([50]) (some (50, sourceBody794_2, 794, 3))

def sourceBody794_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody794_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_3 sourceBody794_4

def sourceBody794_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_5 sourceBody794_0

def sourceBody794_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_1 sourceBody794_6

def sourceBody794_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody794_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody794_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody794_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody794_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 66) sourceBody794_10 sourceBody794_11

def sourceBody794_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_12 sourceBody794_4

def sourceBody794_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody794_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody794_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [50]

def sourceBody794_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_16 sourceBody794_0

def sourceBody794_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_15 sourceBody794_17

def sourceBody794_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody794_18 sourceBody794_0

def sourceBody794_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_19 sourceBody794_4

def sourceBody794_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_20 sourceBody794_0

def sourceBody794_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_14 sourceBody794_21

def sourceBody794_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_13 sourceBody794_22

def sourceBody794_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_9 sourceBody794_23

def sourceBody794_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_8 sourceBody794_24

def sourceBody794_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody794_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody794_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 4)) (some 779) ([34]) (some (34, sourceBody794_27, 794, 5))

def sourceBody794_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_28 sourceBody794_4

def sourceBody794_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_29 sourceBody794_0

def sourceBody794_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_26 sourceBody794_30

def sourceBody794_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 50)

def sourceBody794_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody794_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody794_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 66 (Flapjack.WordRegImm.reg 12) sourceBody794_9 sourceBody794_34

def sourceBody794_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_35 sourceBody794_4

def sourceBody794_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 66)

def sourceBody794_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody794_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_38 sourceBody794_0

def sourceBody794_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_11 sourceBody794_39

def sourceBody794_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody794_40 sourceBody794_0

def sourceBody794_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_41 sourceBody794_4

def sourceBody794_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_42 sourceBody794_0

def sourceBody794_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_37 sourceBody794_43

def sourceBody794_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_36 sourceBody794_44

def sourceBody794_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_33 sourceBody794_45

def sourceBody794_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_32 sourceBody794_46

def sourceBody794_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody794_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 6)) (some 69) ([]) (some (66, sourceBody794_48, 794, 7))

def sourceBody794_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_49 sourceBody794_4

def sourceBody794_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_50 sourceBody794_0

def sourceBody794_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody794_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody794_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 8)) (some 68) ([12]) (some (12, sourceBody794_53, 794, 9))

def sourceBody794_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_54 sourceBody794_4

def sourceBody794_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_55 sourceBody794_0

def sourceBody794_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_52 sourceBody794_56

def sourceBody794_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody794_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody794_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 10)) (some 68) ([46]) (some (46, sourceBody794_59, 794, 11))

def sourceBody794_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_60 sourceBody794_4

def sourceBody794_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_61 sourceBody794_0

def sourceBody794_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_58 sourceBody794_62

def sourceBody794_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody794_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody794_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 12)) (some 68) ([30]) (some (30, sourceBody794_65, 794, 13))

def sourceBody794_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_66 sourceBody794_4

def sourceBody794_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_67 sourceBody794_0

def sourceBody794_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_64 sourceBody794_68

def sourceBody794_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 66)

def sourceBody794_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody794_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody794_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 14)) (some 773) ([62, 22]) (some (62, sourceBody794_72, 794, 15))

def sourceBody794_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_73 sourceBody794_4

def sourceBody794_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_74 sourceBody794_0

def sourceBody794_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_71 sourceBody794_75

def sourceBody794_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_70 sourceBody794_76

def sourceBody794_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_77

def sourceBody794_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_78

def sourceBody794_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 12)

def sourceBody794_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody794_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 16)) (some 785) ([62, 22]) (some (62, sourceBody794_72, 794, 17))

def sourceBody794_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_82 sourceBody794_4

def sourceBody794_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_83 sourceBody794_0

def sourceBody794_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_81 sourceBody794_84

def sourceBody794_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_80 sourceBody794_85

def sourceBody794_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_86

def sourceBody794_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_87

def sourceBody794_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_79 sourceBody794_88

def sourceBody794_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 66))

def sourceBody794_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody794_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody794_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody794_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody794_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody794_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody794_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody794_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody794_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody794_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody794_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody794_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 46)

def sourceBody794_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody794_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 62)

def sourceBody794_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody794_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 54)

def sourceBody794_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody794_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 70)

def sourceBody794_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 10)

def sourceBody794_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 44)

def sourceBody794_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody794_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 60)

def sourceBody794_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody794_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 52)

def sourceBody794_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody794_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody794_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 18)) (some 793) ([68, 14, 48, 32, 64, 24, 56, 40, 72, 8, 42, 26, 58, 18]) (some (68, sourceBody794_116, 794, 19))

def sourceBody794_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_117 sourceBody794_4

def sourceBody794_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_118 sourceBody794_0

def sourceBody794_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_115 sourceBody794_119

def sourceBody794_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_114 sourceBody794_120

def sourceBody794_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_113 sourceBody794_121

def sourceBody794_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_112 sourceBody794_122

def sourceBody794_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_111 sourceBody794_123

def sourceBody794_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_110 sourceBody794_124

def sourceBody794_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_109 sourceBody794_125

def sourceBody794_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_108 sourceBody794_126

def sourceBody794_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_107 sourceBody794_127

def sourceBody794_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_106 sourceBody794_128

def sourceBody794_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_105 sourceBody794_129

def sourceBody794_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_104 sourceBody794_130

def sourceBody794_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_103 sourceBody794_131

def sourceBody794_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_102 sourceBody794_132

def sourceBody794_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_133

def sourceBody794_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_134

def sourceBody794_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 2)

def sourceBody794_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody794_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 46)

def sourceBody794_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody794_0, 794, 20)) (some 758) ([68, 14, 48]) (some (68, sourceBody794_116, 794, 21))

def sourceBody794_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_139 sourceBody794_4

def sourceBody794_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_140 sourceBody794_0

def sourceBody794_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_138 sourceBody794_141

def sourceBody794_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_137 sourceBody794_142

def sourceBody794_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_136 sourceBody794_143

def sourceBody794_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_144

def sourceBody794_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_145

def sourceBody794_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_135 sourceBody794_146

def sourceBody794_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 34)

def sourceBody794_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody794_0, 794, 22)) (some 70) ([68]) (some (68, sourceBody794_116, 794, 23))

def sourceBody794_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_149 sourceBody794_4

def sourceBody794_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_150 sourceBody794_0

def sourceBody794_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_148 sourceBody794_151

def sourceBody794_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_152

def sourceBody794_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_153

def sourceBody794_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_147 sourceBody794_154

def sourceBody794_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody794_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody794_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_157 sourceBody794_0

def sourceBody794_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_156 sourceBody794_158

def sourceBody794_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_155 sourceBody794_159

def sourceBody794_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_101 sourceBody794_160

def sourceBody794_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_161

def sourceBody794_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_100 sourceBody794_162

def sourceBody794_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_163

def sourceBody794_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_99 sourceBody794_164

def sourceBody794_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_165

def sourceBody794_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_98 sourceBody794_166

def sourceBody794_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_167

def sourceBody794_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_97 sourceBody794_168

def sourceBody794_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_169

def sourceBody794_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_96 sourceBody794_170

def sourceBody794_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_171

def sourceBody794_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_95 sourceBody794_172

def sourceBody794_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_173

def sourceBody794_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_94 sourceBody794_174

def sourceBody794_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_175

def sourceBody794_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_93 sourceBody794_176

def sourceBody794_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_177

def sourceBody794_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_92 sourceBody794_178

def sourceBody794_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_179

def sourceBody794_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_91 sourceBody794_180

def sourceBody794_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_181

def sourceBody794_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_90 sourceBody794_182

def sourceBody794_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_183

def sourceBody794_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_89 sourceBody794_184

def sourceBody794_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_69 sourceBody794_185

def sourceBody794_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_186

def sourceBody794_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_187

def sourceBody794_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_63 sourceBody794_188

def sourceBody794_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_189

def sourceBody794_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_190

def sourceBody794_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_57 sourceBody794_191

def sourceBody794_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_192

def sourceBody794_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_193

def sourceBody794_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_51 sourceBody794_194

def sourceBody794_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_195

def sourceBody794_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_196

def sourceBody794_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_47 sourceBody794_197

def sourceBody794_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_31 sourceBody794_198

def sourceBody794_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_199

def sourceBody794_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_200

def sourceBody794_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_25 sourceBody794_201

def sourceBody794_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_7 sourceBody794_202

def sourceBody794_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_203

def sourceBody794_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody794_0 sourceBody794_204

def source794 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (794, 4, sourceBody794_205)
end InitECandidate.Proofs.WordStages
