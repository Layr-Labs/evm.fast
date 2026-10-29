import InitECandidate.Proofs.WordStages.Source785
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody801_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody801_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody801_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 2)) (some 69) ([]) (some (14, sourceBody801_1, 801, 3))

def sourceBody801_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody801_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_2 sourceBody801_3

def sourceBody801_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_4 sourceBody801_0

def sourceBody801_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1056#64)

def sourceBody801_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody801_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 4)) (some 68) ([44]) (some (44, sourceBody801_7, 801, 5))

def sourceBody801_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_8 sourceBody801_3

def sourceBody801_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_9 sourceBody801_0

def sourceBody801_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_6 sourceBody801_10

def sourceBody801_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 14)

def sourceBody801_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody801_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody801_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody801_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody801_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody801_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 576#64])

def sourceBody801_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 672#64])

def sourceBody801_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 768#64])

def sourceBody801_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 864#64])

def sourceBody801_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 960#64])

def sourceBody801_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody801_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody801_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody801_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 6)) (some 740) ([38, 24]) (some (38, sourceBody801_25, 801, 7))

def sourceBody801_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_26 sourceBody801_3

def sourceBody801_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_27 sourceBody801_0

def sourceBody801_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_24 sourceBody801_28

def sourceBody801_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_23 sourceBody801_29

def sourceBody801_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_30

def sourceBody801_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_31

def sourceBody801_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody801_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4736#64])

def sourceBody801_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 44)

def sourceBody801_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 8)) (some 739) ([38, 24, 58]) (some (38, sourceBody801_25, 801, 9))

def sourceBody801_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_36 sourceBody801_3

def sourceBody801_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_37 sourceBody801_0

def sourceBody801_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_35 sourceBody801_38

def sourceBody801_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_34 sourceBody801_39

def sourceBody801_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_33 sourceBody801_40

def sourceBody801_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_41

def sourceBody801_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_42

def sourceBody801_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_32 sourceBody801_43

def sourceBody801_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 62)

def sourceBody801_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody801_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 10)) (some 740) ([38, 24]) (some (38, sourceBody801_25, 801, 11))

def sourceBody801_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_47 sourceBody801_3

def sourceBody801_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_48 sourceBody801_0

def sourceBody801_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_46 sourceBody801_49

def sourceBody801_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_45 sourceBody801_50

def sourceBody801_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_51

def sourceBody801_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_52

def sourceBody801_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_44 sourceBody801_53

def sourceBody801_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 62)

def sourceBody801_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 12)) (some 734) ([38, 24, 58]) (some (38, sourceBody801_25, 801, 13))

def sourceBody801_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_56 sourceBody801_3

def sourceBody801_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_57 sourceBody801_0

def sourceBody801_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_55 sourceBody801_58

def sourceBody801_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_46 sourceBody801_59

def sourceBody801_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_45 sourceBody801_60

def sourceBody801_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_61

def sourceBody801_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_62

def sourceBody801_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_54 sourceBody801_63

def sourceBody801_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody801_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4544#64])

def sourceBody801_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 14)) (some 739) ([38, 24, 58]) (some (38, sourceBody801_25, 801, 15))

def sourceBody801_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_67 sourceBody801_3

def sourceBody801_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_68 sourceBody801_0

def sourceBody801_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_55 sourceBody801_69

def sourceBody801_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_66 sourceBody801_70

def sourceBody801_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_65 sourceBody801_71

def sourceBody801_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_72

def sourceBody801_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_73

def sourceBody801_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_64 sourceBody801_74

def sourceBody801_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody801_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 16)) (some 736) ([38, 24]) (some (38, sourceBody801_25, 801, 17))

def sourceBody801_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_77 sourceBody801_3

def sourceBody801_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_78 sourceBody801_0

def sourceBody801_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_76 sourceBody801_79

def sourceBody801_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_65 sourceBody801_80

def sourceBody801_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_81

def sourceBody801_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_82

def sourceBody801_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_75 sourceBody801_83

def sourceBody801_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 18)) (some 731) ([38]) (some (38, sourceBody801_25, 801, 19))

