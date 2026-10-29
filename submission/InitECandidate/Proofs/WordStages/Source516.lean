import InitECandidate.Proofs.WordStages.Source500
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody516_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody516_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody516_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 22, 4, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody516_0, 516, 2)) (some 475) ([]) (some (12, sourceBody516_1, 516, 3))

def sourceBody516_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody516_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_2 sourceBody516_3

def sourceBody516_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_4 sourceBody516_0

def sourceBody516_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody516_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 26, 2, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody516_0, 516, 4)) (some 475) ([]) (some (10, sourceBody516_6, 516, 5))

def sourceBody516_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_7 sourceBody516_3

def sourceBody516_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_8 sourceBody516_0

def sourceBody516_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody516_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody516_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody516_0, 516, 6)) (some 470) ([24]) (some (24, sourceBody516_11, 516, 7))

def sourceBody516_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_12 sourceBody516_3

def sourceBody516_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_13 sourceBody516_0

def sourceBody516_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_10 sourceBody516_14

def sourceBody516_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_15

def sourceBody516_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_16

def sourceBody516_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12])

def sourceBody516_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 26])

def sourceBody516_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 2])

def sourceBody516_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 16])

def sourceBody516_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody516_0, 516, 8)) (some 476) ([24, 6, 20, 14]) (some (24, sourceBody516_11, 516, 9))

def sourceBody516_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_22 sourceBody516_3

def sourceBody516_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_23 sourceBody516_0

def sourceBody516_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_21 sourceBody516_24

def sourceBody516_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_20 sourceBody516_25

def sourceBody516_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_19 sourceBody516_26

def sourceBody516_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_18 sourceBody516_27

def sourceBody516_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_28

def sourceBody516_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_29

def sourceBody516_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_17 sourceBody516_30

def sourceBody516_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody516_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody516_0, 516, 10)) (some 490) ([24]) (some (24, sourceBody516_11, 516, 11))

def sourceBody516_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_33 sourceBody516_3

def sourceBody516_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_34 sourceBody516_0

def sourceBody516_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_32 sourceBody516_35

def sourceBody516_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_36

def sourceBody516_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_37

def sourceBody516_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_31 sourceBody516_38

def sourceBody516_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody516_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody516_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_41 sourceBody516_0

def sourceBody516_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_40 sourceBody516_42

def sourceBody516_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_39 sourceBody516_43

def sourceBody516_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_9 sourceBody516_44

def sourceBody516_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_45

def sourceBody516_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_46

def sourceBody516_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_47

def sourceBody516_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_48

def sourceBody516_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_49

def sourceBody516_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_50

def sourceBody516_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_51

def sourceBody516_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_52

def sourceBody516_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_5 sourceBody516_53

def sourceBody516_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_54

def sourceBody516_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_55

def sourceBody516_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_56

def sourceBody516_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_57

def sourceBody516_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_58

def sourceBody516_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_59

def sourceBody516_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_60

def sourceBody516_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody516_0 sourceBody516_61

def source516 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (516, 1, sourceBody516_62)
end InitECandidate.Proofs.WordStages
