import InitECandidate.Proofs.WordStages.Source669
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody685_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody685_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody685_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody685_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 2)) (some 69) ([]) (some (38, sourceBody685_2, 685, 3))

def sourceBody685_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody685_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_3 sourceBody685_4

def sourceBody685_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_5 sourceBody685_0

def sourceBody685_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody685_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 52])

def sourceBody685_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody685_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody685_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 52])

def sourceBody685_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody685_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 12)

def sourceBody685_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 52])

def sourceBody685_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 12,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody685_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody685_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody685_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 4)) (some 68) ([46]) (some (46, sourceBody685_17, 685, 5))

def sourceBody685_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_18 sourceBody685_4

def sourceBody685_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_19 sourceBody685_0

def sourceBody685_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_16 sourceBody685_20

def sourceBody685_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 52)

def sourceBody685_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody685_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 6)) (some 68) ([20]) (some (20, sourceBody685_23, 685, 7))

def sourceBody685_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_24 sourceBody685_4

def sourceBody685_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_25 sourceBody685_0

def sourceBody685_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_22 sourceBody685_26

def sourceBody685_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 52)

def sourceBody685_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody685_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 8)) (some 68) ([42]) (some (42, sourceBody685_29, 685, 9))

def sourceBody685_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_30 sourceBody685_4

def sourceBody685_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_31 sourceBody685_0

def sourceBody685_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_28 sourceBody685_32

def sourceBody685_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 52)

def sourceBody685_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody685_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 10)) (some 68) ([32]) (some (32, sourceBody685_35, 685, 11))

def sourceBody685_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_36 sourceBody685_4

def sourceBody685_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_37 sourceBody685_0

def sourceBody685_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_34 sourceBody685_38

def sourceBody685_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 8)

def sourceBody685_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody685_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody685_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody685_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 18) sourceBody685_42 sourceBody685_43

def sourceBody685_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_44 sourceBody685_4

def sourceBody685_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 54)

def sourceBody685_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 2)

def sourceBody685_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody685_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody685_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 12)) (some 678) ([54, 18]) (some (54, sourceBody685_49, 685, 13))

def sourceBody685_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_50 sourceBody685_4

def sourceBody685_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_51 sourceBody685_0

def sourceBody685_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_48 sourceBody685_52

def sourceBody685_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_53

def sourceBody685_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_54

def sourceBody685_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_55

def sourceBody685_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 46)

def sourceBody685_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 14)) (some 678) ([54, 18]) (some (54, sourceBody685_49, 685, 15))

def sourceBody685_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_58 sourceBody685_4

def sourceBody685_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_59 sourceBody685_0

def sourceBody685_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_57 sourceBody685_60

def sourceBody685_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_61

def sourceBody685_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_62

def sourceBody685_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_63

def sourceBody685_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_56 sourceBody685_64

def sourceBody685_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody685_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def sourceBody685_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 16)) (some 670) ([54, 18, 40, 30]) (some (54, sourceBody685_49, 685, 17))

def sourceBody685_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_68 sourceBody685_4

def sourceBody685_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_69 sourceBody685_0

def sourceBody685_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_67 sourceBody685_70

def sourceBody685_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_66 sourceBody685_71

def sourceBody685_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_48 sourceBody685_72

def sourceBody685_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_73

def sourceBody685_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_74

def sourceBody685_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_75

def sourceBody685_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody685_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody685_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody685_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 18)) (some 670) ([54, 18, 40, 30]) (some (54, sourceBody685_49, 685, 19))

def sourceBody685_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_80 sourceBody685_4

def sourceBody685_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_81 sourceBody685_0

def sourceBody685_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_79 sourceBody685_82

def sourceBody685_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_78 sourceBody685_83

def sourceBody685_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_77 sourceBody685_84

def sourceBody685_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_85

def sourceBody685_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_86

def sourceBody685_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_87

def sourceBody685_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_76 sourceBody685_88

def sourceBody685_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def sourceBody685_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 20)

def sourceBody685_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 20)) (some 673) ([54, 18, 40, 30]) (some (54, sourceBody685_49, 685, 21))

def sourceBody685_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_92 sourceBody685_4