def sourceBody801_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_86 sourceBody801_3

def sourceBody801_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_87 sourceBody801_0

def sourceBody801_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_85 sourceBody801_88

def sourceBody801_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_89

def sourceBody801_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_90

def sourceBody801_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_84 sourceBody801_91

def sourceBody801_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 62)

def sourceBody801_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 20)) (some 734) ([38, 24, 58]) (some (38, sourceBody801_25, 801, 21))

def sourceBody801_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_95 sourceBody801_3

def sourceBody801_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_96 sourceBody801_0

def sourceBody801_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_94 sourceBody801_97

def sourceBody801_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_93 sourceBody801_98

def sourceBody801_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_45 sourceBody801_99

def sourceBody801_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_100

def sourceBody801_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_101

def sourceBody801_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_92 sourceBody801_102

def sourceBody801_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody801_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4640#64])

def sourceBody801_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 22)) (some 739) ([38, 24, 58]) (some (38, sourceBody801_25, 801, 23))

def sourceBody801_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_106 sourceBody801_3

def sourceBody801_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_107 sourceBody801_0

def sourceBody801_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_55 sourceBody801_108

def sourceBody801_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_105 sourceBody801_109

def sourceBody801_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_104 sourceBody801_110

def sourceBody801_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_111

def sourceBody801_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_112

def sourceBody801_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_103 sourceBody801_113

def sourceBody801_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 24)) (some 732) ([38]) (some (38, sourceBody801_25, 801, 25))

def sourceBody801_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_115 sourceBody801_3

def sourceBody801_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_116 sourceBody801_0

def sourceBody801_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_65 sourceBody801_117

def sourceBody801_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody801_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_123 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 58) sourceBody801_121 sourceBody801_122

def sourceBody801_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_123 sourceBody801_3

def sourceBody801_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody801_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4736#64])

def sourceBody801_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4544#64])

def sourceBody801_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody801_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 26)) (some 739) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 27))

def sourceBody801_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_129 sourceBody801_3

def sourceBody801_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_130 sourceBody801_0

def sourceBody801_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_127 sourceBody801_131

def sourceBody801_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_126 sourceBody801_132

def sourceBody801_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_76 sourceBody801_133

def sourceBody801_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_134

def sourceBody801_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_135

def sourceBody801_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody801_136 sourceBody801_0

def sourceBody801_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_137 sourceBody801_3

def sourceBody801_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_138 sourceBody801_0

def sourceBody801_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_125 sourceBody801_139

def sourceBody801_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_124 sourceBody801_140

def sourceBody801_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_120 sourceBody801_141

def sourceBody801_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_119 sourceBody801_142

def sourceBody801_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 10)

def sourceBody801_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 28)) (some 740) ([24, 58]) (some (24, sourceBody801_128, 801, 29))

def sourceBody801_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_146 sourceBody801_3

def sourceBody801_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_147 sourceBody801_0

def sourceBody801_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_145 sourceBody801_148

def sourceBody801_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_144 sourceBody801_149

def sourceBody801_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_150

def sourceBody801_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_151

def sourceBody801_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_143 sourceBody801_152

def sourceBody801_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody801_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody801_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 30)) (some 739) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 31))

def sourceBody801_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_156 sourceBody801_3

def sourceBody801_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_157 sourceBody801_0

def sourceBody801_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_155 sourceBody801_158

def sourceBody801_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_94 sourceBody801_159

def sourceBody801_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_154 sourceBody801_160

def sourceBody801_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_161

def sourceBody801_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_162

def sourceBody801_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_153 sourceBody801_163

def sourceBody801_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 60)

def sourceBody801_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4544#64])

def sourceBody801_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 40)

def sourceBody801_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 32)) (some 739) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 33))

def sourceBody801_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_168 sourceBody801_3

def sourceBody801_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_169 sourceBody801_0

def sourceBody801_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_167 sourceBody801_170

def sourceBody801_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_166 sourceBody801_171

def sourceBody801_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_165 sourceBody801_172

def sourceBody801_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_173

def sourceBody801_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_174

