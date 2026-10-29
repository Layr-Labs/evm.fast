import InitECandidate.Proofs.WordStages.Source265
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody281_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody281_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody281_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]))

def sourceBody281_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody281_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody281_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody281_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody281_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 58])

def sourceBody281_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody281_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1835008#64)

def sourceBody281_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody281_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody281_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 64) sourceBody281_10 sourceBody281_11

def sourceBody281_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody281_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_12 sourceBody281_13

def sourceBody281_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody281_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody281_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44]

def sourceBody281_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_17 sourceBody281_0

def sourceBody281_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_16 sourceBody281_18

def sourceBody281_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody281_19 sourceBody281_0

def sourceBody281_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_20 sourceBody281_13

def sourceBody281_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_21 sourceBody281_0

def sourceBody281_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_15 sourceBody281_22

def sourceBody281_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_14 sourceBody281_23

def sourceBody281_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_9 sourceBody281_24

def sourceBody281_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_8 sourceBody281_25

def sourceBody281_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 22)

def sourceBody281_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody281_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 28, 64, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 2)) (some 280) ([54]) (some (54, sourceBody281_28, 281, 3))

def sourceBody281_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_29 sourceBody281_13

def sourceBody281_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_30 sourceBody281_0

def sourceBody281_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_27 sourceBody281_31

def sourceBody281_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 131072#64)

def sourceBody281_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody281_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 36, 72, 6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 4)) (some 99) ([42]) (some (42, sourceBody281_34, 281, 5))

def sourceBody281_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_35 sourceBody281_13

def sourceBody281_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_36 sourceBody281_0

def sourceBody281_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_33 sourceBody281_37

def sourceBody281_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 54)

def sourceBody281_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody281_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 72)

def sourceBody281_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody281_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody281_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody281_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 64)

def sourceBody281_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody281_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody281_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 26, 62, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 6)) (some 120) ([52, 34, 70, 10, 46, 30, 66, 20]) (some (52, sourceBody281_47, 281, 7))

def sourceBody281_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_48 sourceBody281_13

def sourceBody281_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_49 sourceBody281_0

def sourceBody281_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_46 sourceBody281_50

def sourceBody281_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_45 sourceBody281_51

def sourceBody281_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_44 sourceBody281_52

def sourceBody281_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_43 sourceBody281_53

def sourceBody281_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_42 sourceBody281_54

def sourceBody281_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_41 sourceBody281_55

def sourceBody281_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_40 sourceBody281_56

def sourceBody281_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_39 sourceBody281_57

def sourceBody281_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 8192#64)

def sourceBody281_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody281_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([52, 34, 70, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 8)) (some 99) ([46]) (some (46, sourceBody281_60, 281, 9))

def sourceBody281_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_61 sourceBody281_13

def sourceBody281_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_62 sourceBody281_0

def sourceBody281_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_59 sourceBody281_63

def sourceBody281_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 52)

def sourceBody281_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody281_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 70)

def sourceBody281_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody281_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody281_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def sourceBody281_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 32)

def sourceBody281_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 68)

def sourceBody281_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody281_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 30, 66, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 10)) (some 120) ([56, 38, 74, 4, 40, 24, 60, 14]) (some (56, sourceBody281_73, 281, 11))

def sourceBody281_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_74 sourceBody281_13

def sourceBody281_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_75 sourceBody281_0

def sourceBody281_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_72 sourceBody281_76

def sourceBody281_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_71 sourceBody281_77

def sourceBody281_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_70 sourceBody281_78

def sourceBody281_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_69 sourceBody281_79

def sourceBody281_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_68 sourceBody281_80

def sourceBody281_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_67 sourceBody281_81

def sourceBody281_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_66 sourceBody281_82

def sourceBody281_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_65 sourceBody281_83

def sourceBody281_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def sourceBody281_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 30)

def sourceBody281_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 66)

def sourceBody281_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody281_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody281_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 26)

def sourceBody281_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 62)

def sourceBody281_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def sourceBody281_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody281_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 12)) (some 107) ([38, 74, 4, 40, 24, 60, 14, 50]) (some (38, sourceBody281_93, 281, 13))

def sourceBody281_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_94 sourceBody281_13

def sourceBody281_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_95 sourceBody281_0

def sourceBody281_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_92 sourceBody281_96

def sourceBody281_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_91 sourceBody281_97

def sourceBody281_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_90 sourceBody281_98

def sourceBody281_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_89 sourceBody281_99