def sourceBody685_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_93 sourceBody685_0

def sourceBody685_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_91 sourceBody685_94

def sourceBody685_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_90 sourceBody685_95

def sourceBody685_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_48 sourceBody685_96

def sourceBody685_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_97

def sourceBody685_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_98

def sourceBody685_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_99

def sourceBody685_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_89 sourceBody685_100

def sourceBody685_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 22)

def sourceBody685_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 22)) (some 670) ([54, 18, 40, 30]) (some (54, sourceBody685_49, 685, 23))

def sourceBody685_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_103 sourceBody685_4

def sourceBody685_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_104 sourceBody685_0

def sourceBody685_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_67 sourceBody685_105

def sourceBody685_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_102 sourceBody685_106

def sourceBody685_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_57 sourceBody685_107

def sourceBody685_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_108

def sourceBody685_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_109

def sourceBody685_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_110

def sourceBody685_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_101 sourceBody685_111

def sourceBody685_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 38)

def sourceBody685_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 24)) (some 670) ([54, 18, 40, 30]) (some (54, sourceBody685_49, 685, 25))

def sourceBody685_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_114 sourceBody685_4

def sourceBody685_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_115 sourceBody685_0

def sourceBody685_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_79 sourceBody685_116

def sourceBody685_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_113 sourceBody685_117

def sourceBody685_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_77 sourceBody685_118

def sourceBody685_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_119

def sourceBody685_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_120

def sourceBody685_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_121

def sourceBody685_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_112 sourceBody685_122

def sourceBody685_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 46)

def sourceBody685_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 26)) (some 673) ([54, 18, 40, 30]) (some (54, sourceBody685_49, 685, 27))

def sourceBody685_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_125 sourceBody685_4

def sourceBody685_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_126 sourceBody685_0

def sourceBody685_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_91 sourceBody685_127

def sourceBody685_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_124 sourceBody685_128

def sourceBody685_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_57 sourceBody685_129

def sourceBody685_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_130

def sourceBody685_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_131

def sourceBody685_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_132

def sourceBody685_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_123 sourceBody685_133

def sourceBody685_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody685_65 sourceBody685_134

def sourceBody685_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_135 sourceBody685_4

def sourceBody685_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_136 sourceBody685_0

def sourceBody685_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_46 sourceBody685_137

def sourceBody685_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_45 sourceBody685_138

def sourceBody685_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_41 sourceBody685_139

def sourceBody685_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_40 sourceBody685_140

def sourceBody685_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 28)) (some 676) ([54, 18]) (some (54, sourceBody685_49, 685, 29))

def sourceBody685_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_142 sourceBody685_4

def sourceBody685_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_143 sourceBody685_0

def sourceBody685_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_57 sourceBody685_144

def sourceBody685_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_47 sourceBody685_145

def sourceBody685_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody685_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody685_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody685_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody685_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 40) sourceBody685_149 sourceBody685_150

def sourceBody685_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_151 sourceBody685_4

def sourceBody685_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody685_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody685_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody685_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 30)) (some 676) ([18, 40]) (some (18, sourceBody685_155, 685, 31))

def sourceBody685_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_156 sourceBody685_4

def sourceBody685_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_157 sourceBody685_0

def sourceBody685_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_90 sourceBody685_158

def sourceBody685_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_159

def sourceBody685_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody685_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody685_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 30) sourceBody685_148 sourceBody685_162

def sourceBody685_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_163 sourceBody685_4

def sourceBody685_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 40)

def sourceBody685_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody685_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 38)

def sourceBody685_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody685_169 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 32)) (some 671) ([40, 30, 50]) (some (40, sourceBody685_168, 685, 33))

def sourceBody685_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_169 sourceBody685_4

def sourceBody685_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_170 sourceBody685_0

def sourceBody685_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_167 sourceBody685_171

def sourceBody685_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_91 sourceBody685_172

def sourceBody685_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_173

def sourceBody685_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_174

def sourceBody685_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_175

def sourceBody685_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody685_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 20)

def sourceBody685_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody685_180 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 34)) (some 675) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 35))

def sourceBody685_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_180 sourceBody685_4

def sourceBody685_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_181 sourceBody685_0

