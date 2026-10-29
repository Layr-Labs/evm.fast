import InitECandidate.Proofs.WordStages.Source757
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody773_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody773_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody773_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody773_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody773_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody773_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody773_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody773_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 60)

def sourceBody773_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody773_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def sourceBody773_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody773_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 70)

def sourceBody773_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody773_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody773_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 28, 66, 20, 56, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody773_0, 773, 2)) (some 721) ([74, 8, 44, 26, 64, 18]) (some (74, sourceBody773_13, 773, 3))

def sourceBody773_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody773_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_14 sourceBody773_15

def sourceBody773_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_16 sourceBody773_0

def sourceBody773_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_12 sourceBody773_17

def sourceBody773_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_11 sourceBody773_18

def sourceBody773_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_10 sourceBody773_19

def sourceBody773_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_9 sourceBody773_20

def sourceBody773_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_8 sourceBody773_21

def sourceBody773_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_7 sourceBody773_22

def sourceBody773_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def sourceBody773_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody773_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody773_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody773_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody773_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody773_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody773_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody773_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody773_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody773_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody773_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody773_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 74)

def sourceBody773_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody773_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 44)

def sourceBody773_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def sourceBody773_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 64)

def sourceBody773_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody773_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody773_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody773_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 66)

def sourceBody773_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody773_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def sourceBody773_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody773_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody773_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 8, 44, 26, 64, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody773_0, 773, 4)) (some 714) ([68, 22, 58, 40, 76, 6, 42, 24, 62, 16, 52, 34]) (some (68, sourceBody773_48, 773, 5))

def sourceBody773_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_49 sourceBody773_15

def sourceBody773_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_50 sourceBody773_0

def sourceBody773_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_47 sourceBody773_51

def sourceBody773_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_46 sourceBody773_52

def sourceBody773_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_45 sourceBody773_53

def sourceBody773_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_44 sourceBody773_54

def sourceBody773_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_43 sourceBody773_55

def sourceBody773_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_42 sourceBody773_56

def sourceBody773_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_41 sourceBody773_57

def sourceBody773_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_40 sourceBody773_58

def sourceBody773_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_39 sourceBody773_59

def sourceBody773_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_38 sourceBody773_60

def sourceBody773_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_37 sourceBody773_61

def sourceBody773_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_36 sourceBody773_62

def sourceBody773_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 54)

def sourceBody773_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 36)

def sourceBody773_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 72)

def sourceBody773_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody773_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 48)

def sourceBody773_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody773_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 36, 72, 12, 48, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody773_0, 773, 6)) (some 714) ([68, 22, 58, 40, 76, 6, 42, 24, 62, 16, 52, 34]) (some (68, sourceBody773_48, 773, 7))

def sourceBody773_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_70 sourceBody773_15

def sourceBody773_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_71 sourceBody773_0

def sourceBody773_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_47 sourceBody773_72

def sourceBody773_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_46 sourceBody773_73

def sourceBody773_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_45 sourceBody773_74

def sourceBody773_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_44 sourceBody773_75

def sourceBody773_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_43 sourceBody773_76

def sourceBody773_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_42 sourceBody773_77

def sourceBody773_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_69 sourceBody773_78

def sourceBody773_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_68 sourceBody773_79

def sourceBody773_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_67 sourceBody773_80

def sourceBody773_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_66 sourceBody773_81

def sourceBody773_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_65 sourceBody773_82

def sourceBody773_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_64 sourceBody773_83

def sourceBody773_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_63 sourceBody773_84

def sourceBody773_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 2)

def sourceBody773_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 74)

def sourceBody773_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def sourceBody773_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody773_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 26)

def sourceBody773_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 64)

def sourceBody773_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 18)

def sourceBody773_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody773_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 68) 24

def sourceBody773_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_94 sourceBody773_0

def sourceBody773_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_93 sourceBody773_95

def sourceBody773_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def sourceBody773_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 8#64])
  24

def sourceBody773_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_98 sourceBody773_0

def sourceBody773_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_97 sourceBody773_99

def sourceBody773_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 40)

def sourceBody773_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 16#64])
  24

def sourceBody773_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_102 sourceBody773_0

def sourceBody773_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_101 sourceBody773_103

def sourceBody773_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 76)

def sourceBody773_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 24#64])
  24

def sourceBody773_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_106 sourceBody773_0

def sourceBody773_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_105 sourceBody773_107

def sourceBody773_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody773_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 32#64])
  24

def sourceBody773_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_110 sourceBody773_0

def sourceBody773_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_109 sourceBody773_111

def sourceBody773_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody773_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 40#64])
  24

def sourceBody773_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_114 sourceBody773_0

def sourceBody773_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_113 sourceBody773_115

def sourceBody773_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_116 sourceBody773_0

