import InitECandidate.Proofs.WordStages.Source324
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody340_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody340_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody340_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody340_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody340_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8, 16, 12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody340_0, 340, 2)) (some 161) ([20, 6]) (some (20, sourceBody340_3, 340, 3))

def sourceBody340_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody340_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_4 sourceBody340_5

def sourceBody340_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_6 sourceBody340_0

def sourceBody340_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_2 sourceBody340_7

def sourceBody340_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_1 sourceBody340_8

def sourceBody340_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody340_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody340_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody340_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody340_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody340_12 sourceBody340_13

def sourceBody340_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_14 sourceBody340_5

def sourceBody340_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody340_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 17#64)

def sourceBody340_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody340_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_18 sourceBody340_0

def sourceBody340_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_19 sourceBody340_0

def sourceBody340_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_17 sourceBody340_20

def sourceBody340_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_21

def sourceBody340_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody340_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_23 sourceBody340_3

def sourceBody340_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_22 sourceBody340_24

def sourceBody340_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody340_25 sourceBody340_0

def sourceBody340_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_26 sourceBody340_5

def sourceBody340_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_27 sourceBody340_0

def sourceBody340_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_16 sourceBody340_28

def sourceBody340_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_15 sourceBody340_29

def sourceBody340_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_11 sourceBody340_30

def sourceBody340_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_10 sourceBody340_31

def sourceBody340_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody340_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody340_12 sourceBody340_13

def sourceBody340_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_34 sourceBody340_5

def sourceBody340_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody340_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody340_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_37 sourceBody340_0

def sourceBody340_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_36 sourceBody340_38

def sourceBody340_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody340_39 sourceBody340_0

def sourceBody340_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_40 sourceBody340_5

def sourceBody340_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_41 sourceBody340_0

def sourceBody340_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_16 sourceBody340_42

def sourceBody340_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_35 sourceBody340_43

def sourceBody340_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_11 sourceBody340_44

def sourceBody340_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_33 sourceBody340_45

def sourceBody340_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_32 sourceBody340_46

def sourceBody340_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody340_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_48 sourceBody340_30

def sourceBody340_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_33 sourceBody340_49

def sourceBody340_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_47 sourceBody340_50

def sourceBody340_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody340_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_52 sourceBody340_38

def sourceBody340_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_51 sourceBody340_53

def sourceBody340_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_9 sourceBody340_54

def sourceBody340_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_55

def sourceBody340_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_56

def sourceBody340_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_57

def sourceBody340_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_58

def sourceBody340_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_59

def sourceBody340_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_60

def sourceBody340_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_61

def sourceBody340_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody340_0 sourceBody340_62

def source340 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (340, 3, sourceBody340_63)
end InitECandidate.Proofs.WordStages