def sourceBody685_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_179 sourceBody685_182

def sourceBody685_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_178 sourceBody685_183

def sourceBody685_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_177 sourceBody685_184

def sourceBody685_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_185

def sourceBody685_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_186

def sourceBody685_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_187

def sourceBody685_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_176 sourceBody685_188

def sourceBody685_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 46)

def sourceBody685_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 28)

def sourceBody685_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def sourceBody685_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 36)) (some 670) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 37))

def sourceBody685_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_193 sourceBody685_4

def sourceBody685_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_194 sourceBody685_0

def sourceBody685_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_192 sourceBody685_195

def sourceBody685_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_191 sourceBody685_196

def sourceBody685_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_190 sourceBody685_197

def sourceBody685_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_198

def sourceBody685_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_199

def sourceBody685_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_200

def sourceBody685_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_189 sourceBody685_201

def sourceBody685_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 46)

def sourceBody685_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody685_205 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 38)) (some 675) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 39))

def sourceBody685_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_205 sourceBody685_4

def sourceBody685_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_206 sourceBody685_0

def sourceBody685_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_204 sourceBody685_207

def sourceBody685_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_203 sourceBody685_208

def sourceBody685_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_190 sourceBody685_209

def sourceBody685_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_210

def sourceBody685_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_211

def sourceBody685_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_212

def sourceBody685_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_202 sourceBody685_213

def sourceBody685_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody685_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def sourceBody685_217 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 40)) (some 670) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 41))

def sourceBody685_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_217 sourceBody685_4

def sourceBody685_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_218 sourceBody685_0

def sourceBody685_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_192 sourceBody685_219

def sourceBody685_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_216 sourceBody685_220

def sourceBody685_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_215 sourceBody685_221

def sourceBody685_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_222

def sourceBody685_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_223

def sourceBody685_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_224

def sourceBody685_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody685_227 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 42)) (some 670) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 43))

def sourceBody685_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_227 sourceBody685_4

def sourceBody685_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_228 sourceBody685_0

def sourceBody685_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_226 sourceBody685_229

def sourceBody685_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_167 sourceBody685_230

def sourceBody685_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_91 sourceBody685_231

def sourceBody685_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_232

def sourceBody685_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_233

def sourceBody685_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_234

def sourceBody685_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_225 sourceBody685_235

def sourceBody685_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody685_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody685_239 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 44)) (some 673) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 45))

def sourceBody685_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_239 sourceBody685_4

def sourceBody685_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_240 sourceBody685_0

def sourceBody685_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_238 sourceBody685_241

def sourceBody685_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_237 sourceBody685_242

def sourceBody685_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_215 sourceBody685_243

def sourceBody685_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_244

def sourceBody685_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_245

def sourceBody685_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_246

def sourceBody685_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_236 sourceBody685_247

def sourceBody685_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody685_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 48)

def sourceBody685_251 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 46)) (some 670) ([40, 30, 50, 24]) (some (40, sourceBody685_168, 685, 47))

def sourceBody685_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_251 sourceBody685_4

def sourceBody685_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_252 sourceBody685_0

def sourceBody685_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_226 sourceBody685_253

def sourceBody685_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_250 sourceBody685_254

def sourceBody685_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_249 sourceBody685_255

def sourceBody685_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_166 sourceBody685_256

def sourceBody685_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_257

def sourceBody685_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_258

def sourceBody685_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_248 sourceBody685_259

def sourceBody685_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody685_262 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody685_0, 685, 48)) (some 70) ([40]) (some (40, sourceBody685_168, 685, 49))

def sourceBody685_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_262 sourceBody685_4

def sourceBody685_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_263 sourceBody685_0

def sourceBody685_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_261 sourceBody685_264

def sourceBody685_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_265

def sourceBody685_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_266

def sourceBody685_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_260 sourceBody685_267

def sourceBody685_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody685_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_269 sourceBody685_0

def sourceBody685_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_150 sourceBody685_270

def sourceBody685_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_268 sourceBody685_271

def sourceBody685_273 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody685_214 sourceBody685_272

def sourceBody685_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_273 sourceBody685_4

def sourceBody685_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_274 sourceBody685_0

