import InitECandidate.Proofs.WordStages.Source323
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody339_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody339_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody339_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody339_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody339_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 18, 14, 22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody339_0, 339, 2)) (some 161) ([8, 16]) (some (8, sourceBody339_3, 339, 3))

def sourceBody339_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody339_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_4 sourceBody339_5

def sourceBody339_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_6 sourceBody339_0

def sourceBody339_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_2 sourceBody339_7

def sourceBody339_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_1 sourceBody339_8

def sourceBody339_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody339_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody339_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody339_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody339_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody339_12 sourceBody339_13

def sourceBody339_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_14 sourceBody339_5

def sourceBody339_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody339_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15#64)

def sourceBody339_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody339_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_18 sourceBody339_0

def sourceBody339_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_19 sourceBody339_0

def sourceBody339_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_17 sourceBody339_20

def sourceBody339_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_21

def sourceBody339_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody339_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_23 sourceBody339_3

def sourceBody339_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_22 sourceBody339_24

def sourceBody339_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody339_25 sourceBody339_0

def sourceBody339_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_26 sourceBody339_5

def sourceBody339_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_27 sourceBody339_0

def sourceBody339_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_16 sourceBody339_28

def sourceBody339_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_15 sourceBody339_29

def sourceBody339_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_11 sourceBody339_30

def sourceBody339_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_10 sourceBody339_31

def sourceBody339_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody339_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody339_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody339_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_35 sourceBody339_20

def sourceBody339_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_36

def sourceBody339_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_37 sourceBody339_24

def sourceBody339_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody339_38 sourceBody339_0

def sourceBody339_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_39 sourceBody339_5

def sourceBody339_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_40 sourceBody339_0

def sourceBody339_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_16 sourceBody339_41

def sourceBody339_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_15 sourceBody339_42

def sourceBody339_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_34 sourceBody339_43

def sourceBody339_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_33 sourceBody339_44

def sourceBody339_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_32 sourceBody339_45

def sourceBody339_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody339_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody339_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_48 sourceBody339_0

def sourceBody339_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_47 sourceBody339_49

def sourceBody339_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_46 sourceBody339_50

def sourceBody339_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_9 sourceBody339_51

def sourceBody339_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_52

def sourceBody339_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_53

def sourceBody339_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_54

def sourceBody339_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_55

def sourceBody339_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_56

def sourceBody339_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_57

def sourceBody339_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_58

def sourceBody339_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody339_0 sourceBody339_59

def source339 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (339, 4, sourceBody339_60)
end InitECandidate.Proofs.WordStages
