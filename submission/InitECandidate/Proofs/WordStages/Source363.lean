import InitECandidate.Proofs.WordStages.Source347
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody363_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody363_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody363_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody363_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody363_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody363_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody363_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody363_0, 363, 2)) (some 358) ([18, 6, 16, 12]) (some (18, sourceBody363_5, 363, 3))

def sourceBody363_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody363_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_6 sourceBody363_7

def sourceBody363_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_8 sourceBody363_0

def sourceBody363_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_4 sourceBody363_9

def sourceBody363_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_3 sourceBody363_10

def sourceBody363_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_2 sourceBody363_11

def sourceBody363_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_1 sourceBody363_12

def sourceBody363_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody363_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody363_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody363_0, 363, 4)) (some 181) ([6]) (some (6, sourceBody363_15, 363, 5))

def sourceBody363_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_16 sourceBody363_7

def sourceBody363_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_17 sourceBody363_0

def sourceBody363_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_14 sourceBody363_18

def sourceBody363_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody363_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody363_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody363_0, 363, 6)) (some 181) ([16]) (some (16, sourceBody363_21, 363, 7))

def sourceBody363_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_22 sourceBody363_7

def sourceBody363_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_23 sourceBody363_0

def sourceBody363_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_20 sourceBody363_24

def sourceBody363_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody363_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody363_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody363_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody363_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody363_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody363_0, 363, 8)) (some 358) ([12, 20, 4, 14]) (some (12, sourceBody363_30, 363, 9))

def sourceBody363_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_31 sourceBody363_7

def sourceBody363_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_32 sourceBody363_0

def sourceBody363_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_29 sourceBody363_33

def sourceBody363_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_28 sourceBody363_34

def sourceBody363_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_27 sourceBody363_35

def sourceBody363_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_26 sourceBody363_36

def sourceBody363_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody363_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody363_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody363_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody363_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody363_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody363_0, 363, 10)) (some 358) ([20, 4, 14, 10]) (some (20, sourceBody363_42, 363, 11))

def sourceBody363_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_43 sourceBody363_7

def sourceBody363_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_44 sourceBody363_0

def sourceBody363_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_41 sourceBody363_45

def sourceBody363_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_40 sourceBody363_46

def sourceBody363_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_39 sourceBody363_47

def sourceBody363_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_38 sourceBody363_48

def sourceBody363_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 21#64, Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 12])

def sourceBody363_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody363_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_51 sourceBody363_0

def sourceBody363_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_50 sourceBody363_52

def sourceBody363_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_49 sourceBody363_53

def sourceBody363_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_54

def sourceBody363_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_55

def sourceBody363_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_37 sourceBody363_56

def sourceBody363_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_57

def sourceBody363_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_58

def sourceBody363_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_25 sourceBody363_59

def sourceBody363_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_60

def sourceBody363_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_61

def sourceBody363_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_19 sourceBody363_62

def sourceBody363_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_63

def sourceBody363_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_64

def sourceBody363_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_13 sourceBody363_65

def sourceBody363_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_66

def sourceBody363_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody363_0 sourceBody363_67

def source363 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (363, 2, sourceBody363_68)
end InitECandidate.Proofs.WordStages
