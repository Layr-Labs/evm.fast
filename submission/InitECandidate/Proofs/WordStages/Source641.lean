import InitECandidate.Proofs.WordStages.Source625
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody641_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody641_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody641_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 2)) (some 69) ([]) (some (48, sourceBody641_1, 641, 3))

def sourceBody641_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody641_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_2 sourceBody641_3

def sourceBody641_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_4 sourceBody641_0

def sourceBody641_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 3#64])
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody641_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody641_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody641_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 4)) (some 68) ([60]) (some (60, sourceBody641_8, 641, 5))

def sourceBody641_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_9 sourceBody641_3

def sourceBody641_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_10 sourceBody641_0

def sourceBody641_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_7 sourceBody641_11

def sourceBody641_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody641_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody641_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody641_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody641_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 6)) (some 635) ([26, 54, 40]) (some (26, sourceBody641_16, 641, 7))

def sourceBody641_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_17 sourceBody641_3

def sourceBody641_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_18 sourceBody641_0

def sourceBody641_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_15 sourceBody641_19

def sourceBody641_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_14 sourceBody641_20

def sourceBody641_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_13 sourceBody641_21

def sourceBody641_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_22

def sourceBody641_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_23

def sourceBody641_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody641_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def sourceBody641_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 8)) (some 126) ([26, 54]) (some (26, sourceBody641_16, 641, 9))

def sourceBody641_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_27 sourceBody641_3

def sourceBody641_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_28 sourceBody641_0

def sourceBody641_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_26 sourceBody641_29

def sourceBody641_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_25 sourceBody641_30

def sourceBody641_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 60)

def sourceBody641_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 54 (Flapjack.WordRegImm.reg 40) sourceBody641_34 sourceBody641_35

def sourceBody641_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_36 sourceBody641_3

def sourceBody641_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 54)

def sourceBody641_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 14)

def sourceBody641_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody641_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody641_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 10)) (some 78) ([54, 40]) (some (54, sourceBody641_41, 641, 11))

def sourceBody641_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_42 sourceBody641_3

def sourceBody641_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_43 sourceBody641_0

def sourceBody641_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_40 sourceBody641_44

def sourceBody641_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_39 sourceBody641_45

def sourceBody641_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_46

def sourceBody641_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_47

def sourceBody641_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 20)

def sourceBody641_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody641_0, 641, 12)) (some 70) ([54]) (some (54, sourceBody641_41, 641, 13))

def sourceBody641_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_50 sourceBody641_3

def sourceBody641_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_51 sourceBody641_0

def sourceBody641_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_49 sourceBody641_52

def sourceBody641_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_53

def sourceBody641_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_54

def sourceBody641_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_48 sourceBody641_55

def sourceBody641_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody641_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_58 sourceBody641_0

def sourceBody641_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_57 sourceBody641_59

def sourceBody641_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_56 sourceBody641_60

def sourceBody641_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.imm 0#64) sourceBody641_61 sourceBody641_0

def sourceBody641_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_62 sourceBody641_3

def sourceBody641_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_63 sourceBody641_0

def sourceBody641_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_38 sourceBody641_64

def sourceBody641_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_37 sourceBody641_65

def sourceBody641_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_33 sourceBody641_66

def sourceBody641_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_32 sourceBody641_67

def sourceBody641_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 3#64])
    (Flapjack.WordLangExpHOL.const 2#64))

def sourceBody641_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def sourceBody641_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody641_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody641_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 14)) (some 93) ([40, 66]) (some (40, sourceBody641_72, 641, 15))

def sourceBody641_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_73 sourceBody641_3

def sourceBody641_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_74 sourceBody641_0

def sourceBody641_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_71 sourceBody641_75

def sourceBody641_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_70 sourceBody641_76

def sourceBody641_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody641_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody641_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 16)) (some 68) ([66]) (some (66, sourceBody641_79, 641, 17))

