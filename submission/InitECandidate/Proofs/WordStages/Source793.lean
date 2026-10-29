import InitECandidate.Proofs.WordStages.Source777
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody793_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody793_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody793_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 2)) (some 69) ([]) (some (32, sourceBody793_1, 793, 3))

def sourceBody793_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody793_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_2 sourceBody793_3

def sourceBody793_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_4 sourceBody793_0

def sourceBody793_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody793_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody793_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 4)) (some 68) ([52]) (some (52, sourceBody793_7, 793, 5))

def sourceBody793_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_8 sourceBody793_3

def sourceBody793_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_9 sourceBody793_0

def sourceBody793_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_6 sourceBody793_10

def sourceBody793_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody793_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody793_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 6)) (some 68) ([42]) (some (42, sourceBody793_13, 793, 7))

def sourceBody793_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_14 sourceBody793_3

def sourceBody793_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_15 sourceBody793_0

def sourceBody793_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_12 sourceBody793_16

def sourceBody793_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 32)

def sourceBody793_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody793_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody793_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 8)) (some 729) ([60, 36]) (some (60, sourceBody793_20, 793, 9))

def sourceBody793_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_21 sourceBody793_3

def sourceBody793_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_22 sourceBody793_0

def sourceBody793_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_19 sourceBody793_23

def sourceBody793_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_18 sourceBody793_24

def sourceBody793_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_25

def sourceBody793_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_26

def sourceBody793_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody793_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody793_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 10)) (some 729) ([60, 36]) (some (60, sourceBody793_20, 793, 11))

def sourceBody793_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_30 sourceBody793_3

def sourceBody793_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_31 sourceBody793_0

def sourceBody793_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_29 sourceBody793_32

def sourceBody793_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_28 sourceBody793_33

def sourceBody793_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_34

def sourceBody793_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_35

def sourceBody793_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_27 sourceBody793_36

def sourceBody793_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody793_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 12)) (some 731) ([60]) (some (60, sourceBody793_20, 793, 13))

def sourceBody793_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_39 sourceBody793_3

def sourceBody793_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_40 sourceBody793_0

def sourceBody793_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_38 sourceBody793_41

def sourceBody793_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_42

def sourceBody793_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_43

def sourceBody793_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_37 sourceBody793_44

def sourceBody793_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 2)

def sourceBody793_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 14)) (some 756) ([60]) (some (60, sourceBody793_20, 793, 15))

def sourceBody793_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_47 sourceBody793_3

def sourceBody793_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_48 sourceBody793_0

def sourceBody793_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_46 sourceBody793_49

def sourceBody793_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_50

def sourceBody793_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_51

def sourceBody793_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_45 sourceBody793_52

def sourceBody793_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1376#64]))

def sourceBody793_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 63#64)

def sourceBody793_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody793_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 60)

def sourceBody793_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody793_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 56 (Flapjack.WordRegImm.reg 46) sourceBody793_58 sourceBody793_56

def sourceBody793_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_59 sourceBody793_3

def sourceBody793_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 56)

def sourceBody793_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody793_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 36)

def sourceBody793_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_63 sourceBody793_0

def sourceBody793_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_64 sourceBody793_0

def sourceBody793_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_62 sourceBody793_65

def sourceBody793_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_66

def sourceBody793_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 2)

def sourceBody793_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody793_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 2)

def sourceBody793_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody793_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 16)) (some 758) ([56, 46, 64]) (some (56, sourceBody793_71, 793, 17))

def sourceBody793_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_72 sourceBody793_3

def sourceBody793_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_73 sourceBody793_0

def sourceBody793_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_70 sourceBody793_74

def sourceBody793_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_69 sourceBody793_75

def sourceBody793_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_68 sourceBody793_76

def sourceBody793_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_77

def sourceBody793_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_78

def sourceBody793_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_67 sourceBody793_79

def sourceBody793_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 32)

def sourceBody793_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody793_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 18)) (some 790) ([56, 46]) (some (56, sourceBody793_71, 793, 19))

def sourceBody793_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_83 sourceBody793_3

def sourceBody793_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_84 sourceBody793_0

def sourceBody793_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_82 sourceBody793_85

def sourceBody793_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_81 sourceBody793_86

def sourceBody793_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_87

def sourceBody793_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_88

def sourceBody793_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_80 sourceBody793_89

def sourceBody793_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 4)

def sourceBody793_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody793_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 8)

def sourceBody793_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 10)

def sourceBody793_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 12)

def sourceBody793_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def sourceBody793_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 16)

def sourceBody793_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 18)

def sourceBody793_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 20)

def sourceBody793_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody793_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 24)

def sourceBody793_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def sourceBody793_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 20)) (some 792) ([56, 46, 64, 34, 54, 44, 62, 38, 58, 48, 68, 30, 50, 40]) (some (56, sourceBody793_71, 793, 21))

def sourceBody793_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_103 sourceBody793_3

def sourceBody793_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_104 sourceBody793_0

def sourceBody793_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_102 sourceBody793_105

def sourceBody793_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_101 sourceBody793_106

def sourceBody793_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_100 sourceBody793_107

def sourceBody793_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_99 sourceBody793_108

def sourceBody793_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_98 sourceBody793_109

def sourceBody793_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_97 sourceBody793_110

def sourceBody793_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_96 sourceBody793_111

def sourceBody793_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_95 sourceBody793_112