def sourceBody801_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_164 sourceBody801_175

def sourceBody801_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 60)

def sourceBody801_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 34)) (some 739) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 35))

def sourceBody801_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_179 sourceBody801_3

def sourceBody801_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_180 sourceBody801_0

def sourceBody801_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_178 sourceBody801_181

def sourceBody801_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_177 sourceBody801_182

def sourceBody801_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_165 sourceBody801_183

def sourceBody801_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_184

def sourceBody801_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_185

def sourceBody801_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_176 sourceBody801_186

def sourceBody801_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 40)

def sourceBody801_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 36)) (some 740) ([24, 58]) (some (24, sourceBody801_128, 801, 37))

def sourceBody801_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_189 sourceBody801_3

def sourceBody801_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_190 sourceBody801_0

def sourceBody801_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_188 sourceBody801_191

def sourceBody801_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_144 sourceBody801_192

def sourceBody801_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_193

def sourceBody801_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_194

def sourceBody801_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_187 sourceBody801_195

def sourceBody801_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 38)) (some 739) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 39))

def sourceBody801_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_197 sourceBody801_3

def sourceBody801_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_198 sourceBody801_0

def sourceBody801_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_167 sourceBody801_199

def sourceBody801_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_94 sourceBody801_200

def sourceBody801_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_144 sourceBody801_201

def sourceBody801_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_202

def sourceBody801_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_203

def sourceBody801_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_196 sourceBody801_204

def sourceBody801_206 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 40)) (some 734) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 41))

def sourceBody801_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_206 sourceBody801_3

def sourceBody801_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_207 sourceBody801_0

def sourceBody801_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_178 sourceBody801_208

def sourceBody801_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_177 sourceBody801_209

def sourceBody801_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_165 sourceBody801_210

def sourceBody801_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_211

def sourceBody801_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_212

def sourceBody801_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_205 sourceBody801_213

def sourceBody801_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4640#64])

def sourceBody801_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody801_217 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 42)) (some 739) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 43))

def sourceBody801_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_217 sourceBody801_3

def sourceBody801_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_218 sourceBody801_0

def sourceBody801_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_216 sourceBody801_219

def sourceBody801_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_215 sourceBody801_220

def sourceBody801_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_144 sourceBody801_221

def sourceBody801_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_222

def sourceBody801_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_223

def sourceBody801_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_214 sourceBody801_224

def sourceBody801_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 44)) (some 734) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 45))

def sourceBody801_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_226 sourceBody801_3

def sourceBody801_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_227 sourceBody801_0

def sourceBody801_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_178 sourceBody801_228

def sourceBody801_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_177 sourceBody801_229

def sourceBody801_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_165 sourceBody801_230

def sourceBody801_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_231

def sourceBody801_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_232

def sourceBody801_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_225 sourceBody801_233

def sourceBody801_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody801_236 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 46)) (some 800) ([24, 58, 16]) (some (24, sourceBody801_128, 801, 47))

def sourceBody801_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_236 sourceBody801_3

def sourceBody801_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_237 sourceBody801_0

def sourceBody801_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_216 sourceBody801_238

def sourceBody801_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_177 sourceBody801_239

def sourceBody801_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_235 sourceBody801_240

def sourceBody801_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 50)

def sourceBody801_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 44)

def sourceBody801_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 4)

def sourceBody801_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody801_246 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 48)) (some 739) ([58, 16, 48]) (some (58, sourceBody801_245, 801, 49))

def sourceBody801_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_246 sourceBody801_3

def sourceBody801_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_247 sourceBody801_0

def sourceBody801_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_244 sourceBody801_248

def sourceBody801_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_243 sourceBody801_249

def sourceBody801_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_242 sourceBody801_250

def sourceBody801_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_251

def sourceBody801_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_252

def sourceBody801_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody801_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 50)

def sourceBody801_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 50)) (some 739) ([58, 16, 48]) (some (58, sourceBody801_245, 801, 51))

def sourceBody801_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_256 sourceBody801_3

def sourceBody801_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_257 sourceBody801_0

def sourceBody801_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_255 sourceBody801_258