def sourceBody641_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_80 sourceBody641_3

def sourceBody641_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_81 sourceBody641_0

def sourceBody641_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_78 sourceBody641_82

def sourceBody641_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody641_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody641_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 18)) (some 68) ([18]) (some (18, sourceBody641_85, 641, 19))

def sourceBody641_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_86 sourceBody641_3

def sourceBody641_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_87 sourceBody641_0

def sourceBody641_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_84 sourceBody641_88

def sourceBody641_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody641_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody641_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 20)) (some 68) ([46]) (some (46, sourceBody641_91, 641, 21))

def sourceBody641_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_92 sourceBody641_3

def sourceBody641_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_93 sourceBody641_0

def sourceBody641_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_90 sourceBody641_94

def sourceBody641_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
      (Flapjack.WordLangExpHOL.const 1#64))
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody641_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody641_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 22)) (some 68) ([32]) (some (32, sourceBody641_97, 641, 23))

def sourceBody641_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_98 sourceBody641_3

def sourceBody641_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_99 sourceBody641_0

def sourceBody641_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_96 sourceBody641_100

def sourceBody641_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody641_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody641_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 24)) (some 68) ([58]) (some (58, sourceBody641_103, 641, 25))

def sourceBody641_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_104 sourceBody641_3

def sourceBody641_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_105 sourceBody641_0

def sourceBody641_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_102 sourceBody641_106

def sourceBody641_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody641_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody641_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 26)) (some 68) ([24]) (some (24, sourceBody641_109, 641, 27))

def sourceBody641_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_110 sourceBody641_3

def sourceBody641_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_111 sourceBody641_0

def sourceBody641_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_108 sourceBody641_112

def sourceBody641_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody641_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody641_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 28)) (some 68) ([52]) (some (52, sourceBody641_115, 641, 29))

def sourceBody641_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_116 sourceBody641_3

def sourceBody641_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_117 sourceBody641_0

def sourceBody641_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_114 sourceBody641_118

def sourceBody641_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody641_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 4)

def sourceBody641_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 40)

def sourceBody641_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody641_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 30)) (some 635) ([38, 64, 22]) (some (38, sourceBody641_123, 641, 31))

def sourceBody641_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_124 sourceBody641_3

def sourceBody641_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_125 sourceBody641_0

def sourceBody641_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_122 sourceBody641_126

def sourceBody641_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_121 sourceBody641_127

def sourceBody641_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_120 sourceBody641_128

def sourceBody641_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_129

def sourceBody641_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_130

def sourceBody641_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody641_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 26)

def sourceBody641_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody641_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 60)

def sourceBody641_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 66)

def sourceBody641_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def sourceBody641_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 58)

def sourceBody641_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 24)

def sourceBody641_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 32)) (some 639) ([38, 64, 22, 50, 36, 62, 28, 56]) (some (38, sourceBody641_123, 641, 33))

def sourceBody641_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_140 sourceBody641_3

def sourceBody641_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_141 sourceBody641_0

def sourceBody641_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_139 sourceBody641_142

def sourceBody641_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_138 sourceBody641_143

def sourceBody641_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_137 sourceBody641_144

def sourceBody641_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_136 sourceBody641_145

def sourceBody641_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_135 sourceBody641_146

def sourceBody641_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_134 sourceBody641_147

def sourceBody641_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_133 sourceBody641_148

def sourceBody641_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_132 sourceBody641_149

def sourceBody641_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_150

def sourceBody641_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_151

def sourceBody641_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_131 sourceBody641_152

def sourceBody641_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody641_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 8)

def sourceBody641_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 34)) (some 640) ([38, 64]) (some (38, sourceBody641_123, 641, 35))

def sourceBody641_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_156 sourceBody641_3

def sourceBody641_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_157 sourceBody641_0

def sourceBody641_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_155 sourceBody641_158

