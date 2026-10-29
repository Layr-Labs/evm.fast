import InitECandidate.Proofs.WordStages.Source712
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody728_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody728_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 2))

def sourceBody728_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody728_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody728_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody728_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody728_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody728_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 36)

def sourceBody728_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody728_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody728_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody728_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 42)

def sourceBody728_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody728_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody728_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 18, 40, 14, 34, 24]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody728_0, 728, 2)) (some 717) ([44, 6, 26, 16, 38, 12]) (some (44, sourceBody728_13, 728, 3))

def sourceBody728_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody728_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_14 sourceBody728_15

def sourceBody728_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_16 sourceBody728_0

def sourceBody728_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_12 sourceBody728_17

def sourceBody728_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_11 sourceBody728_18

def sourceBody728_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_10 sourceBody728_19

def sourceBody728_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_9 sourceBody728_20

def sourceBody728_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_8 sourceBody728_21

def sourceBody728_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_7 sourceBody728_22

def sourceBody728_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody728_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody728_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody728_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody728_0, 728, 4)) (some 78) ([6, 26]) (some (6, sourceBody728_26, 728, 5))

def sourceBody728_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_27 sourceBody728_15

def sourceBody728_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_28 sourceBody728_0

def sourceBody728_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_25 sourceBody728_29

def sourceBody728_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_24 sourceBody728_30

def sourceBody728_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_31

def sourceBody728_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_32

def sourceBody728_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 28)

def sourceBody728_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody728_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 40)

def sourceBody728_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def sourceBody728_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody728_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody728_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody728_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody728_0, 728, 6)) (some 726) ([6, 26, 16, 38, 12, 32, 22]) (some (6, sourceBody728_26, 728, 7))

def sourceBody728_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_41 sourceBody728_15

def sourceBody728_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_42 sourceBody728_0

def sourceBody728_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_40 sourceBody728_43

def sourceBody728_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_39 sourceBody728_44

def sourceBody728_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_38 sourceBody728_45

def sourceBody728_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_37 sourceBody728_46

def sourceBody728_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_36 sourceBody728_47

def sourceBody728_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_35 sourceBody728_48

def sourceBody728_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_34 sourceBody728_49

def sourceBody728_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_50

def sourceBody728_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_51

def sourceBody728_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_33 sourceBody728_52

def sourceBody728_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody728_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44]

def sourceBody728_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_55 sourceBody728_0

def sourceBody728_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_54 sourceBody728_56

def sourceBody728_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_53 sourceBody728_57

def sourceBody728_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_23 sourceBody728_58

def sourceBody728_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_59

def sourceBody728_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_60

def sourceBody728_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_61

def sourceBody728_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_62

def sourceBody728_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_63

def sourceBody728_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_64

def sourceBody728_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_65

def sourceBody728_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_66

def sourceBody728_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_67

def sourceBody728_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_68

def sourceBody728_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_69

def sourceBody728_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_70

def sourceBody728_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_6 sourceBody728_71

def sourceBody728_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_72

def sourceBody728_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_5 sourceBody728_73

def sourceBody728_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_74

def sourceBody728_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_4 sourceBody728_75

def sourceBody728_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_76

def sourceBody728_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_3 sourceBody728_77

def sourceBody728_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_78

def sourceBody728_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_2 sourceBody728_79

def sourceBody728_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_80

def sourceBody728_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_1 sourceBody728_81

def sourceBody728_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody728_0 sourceBody728_82

def source728 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (728, 3, sourceBody728_83)
end InitECandidate.Proofs.WordStages