def sourceBody281_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_88 sourceBody281_100

def sourceBody281_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_87 sourceBody281_101

def sourceBody281_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_86 sourceBody281_102

def sourceBody281_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_85 sourceBody281_103

def sourceBody281_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 56)

def sourceBody281_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody281_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody281_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody281_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 74 (Flapjack.WordRegImm.reg 4) sourceBody281_107 sourceBody281_108

def sourceBody281_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_109 sourceBody281_13

def sourceBody281_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 74)

def sourceBody281_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 58)

def sourceBody281_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 21#64, Flapjack.WordLangExpHOL.const 14#64])

def sourceBody281_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 40 40 74 4))

def sourceBody281_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 40)

def sourceBody281_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 21#64)

def sourceBody281_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody281_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody281_0, 281, 14)) (some 95) ([24, 60]) (some (74, sourceBody281_117, 281, 15))

def sourceBody281_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_118 sourceBody281_13

def sourceBody281_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_119 sourceBody281_0

def sourceBody281_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_116 sourceBody281_120

def sourceBody281_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_115 sourceBody281_121

def sourceBody281_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_114 sourceBody281_122

def sourceBody281_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_113 sourceBody281_123

def sourceBody281_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_112 sourceBody281_124

def sourceBody281_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 38])

def sourceBody281_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [74]

def sourceBody281_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_127 sourceBody281_0

def sourceBody281_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_126 sourceBody281_128

def sourceBody281_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_125 sourceBody281_129

def sourceBody281_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_130

def sourceBody281_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_131

def sourceBody281_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody281_132 sourceBody281_0

def sourceBody281_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_133 sourceBody281_13

def sourceBody281_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_134 sourceBody281_0

def sourceBody281_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_111 sourceBody281_135

def sourceBody281_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_110 sourceBody281_136

def sourceBody281_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_106 sourceBody281_137

def sourceBody281_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_105 sourceBody281_138

def sourceBody281_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1835008#64])

def sourceBody281_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody281_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_141 sourceBody281_0

def sourceBody281_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_140 sourceBody281_142

def sourceBody281_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_139 sourceBody281_143

def sourceBody281_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_104 sourceBody281_144

def sourceBody281_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_145

def sourceBody281_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_146

def sourceBody281_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_84 sourceBody281_147

def sourceBody281_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_148

def sourceBody281_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_149

def sourceBody281_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_150

def sourceBody281_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_151

def sourceBody281_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_152

def sourceBody281_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_153

def sourceBody281_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_154

def sourceBody281_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_155

def sourceBody281_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_64 sourceBody281_156

def sourceBody281_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_157

def sourceBody281_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_158

def sourceBody281_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_159

def sourceBody281_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_160

def sourceBody281_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_161

def sourceBody281_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_162

def sourceBody281_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_163

def sourceBody281_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_164

def sourceBody281_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_58 sourceBody281_165

def sourceBody281_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_166

def sourceBody281_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_167

def sourceBody281_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_168

def sourceBody281_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_169

def sourceBody281_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_170

def sourceBody281_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_171

def sourceBody281_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_172

def sourceBody281_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_173

def sourceBody281_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_38 sourceBody281_174

def sourceBody281_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_175

def sourceBody281_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_176

def sourceBody281_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_177

def sourceBody281_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_178

def sourceBody281_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_179

def sourceBody281_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_180

def sourceBody281_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_181

def sourceBody281_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_182

def sourceBody281_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_32 sourceBody281_183

def sourceBody281_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_184

def sourceBody281_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_185

def sourceBody281_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_186

def sourceBody281_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_187

def sourceBody281_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_188

def sourceBody281_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_189

def sourceBody281_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_190

def sourceBody281_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_191

def sourceBody281_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_26 sourceBody281_192

def sourceBody281_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_7 sourceBody281_193

def sourceBody281_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_194

def sourceBody281_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_6 sourceBody281_195

def sourceBody281_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_196

def sourceBody281_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_5 sourceBody281_197

def sourceBody281_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_198

def sourceBody281_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_4 sourceBody281_199

def sourceBody281_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_200

def sourceBody281_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_3 sourceBody281_201

def sourceBody281_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_202

def sourceBody281_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_2 sourceBody281_203

def sourceBody281_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_204

def sourceBody281_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_1 sourceBody281_205

def sourceBody281_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody281_0 sourceBody281_206

def source281 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (281, 2, sourceBody281_207)
end InitECandidate.Proofs.WordStages