def sourceBody801_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_254 sourceBody801_259

def sourceBody801_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_242 sourceBody801_260

def sourceBody801_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_261

def sourceBody801_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_262

def sourceBody801_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_253 sourceBody801_263

def sourceBody801_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody801_266 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 52)) (some 740) ([58, 16]) (some (58, sourceBody801_245, 801, 53))

def sourceBody801_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_266 sourceBody801_3

def sourceBody801_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_267 sourceBody801_0

def sourceBody801_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_265 sourceBody801_268

def sourceBody801_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_94 sourceBody801_269

def sourceBody801_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_270

def sourceBody801_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_271

def sourceBody801_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_264 sourceBody801_272

def sourceBody801_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 30)

def sourceBody801_275 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 54)) (some 739) ([58, 16, 48]) (some (58, sourceBody801_245, 801, 55))

def sourceBody801_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_275 sourceBody801_3

def sourceBody801_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_276 sourceBody801_0

def sourceBody801_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_274 sourceBody801_277

def sourceBody801_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_178 sourceBody801_278

def sourceBody801_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_94 sourceBody801_279

def sourceBody801_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_280

def sourceBody801_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_281

def sourceBody801_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_273 sourceBody801_282

def sourceBody801_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 68)

def sourceBody801_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 60)

def sourceBody801_286 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 56)) (some 739) ([58, 16, 48]) (some (58, sourceBody801_245, 801, 57))

def sourceBody801_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_286 sourceBody801_3

def sourceBody801_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_287 sourceBody801_0

def sourceBody801_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_285 sourceBody801_288

def sourceBody801_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_178 sourceBody801_289

def sourceBody801_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_284 sourceBody801_290

def sourceBody801_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_291

def sourceBody801_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_292

def sourceBody801_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_283 sourceBody801_293

def sourceBody801_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 58)

def sourceBody801_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody801_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_300 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 48 (Flapjack.WordRegImm.reg 34) sourceBody801_298 sourceBody801_299

def sourceBody801_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_300 sourceBody801_3

def sourceBody801_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 48)

def sourceBody801_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody801_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 66 66 48 34))

def sourceBody801_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 4832#64, Flapjack.WordLangExpHOL.var 66])

def sourceBody801_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 50)

def sourceBody801_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody801_309 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 58)) (some 739) ([12, 42, 28]) (some (48, sourceBody801_308, 801, 59))

def sourceBody801_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_309 sourceBody801_3

def sourceBody801_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_310 sourceBody801_0

def sourceBody801_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_307 sourceBody801_311

def sourceBody801_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_306 sourceBody801_312

def sourceBody801_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_305 sourceBody801_313

def sourceBody801_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_304 sourceBody801_314

def sourceBody801_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_303 sourceBody801_315

def sourceBody801_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_296 sourceBody801_316

def sourceBody801_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_317

def sourceBody801_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_318

def sourceBody801_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 62)

def sourceBody801_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_322 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 60)) (some 740) ([48, 34]) (some (48, sourceBody801_308, 801, 61))

def sourceBody801_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_322 sourceBody801_3

def sourceBody801_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_323 sourceBody801_0

def sourceBody801_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_321 sourceBody801_324

def sourceBody801_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_320 sourceBody801_325

def sourceBody801_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_326

def sourceBody801_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_327

def sourceBody801_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_319 sourceBody801_328

def sourceBody801_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 62)

def sourceBody801_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 26)

def sourceBody801_332 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 62)) (some 739) ([48, 34, 66]) (some (48, sourceBody801_308, 801, 63))

def sourceBody801_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_332 sourceBody801_3

def sourceBody801_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_333 sourceBody801_0

def sourceBody801_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_331 sourceBody801_334

def sourceBody801_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_330 sourceBody801_335

def sourceBody801_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_320 sourceBody801_336

def sourceBody801_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_337

def sourceBody801_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_338

def sourceBody801_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_329 sourceBody801_339

def sourceBody801_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 68)

def sourceBody801_342 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 64)) (some 735) ([48, 34, 66]) (some (48, sourceBody801_308, 801, 65))

