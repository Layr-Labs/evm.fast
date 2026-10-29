import InitECandidate.Proofs.WordStages.Source256
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody272_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody272_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody272_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody272_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody272_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 18, 14, 22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody272_0, 272, 2)) (some 161) ([8, 16]) (some (8, sourceBody272_3, 272, 3))

def sourceBody272_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody272_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_4 sourceBody272_5

def sourceBody272_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_6 sourceBody272_0

def sourceBody272_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_2 sourceBody272_7

def sourceBody272_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_1 sourceBody272_8

def sourceBody272_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody272_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody272_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody272_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody272_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody272_12 sourceBody272_13

def sourceBody272_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_14 sourceBody272_5

def sourceBody272_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody272_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody272_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody272_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_18 sourceBody272_0

def sourceBody272_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_19 sourceBody272_0

def sourceBody272_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_17 sourceBody272_20

def sourceBody272_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_21

def sourceBody272_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody272_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_23 sourceBody272_3

def sourceBody272_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_22 sourceBody272_24

def sourceBody272_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody272_25 sourceBody272_0

def sourceBody272_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_26 sourceBody272_5

def sourceBody272_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_27 sourceBody272_0

def sourceBody272_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_16 sourceBody272_28

def sourceBody272_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_15 sourceBody272_29

def sourceBody272_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_11 sourceBody272_30

def sourceBody272_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_10 sourceBody272_31

def sourceBody272_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody272_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody272_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody272_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_35 sourceBody272_20

def sourceBody272_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_36

def sourceBody272_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_37 sourceBody272_24

def sourceBody272_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody272_38 sourceBody272_0

def sourceBody272_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_39 sourceBody272_5

def sourceBody272_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_40 sourceBody272_0

def sourceBody272_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_16 sourceBody272_41

def sourceBody272_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_15 sourceBody272_42

def sourceBody272_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_34 sourceBody272_43

def sourceBody272_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_33 sourceBody272_44

def sourceBody272_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_32 sourceBody272_45

def sourceBody272_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody272_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody272_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_48 sourceBody272_0

def sourceBody272_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_47 sourceBody272_49

def sourceBody272_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_46 sourceBody272_50

def sourceBody272_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_9 sourceBody272_51

def sourceBody272_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_52

def sourceBody272_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_53

def sourceBody272_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_54

def sourceBody272_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_55

def sourceBody272_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_56

def sourceBody272_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_57

def sourceBody272_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_58

def sourceBody272_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody272_0 sourceBody272_59

def source272 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (272, 4, sourceBody272_60)
end InitECandidate.Proofs.WordStages
