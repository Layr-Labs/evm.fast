import InitECandidate.Proofs.WordStages.Source623
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody639_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody639_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody639_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody639_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody639_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody639_0, 639, 2)) (some 126) ([24, 34]) (some (24, sourceBody639_3, 639, 3))

def sourceBody639_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody639_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_4 sourceBody639_5

def sourceBody639_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_6 sourceBody639_0

def sourceBody639_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_2 sourceBody639_7

def sourceBody639_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_1 sourceBody639_8

def sourceBody639_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody639_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody639_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody639_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody639_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 20) sourceBody639_12 sourceBody639_13

def sourceBody639_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_14 sourceBody639_5

def sourceBody639_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def sourceBody639_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody639_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody639_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody639_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody639_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody639_0, 639, 4)) (some 77) ([34, 20, 32]) (some (34, sourceBody639_20, 639, 5))

def sourceBody639_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_21 sourceBody639_5

def sourceBody639_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_22 sourceBody639_0

def sourceBody639_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_19 sourceBody639_23

def sourceBody639_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_18 sourceBody639_24

def sourceBody639_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_17 sourceBody639_25

def sourceBody639_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_26

def sourceBody639_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_27

def sourceBody639_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody639_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 30])
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody639_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody639_0, 639, 6)) (some 78) ([34, 20]) (some (34, sourceBody639_20, 639, 7))

def sourceBody639_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_31 sourceBody639_5

def sourceBody639_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_32 sourceBody639_0

def sourceBody639_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_30 sourceBody639_33

def sourceBody639_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_29 sourceBody639_34

def sourceBody639_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_35

def sourceBody639_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_36

def sourceBody639_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_28 sourceBody639_37

def sourceBody639_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody639_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody639_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_40 sourceBody639_0

def sourceBody639_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_39 sourceBody639_41

def sourceBody639_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_38 sourceBody639_42

def sourceBody639_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody639_43 sourceBody639_0

def sourceBody639_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_44 sourceBody639_5

def sourceBody639_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_45 sourceBody639_0

def sourceBody639_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_16 sourceBody639_46

def sourceBody639_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_15 sourceBody639_47

def sourceBody639_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_11 sourceBody639_48

def sourceBody639_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_10 sourceBody639_49

def sourceBody639_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody639_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody639_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody639_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody639_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody639_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody639_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody639_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody639_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody639_0, 639, 8)) (some 638) ([34, 20, 32, 26, 36, 18, 28, 22]) (some (34, sourceBody639_20, 639, 9))

def sourceBody639_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_59 sourceBody639_5

def sourceBody639_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_60 sourceBody639_0

def sourceBody639_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_58 sourceBody639_61

def sourceBody639_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_57 sourceBody639_62

def sourceBody639_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_56 sourceBody639_63

def sourceBody639_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_55 sourceBody639_64

def sourceBody639_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_54 sourceBody639_65

def sourceBody639_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_53 sourceBody639_66

def sourceBody639_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_52 sourceBody639_67

def sourceBody639_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_51 sourceBody639_68

def sourceBody639_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_69

def sourceBody639_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_70

def sourceBody639_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_50 sourceBody639_71

def sourceBody639_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_72 sourceBody639_42

def sourceBody639_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_9 sourceBody639_73

def sourceBody639_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_74

def sourceBody639_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody639_0 sourceBody639_75

def source639 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (639, 9, sourceBody639_76)
end InitECandidate.Proofs.WordStages