def sourceBody801_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_342 sourceBody801_3

def sourceBody801_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_343 sourceBody801_0

def sourceBody801_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_341 sourceBody801_344

def sourceBody801_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_330 sourceBody801_345

def sourceBody801_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_320 sourceBody801_346

def sourceBody801_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_347

def sourceBody801_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_348

def sourceBody801_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_340 sourceBody801_349

def sourceBody801_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 66)) (some 732) ([48]) (some (48, sourceBody801_308, 801, 67))

def sourceBody801_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_351 sourceBody801_3

def sourceBody801_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_352 sourceBody801_0

def sourceBody801_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_320 sourceBody801_353

def sourceBody801_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody801_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_359 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 66) sourceBody801_357 sourceBody801_358

def sourceBody801_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_359 sourceBody801_3

def sourceBody801_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody801_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_364 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 28) sourceBody801_363 sourceBody801_361

def sourceBody801_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_364 sourceBody801_3

def sourceBody801_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 38)

def sourceBody801_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_370 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 52) sourceBody801_368 sourceBody801_369

def sourceBody801_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_370 sourceBody801_3

def sourceBody801_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody801_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_375 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 70 (Flapjack.WordRegImm.reg 6) sourceBody801_374 sourceBody801_372

def sourceBody801_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_375 sourceBody801_3

def sourceBody801_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody801_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_381 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 56) sourceBody801_379 sourceBody801_380

def sourceBody801_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_381 sourceBody801_3

def sourceBody801_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody801_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody801_386 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.reg 32) sourceBody801_385 sourceBody801_383

def sourceBody801_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_386 sourceBody801_3

def sourceBody801_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 70, Flapjack.WordLangExpHOL.var 46])

def sourceBody801_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody801_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 36)

def sourceBody801_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody801_392 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 68)) (some 729) ([34, 66]) (some (34, sourceBody801_391, 801, 69))

def sourceBody801_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_392 sourceBody801_3

def sourceBody801_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_393 sourceBody801_0

def sourceBody801_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_390 sourceBody801_394

def sourceBody801_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_389 sourceBody801_395

def sourceBody801_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_396

def sourceBody801_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_397

def sourceBody801_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_121 sourceBody801_0

def sourceBody801_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_399 sourceBody801_0

def sourceBody801_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_398 sourceBody801_400

def sourceBody801_402 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 64 (Flapjack.WordRegImm.imm 0#64) sourceBody801_401 sourceBody801_0

def sourceBody801_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_402 sourceBody801_3

def sourceBody801_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_403 sourceBody801_0

def sourceBody801_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_388 sourceBody801_404

def sourceBody801_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_387 sourceBody801_405

def sourceBody801_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_384 sourceBody801_406

def sourceBody801_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_383 sourceBody801_407

def sourceBody801_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_382 sourceBody801_408

def sourceBody801_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_378 sourceBody801_409

def sourceBody801_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_377 sourceBody801_410

def sourceBody801_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_376 sourceBody801_411

def sourceBody801_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_373 sourceBody801_412

def sourceBody801_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_372 sourceBody801_413

def sourceBody801_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_371 sourceBody801_414

def sourceBody801_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_367 sourceBody801_415

def sourceBody801_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_366 sourceBody801_416

def sourceBody801_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_365 sourceBody801_417

def sourceBody801_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_362 sourceBody801_418

def sourceBody801_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_361 sourceBody801_419

def sourceBody801_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_360 sourceBody801_420

def sourceBody801_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_356 sourceBody801_421

def sourceBody801_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_355 sourceBody801_422

def sourceBody801_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody801_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 48)

def sourceBody801_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_425 sourceBody801_0

def sourceBody801_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_426 sourceBody801_0

def sourceBody801_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_424 sourceBody801_427

def sourceBody801_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_428

def sourceBody801_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_423 sourceBody801_429

def sourceBody801_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_354 sourceBody801_430

def sourceBody801_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_431

def sourceBody801_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_432

def sourceBody801_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_350 sourceBody801_433

def sourceBody801_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody801_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_434 sourceBody801_435