def sourceBody685_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_165 sourceBody685_275

def sourceBody685_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_164 sourceBody685_276

def sourceBody685_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_161 sourceBody685_277

def sourceBody685_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_46 sourceBody685_278

def sourceBody685_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_160 sourceBody685_279

def sourceBody685_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_280

def sourceBody685_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_281

def sourceBody685_283 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody685_282 sourceBody685_0

def sourceBody685_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_283 sourceBody685_4

def sourceBody685_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_284 sourceBody685_0

def sourceBody685_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_153 sourceBody685_285

def sourceBody685_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_152 sourceBody685_286

def sourceBody685_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_148 sourceBody685_287

def sourceBody685_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_147 sourceBody685_288

def sourceBody685_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody685_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 56)

def sourceBody685_292 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 50)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 51))

def sourceBody685_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_292 sourceBody685_4

def sourceBody685_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_293 sourceBody685_0

def sourceBody685_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_250 sourceBody685_294

def sourceBody685_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_291 sourceBody685_295

def sourceBody685_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_290 sourceBody685_296

def sourceBody685_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_297

def sourceBody685_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_298

def sourceBody685_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_299

def sourceBody685_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_289 sourceBody685_300

def sourceBody685_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def sourceBody685_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 38)

def sourceBody685_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 36)

def sourceBody685_305 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 52)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 53))

def sourceBody685_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_305 sourceBody685_4

def sourceBody685_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_306 sourceBody685_0

def sourceBody685_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_304 sourceBody685_307

def sourceBody685_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_303 sourceBody685_308

def sourceBody685_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_302 sourceBody685_309

def sourceBody685_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_310

def sourceBody685_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_311

def sourceBody685_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_312

def sourceBody685_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_301 sourceBody685_313

def sourceBody685_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 42)

def sourceBody685_316 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 54)) (some 673) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 55))

def sourceBody685_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_316 sourceBody685_4

def sourceBody685_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_317 sourceBody685_0

def sourceBody685_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_315 sourceBody685_318

def sourceBody685_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_91 sourceBody685_319

def sourceBody685_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_290 sourceBody685_320

def sourceBody685_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_321

def sourceBody685_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_322

def sourceBody685_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_323

def sourceBody685_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_314 sourceBody685_324

def sourceBody685_326 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 56)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 57))

def sourceBody685_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_326 sourceBody685_4

def sourceBody685_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_327 sourceBody685_0

def sourceBody685_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_178 sourceBody685_328

def sourceBody685_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_177 sourceBody685_329

def sourceBody685_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_290 sourceBody685_330

def sourceBody685_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_331

def sourceBody685_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_332

def sourceBody685_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_333

def sourceBody685_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_325 sourceBody685_334

def sourceBody685_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody685_337 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 58)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 59))

def sourceBody685_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_337 sourceBody685_4

def sourceBody685_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_338 sourceBody685_0

def sourceBody685_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_250 sourceBody685_339

def sourceBody685_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_336 sourceBody685_340

def sourceBody685_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_302 sourceBody685_341

def sourceBody685_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_342

def sourceBody685_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_343

def sourceBody685_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_344

def sourceBody685_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_335 sourceBody685_345

def sourceBody685_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody685_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody685_349 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 60)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 61))

def sourceBody685_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_349 sourceBody685_4

def sourceBody685_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_350 sourceBody685_0

def sourceBody685_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_304 sourceBody685_351

def sourceBody685_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_348 sourceBody685_352

def sourceBody685_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_347 sourceBody685_353

def sourceBody685_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_354

def sourceBody685_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_355

def sourceBody685_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_356

def sourceBody685_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_346 sourceBody685_357

def sourceBody685_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody685_360 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 62)) (some 673) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 63))

def sourceBody685_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_360 sourceBody685_4

def sourceBody685_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_361 sourceBody685_0

def sourceBody685_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_237 sourceBody685_362

def sourceBody685_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_359 sourceBody685_363

def sourceBody685_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_302 sourceBody685_364

def sourceBody685_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_365

def sourceBody685_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_366

def sourceBody685_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_367

def sourceBody685_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_358 sourceBody685_368

def sourceBody685_370 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 64)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 65))

def sourceBody685_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_370 sourceBody685_4

