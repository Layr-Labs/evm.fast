import InitECandidate.Proofs.WordStages.Source311
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody327_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody327_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody327_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody327_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody327_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 4) sourceBody327_2 sourceBody327_3

def sourceBody327_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody327_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_4 sourceBody327_5

def sourceBody327_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody327_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody327_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody327_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody327_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_9 sourceBody327_10

def sourceBody327_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_8 sourceBody327_11

def sourceBody327_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody327_12 sourceBody327_10

def sourceBody327_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_13 sourceBody327_5

def sourceBody327_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_14 sourceBody327_10

def sourceBody327_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_7 sourceBody327_15

def sourceBody327_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_6 sourceBody327_16

def sourceBody327_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_1 sourceBody327_17

def sourceBody327_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_0 sourceBody327_18

def sourceBody327_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody327_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody327_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_21 sourceBody327_11

def sourceBody327_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody327_22 sourceBody327_10

def sourceBody327_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_23 sourceBody327_5

def sourceBody327_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_24 sourceBody327_10

def sourceBody327_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_7 sourceBody327_25

def sourceBody327_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_6 sourceBody327_26

def sourceBody327_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_1 sourceBody327_27

def sourceBody327_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_20 sourceBody327_28

def sourceBody327_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_19 sourceBody327_29

def sourceBody327_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody327_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody327_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody327_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody327_10, 327, 2)) (some 286) ([12]) (some (12, sourceBody327_33, 327, 3))

def sourceBody327_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_34 sourceBody327_5

def sourceBody327_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_35 sourceBody327_10

def sourceBody327_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_32 sourceBody327_36

def sourceBody327_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_10 sourceBody327_37

def sourceBody327_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_10 sourceBody327_38

def sourceBody327_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody327_39 sourceBody327_10

def sourceBody327_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_40 sourceBody327_5

def sourceBody327_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_41 sourceBody327_10

def sourceBody327_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_7 sourceBody327_42

def sourceBody327_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_6 sourceBody327_43

def sourceBody327_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_1 sourceBody327_44

def sourceBody327_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_31 sourceBody327_45

def sourceBody327_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_30 sourceBody327_46

def sourceBody327_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody327_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody327_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody327_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody327_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 10) sourceBody327_51 sourceBody327_1

def sourceBody327_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_52 sourceBody327_5

def sourceBody327_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody327_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody327_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody327_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_56 sourceBody327_10

def sourceBody327_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_55 sourceBody327_57

def sourceBody327_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody327_58 sourceBody327_10

def sourceBody327_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_59 sourceBody327_5

def sourceBody327_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_60 sourceBody327_10

def sourceBody327_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_54 sourceBody327_61

def sourceBody327_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_53 sourceBody327_62

def sourceBody327_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_50 sourceBody327_63

def sourceBody327_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_49 sourceBody327_64

def sourceBody327_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody327_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_66 sourceBody327_57

def sourceBody327_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_65 sourceBody327_67

def sourceBody327_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_48 sourceBody327_68

def sourceBody327_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_10 sourceBody327_69

def sourceBody327_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody327_47 sourceBody327_70

def source327 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (327, 2, sourceBody327_71)
end InitECandidate.Proofs.WordStages