def sourceBody793_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_94 sourceBody793_113

def sourceBody793_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_93 sourceBody793_114

def sourceBody793_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_92 sourceBody793_115

def sourceBody793_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_91 sourceBody793_116

def sourceBody793_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_82 sourceBody793_117

def sourceBody793_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_68 sourceBody793_118

def sourceBody793_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_119

def sourceBody793_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_120

def sourceBody793_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_90 sourceBody793_121

def sourceBody793_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 42) (Flapjack.WordLangExpHOL.var 60),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody793_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody793_125 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 56 (Flapjack.WordRegImm.reg 46) sourceBody793_58 sourceBody793_56

def sourceBody793_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_125 sourceBody793_3

def sourceBody793_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def sourceBody793_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody793_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 52)

def sourceBody793_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 22)) (some 791) ([56, 46, 64, 34]) (some (56, sourceBody793_71, 793, 23))

def sourceBody793_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_130 sourceBody793_3

def sourceBody793_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_131 sourceBody793_0

def sourceBody793_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_129 sourceBody793_132

def sourceBody793_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_128 sourceBody793_133

def sourceBody793_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_127 sourceBody793_134

def sourceBody793_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_81 sourceBody793_135

def sourceBody793_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_136

def sourceBody793_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_137

def sourceBody793_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 24)) (some 792) ([56, 46, 64, 34, 54, 44, 62, 38, 58, 48, 68, 30, 50, 40]) (some (56, sourceBody793_71, 793, 25))

def sourceBody793_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_139 sourceBody793_3

def sourceBody793_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_140 sourceBody793_0

def sourceBody793_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_102 sourceBody793_141

def sourceBody793_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_101 sourceBody793_142

def sourceBody793_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_100 sourceBody793_143

def sourceBody793_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_99 sourceBody793_144

def sourceBody793_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_98 sourceBody793_145

def sourceBody793_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_97 sourceBody793_146

def sourceBody793_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_96 sourceBody793_147

def sourceBody793_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_95 sourceBody793_148

def sourceBody793_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_94 sourceBody793_149

def sourceBody793_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_93 sourceBody793_150

def sourceBody793_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_92 sourceBody793_151

def sourceBody793_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_91 sourceBody793_152

def sourceBody793_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_82 sourceBody793_153

def sourceBody793_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_68 sourceBody793_154

def sourceBody793_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_155

def sourceBody793_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_156

def sourceBody793_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_138 sourceBody793_157

def sourceBody793_159 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 64 (Flapjack.WordRegImm.imm 0#64) sourceBody793_158 sourceBody793_0

def sourceBody793_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_159 sourceBody793_3

def sourceBody793_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_160 sourceBody793_0

def sourceBody793_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_61 sourceBody793_161

def sourceBody793_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_126 sourceBody793_162

def sourceBody793_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_124 sourceBody793_163

def sourceBody793_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_123 sourceBody793_164

def sourceBody793_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_122 sourceBody793_165

def sourceBody793_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody793_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_166 sourceBody793_167

def sourceBody793_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody793_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 64 (Flapjack.WordRegImm.imm 0#64) sourceBody793_168 sourceBody793_169

def sourceBody793_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_170 sourceBody793_3

def sourceBody793_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_171 sourceBody793_0

def sourceBody793_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_61 sourceBody793_172

def sourceBody793_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_60 sourceBody793_173

def sourceBody793_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_57 sourceBody793_174

def sourceBody793_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_56 sourceBody793_175

def sourceBody793_177 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody793_176 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody793_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_177 sourceBody793_3

def sourceBody793_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_3 sourceBody793_178

def sourceBody793_180 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody793_0, 793, 26)) (some 760) ([56, 46]) (some (56, sourceBody793_71, 793, 27))

def sourceBody793_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_180 sourceBody793_3

def sourceBody793_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_181 sourceBody793_0

def sourceBody793_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_69 sourceBody793_182

def sourceBody793_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_68 sourceBody793_183

def sourceBody793_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_184

def sourceBody793_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_185

def sourceBody793_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_179 sourceBody793_186

def sourceBody793_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 66)

def sourceBody793_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody793_0, 793, 28)) (some 70) ([56]) (some (56, sourceBody793_71, 793, 29))

def sourceBody793_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_189 sourceBody793_3

def sourceBody793_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_190 sourceBody793_0

def sourceBody793_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_188 sourceBody793_191

def sourceBody793_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_192

def sourceBody793_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_193

def sourceBody793_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_187 sourceBody793_194

def sourceBody793_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody793_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody793_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_197 sourceBody793_0

def sourceBody793_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_196 sourceBody793_198

def sourceBody793_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_195 sourceBody793_199

def sourceBody793_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_55 sourceBody793_200

def sourceBody793_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_201

def sourceBody793_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_54 sourceBody793_202

def sourceBody793_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_203

def sourceBody793_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_53 sourceBody793_204

def sourceBody793_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_17 sourceBody793_205

def sourceBody793_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_206

def sourceBody793_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_207

def sourceBody793_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_11 sourceBody793_208

def sourceBody793_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_209

def sourceBody793_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_210

def sourceBody793_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_5 sourceBody793_211

def sourceBody793_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_212

def sourceBody793_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody793_0 sourceBody793_213

def source793 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (793, 15, sourceBody793_214)
end InitECandidate.Proofs.WordStages