def sourceBody801_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody801_438 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.imm 0#64) sourceBody801_436 sourceBody801_437

def sourceBody801_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_438 sourceBody801_3

def sourceBody801_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_439 sourceBody801_0

def sourceBody801_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_302 sourceBody801_440

def sourceBody801_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_301 sourceBody801_441

def sourceBody801_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_297 sourceBody801_442

def sourceBody801_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_296 sourceBody801_443

def sourceBody801_445 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody801_444 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody801_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_445 sourceBody801_3

def sourceBody801_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_3 sourceBody801_446

def sourceBody801_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody801_449 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 48 (Flapjack.WordRegImm.reg 34) sourceBody801_298 sourceBody801_299

def sourceBody801_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_449 sourceBody801_3

def sourceBody801_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 40)

def sourceBody801_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody801_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 30)

def sourceBody801_454 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 70)) (some 739) ([48, 34, 66]) (some (48, sourceBody801_308, 801, 71))

def sourceBody801_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_454 sourceBody801_3

def sourceBody801_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_455 sourceBody801_0

def sourceBody801_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_453 sourceBody801_456

def sourceBody801_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_452 sourceBody801_457

def sourceBody801_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_451 sourceBody801_458

def sourceBody801_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_459

def sourceBody801_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_460

def sourceBody801_462 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.imm 0#64) sourceBody801_461 sourceBody801_0

def sourceBody801_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_462 sourceBody801_3

def sourceBody801_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_463 sourceBody801_0

def sourceBody801_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_302 sourceBody801_464

def sourceBody801_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_450 sourceBody801_465

def sourceBody801_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_358 sourceBody801_466

def sourceBody801_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_448 sourceBody801_467

def sourceBody801_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_447 sourceBody801_468

def sourceBody801_470 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 72)) (some 745) ([48]) (some (48, sourceBody801_308, 801, 73))

def sourceBody801_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_470 sourceBody801_3

def sourceBody801_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_471 sourceBody801_0

def sourceBody801_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_244 sourceBody801_472

def sourceBody801_474 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 74)) (some 745) ([34]) (some (34, sourceBody801_391, 801, 75))

def sourceBody801_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_474 sourceBody801_3

def sourceBody801_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_475 sourceBody801_0

def sourceBody801_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_389 sourceBody801_476

def sourceBody801_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 16)

def sourceBody801_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 48)

def sourceBody801_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody801_481 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.reg 12) sourceBody801_356 sourceBody801_480

def sourceBody801_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_481 sourceBody801_3

def sourceBody801_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 66)

def sourceBody801_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 18)

def sourceBody801_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody801_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody801_487 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 76)) (some 736) ([66, 12]) (some (66, sourceBody801_486, 801, 77))

def sourceBody801_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_487 sourceBody801_3

def sourceBody801_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_488 sourceBody801_0

def sourceBody801_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_485 sourceBody801_489

def sourceBody801_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_484 sourceBody801_490

def sourceBody801_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_491

def sourceBody801_493 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_492

def sourceBody801_494 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody801_493 sourceBody801_0

def sourceBody801_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_494 sourceBody801_3

def sourceBody801_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_495 sourceBody801_0

def sourceBody801_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_483 sourceBody801_496

def sourceBody801_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_482 sourceBody801_497

def sourceBody801_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_479 sourceBody801_498

def sourceBody801_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_478 sourceBody801_499

def sourceBody801_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 10)

def sourceBody801_502 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 78)) (some 739) ([66, 12, 42]) (some (66, sourceBody801_486, 801, 79))

def sourceBody801_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_502 sourceBody801_3

def sourceBody801_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_503 sourceBody801_0

def sourceBody801_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_501 sourceBody801_504

def sourceBody801_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_485 sourceBody801_505

def sourceBody801_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_484 sourceBody801_506

def sourceBody801_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_507

def sourceBody801_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_508

def sourceBody801_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_500 sourceBody801_509

def sourceBody801_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 2)

def sourceBody801_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 40)

def sourceBody801_513 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 80)) (some 729) ([66, 12]) (some (66, sourceBody801_486, 801, 81))