def sourceBody641_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_154 sourceBody641_159

def sourceBody641_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 52)

def sourceBody641_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 64 (Flapjack.WordRegImm.reg 22) sourceBody641_163 sourceBody641_164

def sourceBody641_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_165 sourceBody641_3

def sourceBody641_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 64)

def sourceBody641_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 18)

def sourceBody641_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody641_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def sourceBody641_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 36)) (some 78) ([64, 22]) (some (64, sourceBody641_170, 641, 37))

def sourceBody641_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_171 sourceBody641_3

def sourceBody641_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_172 sourceBody641_0

def sourceBody641_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_169 sourceBody641_173

def sourceBody641_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_168 sourceBody641_174

def sourceBody641_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_175

def sourceBody641_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_176

def sourceBody641_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 60)

def sourceBody641_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_180 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 64 (Flapjack.WordRegImm.reg 22) sourceBody641_163 sourceBody641_164

def sourceBody641_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_180 sourceBody641_3

def sourceBody641_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 64)

def sourceBody641_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_185 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.reg 62) sourceBody641_184 sourceBody641_182

def sourceBody641_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_185 sourceBody641_3

def sourceBody641_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 34))

def sourceBody641_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 56 (Flapjack.WordRegImm.reg 42) sourceBody641_189 sourceBody641_190

def sourceBody641_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_191 sourceBody641_3

def sourceBody641_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 56)

def sourceBody641_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 44) sourceBody641_195 sourceBody641_193

def sourceBody641_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_196 sourceBody641_3

def sourceBody641_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 16])

def sourceBody641_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody641_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 64)

def sourceBody641_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 22

def sourceBody641_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_201 sourceBody641_0

def sourceBody641_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_200 sourceBody641_202

def sourceBody641_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_203 sourceBody641_0

def sourceBody641_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_163 sourceBody641_204

def sourceBody641_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_205

def sourceBody641_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_199 sourceBody641_206

def sourceBody641_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_207

def sourceBody641_209 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody641_0 sourceBody641_208

def sourceBody641_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_209 sourceBody641_3

def sourceBody641_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_210 sourceBody641_0

def sourceBody641_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_198 sourceBody641_211

def sourceBody641_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_197 sourceBody641_212

def sourceBody641_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_194 sourceBody641_213

def sourceBody641_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_193 sourceBody641_214

def sourceBody641_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_192 sourceBody641_215

def sourceBody641_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_188 sourceBody641_216

def sourceBody641_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_187 sourceBody641_217

def sourceBody641_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_186 sourceBody641_218

def sourceBody641_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_183 sourceBody641_219

def sourceBody641_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_182 sourceBody641_220

def sourceBody641_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_181 sourceBody641_221

def sourceBody641_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_179 sourceBody641_222

def sourceBody641_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_178 sourceBody641_223

def sourceBody641_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_177 sourceBody641_224

def sourceBody641_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 66)

def sourceBody641_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody641_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 38)) (some 77) ([64, 22, 50]) (some (64, sourceBody641_170, 641, 39))

def sourceBody641_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_228 sourceBody641_3

def sourceBody641_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_229 sourceBody641_0

def sourceBody641_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_227 sourceBody641_230

def sourceBody641_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_226 sourceBody641_231

def sourceBody641_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_168 sourceBody641_232

def sourceBody641_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_233

def sourceBody641_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_234

def sourceBody641_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 52)

def sourceBody641_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody641_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 38)

def sourceBody641_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_238 sourceBody641_0

def sourceBody641_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_239 sourceBody641_0

def sourceBody641_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_237 sourceBody641_240

def sourceBody641_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_241

def sourceBody641_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 60)

def sourceBody641_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 18)

def sourceBody641_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 60)

def sourceBody641_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 46)

def sourceBody641_247 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 40)) (some 637) ([64, 22, 50, 36, 62]) (some (64, sourceBody641_170, 641, 41))