def sourceBody685_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_371 sourceBody685_0

def sourceBody685_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_315 sourceBody685_372

def sourceBody685_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_190 sourceBody685_373

def sourceBody685_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_302 sourceBody685_374

def sourceBody685_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_375

def sourceBody685_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_376

def sourceBody685_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_377

def sourceBody685_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_369 sourceBody685_378

def sourceBody685_380 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 66)) (some 673) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 67))

def sourceBody685_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_380 sourceBody685_4

def sourceBody685_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_381 sourceBody685_0

def sourceBody685_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_315 sourceBody685_382

def sourceBody685_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_91 sourceBody685_383

def sourceBody685_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_347 sourceBody685_384

def sourceBody685_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_385

def sourceBody685_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_386

def sourceBody685_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_387

def sourceBody685_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_379 sourceBody685_388

def sourceBody685_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody685_391 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 68)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 69))

def sourceBody685_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_391 sourceBody685_4

def sourceBody685_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_392 sourceBody685_0

def sourceBody685_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_304 sourceBody685_393

def sourceBody685_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_190 sourceBody685_394

def sourceBody685_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_390 sourceBody685_395

def sourceBody685_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_396

def sourceBody685_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_397

def sourceBody685_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_398

def sourceBody685_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_389 sourceBody685_399

def sourceBody685_401 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody685_0, 685, 70)) (some 670) ([18, 40, 30, 50]) (some (18, sourceBody685_155, 685, 71))

def sourceBody685_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_401 sourceBody685_4

def sourceBody685_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_402 sourceBody685_0

def sourceBody685_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_250 sourceBody685_403

def sourceBody685_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_249 sourceBody685_404

def sourceBody685_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_390 sourceBody685_405

def sourceBody685_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_154 sourceBody685_406

def sourceBody685_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_407

def sourceBody685_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_408

def sourceBody685_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_400 sourceBody685_409

def sourceBody685_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody685_412 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody685_0, 685, 72)) (some 70) ([18]) (some (18, sourceBody685_155, 685, 73))

def sourceBody685_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_412 sourceBody685_4

def sourceBody685_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_413 sourceBody685_0

def sourceBody685_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_411 sourceBody685_414

def sourceBody685_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_415

def sourceBody685_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_416

def sourceBody685_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_410 sourceBody685_417

def sourceBody685_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [54]

def sourceBody685_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_419 sourceBody685_0

def sourceBody685_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_43 sourceBody685_420

def sourceBody685_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_418 sourceBody685_421

def sourceBody685_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_146 sourceBody685_422

def sourceBody685_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_423

def sourceBody685_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_424

def sourceBody685_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_141 sourceBody685_425

def sourceBody685_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_39 sourceBody685_426

def sourceBody685_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_427

def sourceBody685_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_428

def sourceBody685_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_33 sourceBody685_429

def sourceBody685_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_430

def sourceBody685_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_431

def sourceBody685_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_27 sourceBody685_432

def sourceBody685_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_433

def sourceBody685_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_434

def sourceBody685_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_21 sourceBody685_435

def sourceBody685_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_436

def sourceBody685_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_437

def sourceBody685_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_15 sourceBody685_438

def sourceBody685_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_439

def sourceBody685_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_14 sourceBody685_440

def sourceBody685_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_441

def sourceBody685_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_13 sourceBody685_442

def sourceBody685_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_443

def sourceBody685_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_12 sourceBody685_444

def sourceBody685_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_445

def sourceBody685_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_11 sourceBody685_446

def sourceBody685_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_447

def sourceBody685_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_10 sourceBody685_448

def sourceBody685_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_449

def sourceBody685_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_9 sourceBody685_450

def sourceBody685_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_451

def sourceBody685_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_8 sourceBody685_452

def sourceBody685_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_453

def sourceBody685_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_7 sourceBody685_454

def sourceBody685_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_455

def sourceBody685_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_6 sourceBody685_456

def sourceBody685_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_457

def sourceBody685_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_458

def sourceBody685_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_1 sourceBody685_459

def sourceBody685_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody685_0 sourceBody685_460

def source685 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (685, 7, sourceBody685_461)
end InitECandidate.Proofs.WordStages