def sourceBody801_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_513 sourceBody801_3

def sourceBody801_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_514 sourceBody801_0

def sourceBody801_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_512 sourceBody801_515

def sourceBody801_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_511 sourceBody801_516

def sourceBody801_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_517

def sourceBody801_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_518

def sourceBody801_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_510 sourceBody801_519

def sourceBody801_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody801_522 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 82)) (some 729) ([66, 12]) (some (66, sourceBody801_486, 801, 83))

def sourceBody801_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_522 sourceBody801_3

def sourceBody801_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_523 sourceBody801_0

def sourceBody801_525 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_485 sourceBody801_524

def sourceBody801_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_521 sourceBody801_525

def sourceBody801_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_526

def sourceBody801_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_527

def sourceBody801_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_520 sourceBody801_528

def sourceBody801_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody801_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody801_532 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody801_0, 801, 84)) (some 729) ([66, 12]) (some (66, sourceBody801_486, 801, 85))

def sourceBody801_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_532 sourceBody801_3

def sourceBody801_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_533 sourceBody801_0

def sourceBody801_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_531 sourceBody801_534

def sourceBody801_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_530 sourceBody801_535

def sourceBody801_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_536

def sourceBody801_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_537

def sourceBody801_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_529 sourceBody801_538

def sourceBody801_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 54)

def sourceBody801_541 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody801_0, 801, 86)) (some 70) ([66]) (some (66, sourceBody801_486, 801, 87))

def sourceBody801_542 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_541 sourceBody801_3

def sourceBody801_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_542 sourceBody801_0

def sourceBody801_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_540 sourceBody801_543

def sourceBody801_545 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_544

def sourceBody801_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_545

def sourceBody801_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_539 sourceBody801_546

def sourceBody801_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody801_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_548 sourceBody801_0

def sourceBody801_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_358 sourceBody801_549

def sourceBody801_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_547 sourceBody801_550

def sourceBody801_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_477 sourceBody801_551

def sourceBody801_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_552

def sourceBody801_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_553

def sourceBody801_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_473 sourceBody801_554

def sourceBody801_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_555

def sourceBody801_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_556

def sourceBody801_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_469 sourceBody801_557

def sourceBody801_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_295 sourceBody801_558

def sourceBody801_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_559

def sourceBody801_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_122 sourceBody801_560

def sourceBody801_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_561

def sourceBody801_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_294 sourceBody801_562

def sourceBody801_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_241 sourceBody801_563

def sourceBody801_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_564

def sourceBody801_566 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_565

def sourceBody801_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_234 sourceBody801_566

def sourceBody801_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_118 sourceBody801_567

def sourceBody801_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_568

def sourceBody801_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_569

def sourceBody801_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_114 sourceBody801_570

def sourceBody801_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_22 sourceBody801_571

def sourceBody801_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_572

def sourceBody801_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_21 sourceBody801_573

def sourceBody801_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_574

def sourceBody801_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_20 sourceBody801_575

def sourceBody801_577 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_576

def sourceBody801_578 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_19 sourceBody801_577

def sourceBody801_579 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_578

def sourceBody801_580 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_18 sourceBody801_579

def sourceBody801_581 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_580

def sourceBody801_582 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_17 sourceBody801_581

def sourceBody801_583 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_582

def sourceBody801_584 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_16 sourceBody801_583

def sourceBody801_585 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_584

def sourceBody801_586 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_15 sourceBody801_585

def sourceBody801_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_586

def sourceBody801_588 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_14 sourceBody801_587

def sourceBody801_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_588

def sourceBody801_590 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_13 sourceBody801_589

def sourceBody801_591 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_590

def sourceBody801_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_12 sourceBody801_591

def sourceBody801_593 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_592

def sourceBody801_594 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_11 sourceBody801_593

def sourceBody801_595 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_594

def sourceBody801_596 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_595

def sourceBody801_597 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_5 sourceBody801_596

def sourceBody801_598 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_597

def sourceBody801_599 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody801_0 sourceBody801_598

def source801 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (801, 3, sourceBody801_599)
end InitECandidate.Proofs.WordStages