def sourceBody641_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_247 sourceBody641_3

def sourceBody641_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_248 sourceBody641_0

def sourceBody641_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_246 sourceBody641_249

def sourceBody641_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_245 sourceBody641_250

def sourceBody641_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_244 sourceBody641_251

def sourceBody641_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_243 sourceBody641_252

def sourceBody641_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_168 sourceBody641_253

def sourceBody641_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_254

def sourceBody641_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_255

def sourceBody641_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_242 sourceBody641_256

def sourceBody641_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 46)

def sourceBody641_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody641_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 34)

def sourceBody641_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 18)

def sourceBody641_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody641_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 58)

def sourceBody641_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 24)

def sourceBody641_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 42)) (some 639) ([64, 22, 50, 36, 62, 28, 56, 42]) (some (64, sourceBody641_170, 641, 43))

def sourceBody641_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_265 sourceBody641_3

def sourceBody641_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_266 sourceBody641_0

def sourceBody641_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_264 sourceBody641_267

def sourceBody641_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_263 sourceBody641_268

def sourceBody641_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_262 sourceBody641_269

def sourceBody641_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_261 sourceBody641_270

def sourceBody641_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_245 sourceBody641_271

def sourceBody641_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_260 sourceBody641_272

def sourceBody641_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_259 sourceBody641_273

def sourceBody641_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_258 sourceBody641_274

def sourceBody641_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_275

def sourceBody641_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_276

def sourceBody641_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_257 sourceBody641_277

def sourceBody641_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8],
          Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody641_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 38 0#64))

def sourceBody641_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 7#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody641_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody641_283 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 50) sourceBody641_179 sourceBody641_162

def sourceBody641_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_283 sourceBody641_3

def sourceBody641_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody641_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 66)

def sourceBody641_287 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 44)) (some 637) ([64, 22, 50, 36, 62]) (some (64, sourceBody641_170, 641, 45))

def sourceBody641_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_287 sourceBody641_3

def sourceBody641_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_288 sourceBody641_0

def sourceBody641_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_246 sourceBody641_289

def sourceBody641_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_245 sourceBody641_290

def sourceBody641_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_286 sourceBody641_291

def sourceBody641_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_243 sourceBody641_292

def sourceBody641_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_168 sourceBody641_293

def sourceBody641_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_294

def sourceBody641_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_295

def sourceBody641_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 46)) (some 639) ([64, 22, 50, 36, 62, 28, 56, 42]) (some (64, sourceBody641_170, 641, 47))

def sourceBody641_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_297 sourceBody641_3

def sourceBody641_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_298 sourceBody641_0

def sourceBody641_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_264 sourceBody641_299

def sourceBody641_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_263 sourceBody641_300

def sourceBody641_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_262 sourceBody641_301

def sourceBody641_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_261 sourceBody641_302

def sourceBody641_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_245 sourceBody641_303

def sourceBody641_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_260 sourceBody641_304

def sourceBody641_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_259 sourceBody641_305

def sourceBody641_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_258 sourceBody641_306

def sourceBody641_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_307

def sourceBody641_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_308

def sourceBody641_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_296 sourceBody641_309

def sourceBody641_311 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody641_310 sourceBody641_0

def sourceBody641_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_311 sourceBody641_3

def sourceBody641_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_312 sourceBody641_0

def sourceBody641_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_285 sourceBody641_313

def sourceBody641_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_284 sourceBody641_314

def sourceBody641_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_282 sourceBody641_315

def sourceBody641_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_281 sourceBody641_316

def sourceBody641_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_280 sourceBody641_317

def sourceBody641_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_279 sourceBody641_318

def sourceBody641_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_278 sourceBody641_319

def sourceBody641_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody641_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_320 sourceBody641_321

def sourceBody641_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody641_324 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody641_322 sourceBody641_323

def sourceBody641_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_324 sourceBody641_3

