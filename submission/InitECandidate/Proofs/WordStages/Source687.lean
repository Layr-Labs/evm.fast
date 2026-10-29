import InitECandidate.Proofs.WordStages.Source671
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody687_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody687_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody687_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody687_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody687_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody687_0, 687, 2)) (some 78) ([8, 12]) (some (8, sourceBody687_3, 687, 3))

def sourceBody687_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody687_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_4 sourceBody687_5

def sourceBody687_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_6 sourceBody687_0

def sourceBody687_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_2 sourceBody687_7

def sourceBody687_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_1 sourceBody687_8

def sourceBody687_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_9

def sourceBody687_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_10

def sourceBody687_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody687_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def sourceBody687_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody687_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody687_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody687_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody687_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 6

def sourceBody687_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_18 sourceBody687_0

def sourceBody687_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_17 sourceBody687_19

def sourceBody687_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody687_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64]) 6

def sourceBody687_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_22 sourceBody687_0

def sourceBody687_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_21 sourceBody687_23

def sourceBody687_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody687_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])
  6

def sourceBody687_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_26 sourceBody687_0

def sourceBody687_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_25 sourceBody687_27

def sourceBody687_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody687_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])
  6

def sourceBody687_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_30 sourceBody687_0

def sourceBody687_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_29 sourceBody687_31

def sourceBody687_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_32 sourceBody687_0

def sourceBody687_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_28 sourceBody687_33

def sourceBody687_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_24 sourceBody687_34

def sourceBody687_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_20 sourceBody687_35

def sourceBody687_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_16 sourceBody687_36

def sourceBody687_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_37

def sourceBody687_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_15 sourceBody687_38

def sourceBody687_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_39

def sourceBody687_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_14 sourceBody687_40

def sourceBody687_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_41

def sourceBody687_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_13 sourceBody687_42

def sourceBody687_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_43

def sourceBody687_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_12 sourceBody687_44

def sourceBody687_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_45

def sourceBody687_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_11 sourceBody687_46

def sourceBody687_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody687_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody687_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody687_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody687_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody687_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_52 sourceBody687_36

def sourceBody687_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_53

def sourceBody687_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_51 sourceBody687_54

def sourceBody687_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_55

def sourceBody687_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_50 sourceBody687_56

def sourceBody687_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_57

def sourceBody687_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_49 sourceBody687_58

def sourceBody687_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_59

def sourceBody687_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_48 sourceBody687_60

def sourceBody687_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_61

def sourceBody687_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_47 sourceBody687_62

def sourceBody687_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 768#64])

def sourceBody687_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody687_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody687_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody687_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody687_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_68 sourceBody687_36

def sourceBody687_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_69

def sourceBody687_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_67 sourceBody687_70

def sourceBody687_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_71

def sourceBody687_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_66 sourceBody687_72

def sourceBody687_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_73

def sourceBody687_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_65 sourceBody687_74

def sourceBody687_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_75

def sourceBody687_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_64 sourceBody687_76

def sourceBody687_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_0 sourceBody687_77

def sourceBody687_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_63 sourceBody687_78

def sourceBody687_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody687_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody687_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_81 sourceBody687_0

def sourceBody687_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_80 sourceBody687_82

def sourceBody687_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody687_79 sourceBody687_83

def source687 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (687, 3, sourceBody687_84)
end InitECandidate.Proofs.WordStages
