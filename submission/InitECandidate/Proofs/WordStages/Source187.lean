import InitECandidate.Proofs.WordStages.Source171
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody187_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody187_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody187_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody187_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody187_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody187_0, 187, 2)) (some 185) ([8, 18]) (some (8, sourceBody187_3, 187, 3))

def sourceBody187_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody187_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_4 sourceBody187_5

def sourceBody187_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_6 sourceBody187_0

def sourceBody187_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_2 sourceBody187_7

def sourceBody187_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_1 sourceBody187_8

def sourceBody187_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody187_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody187_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody187_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody187_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 14) sourceBody187_12 sourceBody187_13

def sourceBody187_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_14 sourceBody187_5

def sourceBody187_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody187_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody187_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody187_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_18 sourceBody187_0

def sourceBody187_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_17 sourceBody187_19

def sourceBody187_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody187_20 sourceBody187_0

def sourceBody187_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_21 sourceBody187_5

def sourceBody187_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_22 sourceBody187_0

def sourceBody187_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_16 sourceBody187_23

def sourceBody187_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_15 sourceBody187_24

def sourceBody187_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_11 sourceBody187_25

def sourceBody187_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_10 sourceBody187_26

def sourceBody187_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody187_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody187_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody187_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody187_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody187_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 12 12 6 16))

def sourceBody187_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 12])

def sourceBody187_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody187_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody187_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody187_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody187_0, 187, 4)) (some 79) ([24, 10, 20]) (some (6, sourceBody187_37, 187, 5))

def sourceBody187_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_38 sourceBody187_5

def sourceBody187_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_39 sourceBody187_0

def sourceBody187_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_36 sourceBody187_40

def sourceBody187_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_35 sourceBody187_41

def sourceBody187_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_34 sourceBody187_42

def sourceBody187_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_33 sourceBody187_43

def sourceBody187_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_32 sourceBody187_44

def sourceBody187_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_31 sourceBody187_45

def sourceBody187_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def sourceBody187_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody187_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_48 sourceBody187_0

def sourceBody187_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_47 sourceBody187_49

def sourceBody187_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_46 sourceBody187_50

def sourceBody187_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_51

def sourceBody187_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_52

def sourceBody187_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_30 sourceBody187_53

def sourceBody187_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_54

def sourceBody187_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_29 sourceBody187_55

def sourceBody187_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_56

def sourceBody187_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_28 sourceBody187_57

def sourceBody187_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_58

def sourceBody187_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_27 sourceBody187_59

def sourceBody187_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_9 sourceBody187_60

def sourceBody187_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_61

def sourceBody187_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody187_0 sourceBody187_62

def source187 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (187, 3, sourceBody187_63)
end InitECandidate.Proofs.WordStages