def sourceBody773_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_112 sourceBody773_117

def sourceBody773_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_108 sourceBody773_118

def sourceBody773_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_104 sourceBody773_119

def sourceBody773_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_100 sourceBody773_120

def sourceBody773_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_96 sourceBody773_121

def sourceBody773_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_92 sourceBody773_122

def sourceBody773_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_123

def sourceBody773_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_91 sourceBody773_124

def sourceBody773_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_125

def sourceBody773_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_90 sourceBody773_126

def sourceBody773_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_127

def sourceBody773_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_89 sourceBody773_128

def sourceBody773_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_129

def sourceBody773_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_88 sourceBody773_130

def sourceBody773_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_131

def sourceBody773_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_87 sourceBody773_132

def sourceBody773_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_133

def sourceBody773_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_86 sourceBody773_134

def sourceBody773_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_135

def sourceBody773_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_85 sourceBody773_136

def sourceBody773_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody773_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 54)

def sourceBody773_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def sourceBody773_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def sourceBody773_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 12)

def sourceBody773_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 48)

def sourceBody773_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def sourceBody773_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_144 sourceBody773_122

def sourceBody773_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_145

def sourceBody773_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_143 sourceBody773_146

def sourceBody773_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_147

def sourceBody773_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_142 sourceBody773_148

def sourceBody773_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_149

def sourceBody773_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_141 sourceBody773_150

def sourceBody773_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_151

def sourceBody773_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_140 sourceBody773_152

def sourceBody773_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_153

def sourceBody773_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_139 sourceBody773_154

def sourceBody773_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_155

def sourceBody773_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_138 sourceBody773_156

def sourceBody773_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_157

def sourceBody773_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_137 sourceBody773_158

def sourceBody773_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 60)

def sourceBody773_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 14)

def sourceBody773_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 50)

def sourceBody773_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 32)

def sourceBody773_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 70)

def sourceBody773_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 10)

def sourceBody773_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody773_167 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody773_0, 773, 8)) (some 705) ([22, 58, 40, 76, 6, 42]) (some (22, sourceBody773_166, 773, 9))

def sourceBody773_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_167 sourceBody773_15

def sourceBody773_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_168 sourceBody773_0

def sourceBody773_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_165 sourceBody773_169

def sourceBody773_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_164 sourceBody773_170

def sourceBody773_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_163 sourceBody773_171

def sourceBody773_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_162 sourceBody773_172

def sourceBody773_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_161 sourceBody773_173

def sourceBody773_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_160 sourceBody773_174

def sourceBody773_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 68])

def sourceBody773_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody773_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_177 sourceBody773_0

def sourceBody773_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_176 sourceBody773_178

def sourceBody773_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_175 sourceBody773_179

def sourceBody773_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_180

def sourceBody773_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_181

def sourceBody773_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_159 sourceBody773_182

def sourceBody773_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_35 sourceBody773_183

def sourceBody773_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_184

def sourceBody773_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_34 sourceBody773_185

def sourceBody773_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_186

def sourceBody773_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_33 sourceBody773_187

def sourceBody773_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_188

def sourceBody773_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_32 sourceBody773_189

def sourceBody773_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_190

def sourceBody773_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_31 sourceBody773_191

def sourceBody773_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_192

def sourceBody773_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_30 sourceBody773_193

def sourceBody773_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_194

def sourceBody773_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_29 sourceBody773_195

def sourceBody773_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_196

def sourceBody773_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_28 sourceBody773_197

def sourceBody773_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_198

def sourceBody773_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_27 sourceBody773_199

def sourceBody773_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_200

def sourceBody773_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_26 sourceBody773_201

def sourceBody773_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_202

def sourceBody773_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_25 sourceBody773_203

def sourceBody773_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_204

def sourceBody773_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_24 sourceBody773_205

def sourceBody773_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_206

def sourceBody773_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_23 sourceBody773_207

def sourceBody773_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_208

def sourceBody773_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_209

def sourceBody773_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_210

def sourceBody773_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_211

def sourceBody773_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_212

def sourceBody773_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_213

def sourceBody773_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_214

def sourceBody773_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_215

def sourceBody773_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_216

def sourceBody773_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_217

def sourceBody773_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_218

def sourceBody773_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_219

def sourceBody773_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_6 sourceBody773_220

def sourceBody773_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_221

def sourceBody773_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_5 sourceBody773_222

def sourceBody773_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_223

def sourceBody773_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_4 sourceBody773_224

def sourceBody773_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_225

def sourceBody773_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_3 sourceBody773_226

def sourceBody773_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_227

def sourceBody773_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_2 sourceBody773_228

def sourceBody773_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_229

def sourceBody773_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_1 sourceBody773_230

def sourceBody773_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody773_0 sourceBody773_231

def source773 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (773, 3, sourceBody773_232)
end InitECandidate.Proofs.WordStages