def sourceBody641_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_325 sourceBody641_0

def sourceBody641_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_167 sourceBody641_326

def sourceBody641_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_166 sourceBody641_327

def sourceBody641_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_236 sourceBody641_328

def sourceBody641_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_164 sourceBody641_329

def sourceBody641_331 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody641_330 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody641_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_331 sourceBody641_3

def sourceBody641_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_3 sourceBody641_332

def sourceBody641_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_235 sourceBody641_333

def sourceBody641_335 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody641_225 sourceBody641_334

def sourceBody641_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_335 sourceBody641_3

def sourceBody641_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_336 sourceBody641_0

def sourceBody641_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_167 sourceBody641_337

def sourceBody641_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_166 sourceBody641_338

def sourceBody641_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_162 sourceBody641_339

def sourceBody641_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_161 sourceBody641_340

def sourceBody641_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def sourceBody641_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody641_344 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody641_0, 641, 48)) (some 636) ([64, 22, 50, 36]) (some (64, sourceBody641_170, 641, 49))

def sourceBody641_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_344 sourceBody641_3

def sourceBody641_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_345 sourceBody641_0

def sourceBody641_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_343 sourceBody641_346

def sourceBody641_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_342 sourceBody641_347

def sourceBody641_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_243 sourceBody641_348

def sourceBody641_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_168 sourceBody641_349

def sourceBody641_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_350

def sourceBody641_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_351

def sourceBody641_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_341 sourceBody641_352

def sourceBody641_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 20)

def sourceBody641_355 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody641_0, 641, 50)) (some 70) ([64]) (some (64, sourceBody641_170, 641, 51))

def sourceBody641_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_355 sourceBody641_3

def sourceBody641_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_356 sourceBody641_0

def sourceBody641_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_354 sourceBody641_357

def sourceBody641_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_358

def sourceBody641_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_359

def sourceBody641_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_353 sourceBody641_360

def sourceBody641_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody641_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody641_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_363 sourceBody641_0

def sourceBody641_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_362 sourceBody641_364

def sourceBody641_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_361 sourceBody641_365

def sourceBody641_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_160 sourceBody641_366

def sourceBody641_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_367

def sourceBody641_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_368

def sourceBody641_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_153 sourceBody641_369

def sourceBody641_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_119 sourceBody641_370

def sourceBody641_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_371

def sourceBody641_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_372

def sourceBody641_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_113 sourceBody641_373

def sourceBody641_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_374

def sourceBody641_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_375

def sourceBody641_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_107 sourceBody641_376

def sourceBody641_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_377

def sourceBody641_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_378

def sourceBody641_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_101 sourceBody641_379

def sourceBody641_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_380

def sourceBody641_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_381

def sourceBody641_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_95 sourceBody641_382

def sourceBody641_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_383

def sourceBody641_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_384

def sourceBody641_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_89 sourceBody641_385

def sourceBody641_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_386

def sourceBody641_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_387

def sourceBody641_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_83 sourceBody641_388

def sourceBody641_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_389

def sourceBody641_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_390

def sourceBody641_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_77 sourceBody641_391

def sourceBody641_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_392

def sourceBody641_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_393

def sourceBody641_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_69 sourceBody641_394

def sourceBody641_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_395

def sourceBody641_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_68 sourceBody641_396

def sourceBody641_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_31 sourceBody641_397

def sourceBody641_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_398

def sourceBody641_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_399

def sourceBody641_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_24 sourceBody641_400

def sourceBody641_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_12 sourceBody641_401

def sourceBody641_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_402

def sourceBody641_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_403

def sourceBody641_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_6 sourceBody641_404

def sourceBody641_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_405

def sourceBody641_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_5 sourceBody641_406

def sourceBody641_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_407

def sourceBody641_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody641_0 sourceBody641_408

def source641 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (641, 8, sourceBody641_409)
end InitECandidate.Proofs.WordStages
