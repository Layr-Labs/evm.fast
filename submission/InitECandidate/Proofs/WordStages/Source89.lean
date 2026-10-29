import InitECandidate.Proofs.WordStages.Source73
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody89_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody89_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody89_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody89_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody89_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 10) sourceBody89_2 sourceBody89_3

def sourceBody89_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody89_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_4 sourceBody89_5

def sourceBody89_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody89_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody89_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody89_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody89_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody89_8, 89, 2)) (some 84) ([6]) (some (6, sourceBody89_10, 89, 3))

def sourceBody89_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_11 sourceBody89_5

def sourceBody89_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_12 sourceBody89_8

def sourceBody89_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_9 sourceBody89_13

def sourceBody89_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody89_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody89_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody89_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 8

def sourceBody89_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_18 sourceBody89_8

def sourceBody89_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_17 sourceBody89_19

def sourceBody89_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_20 sourceBody89_8

def sourceBody89_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_16 sourceBody89_21

def sourceBody89_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_22

def sourceBody89_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_15 sourceBody89_23

def sourceBody89_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_24

def sourceBody89_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody89_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_26 sourceBody89_8

def sourceBody89_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_3 sourceBody89_27

def sourceBody89_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_25 sourceBody89_28

def sourceBody89_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_14 sourceBody89_29

def sourceBody89_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_30

def sourceBody89_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_31

def sourceBody89_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody89_32 sourceBody89_8

def sourceBody89_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_33 sourceBody89_5

def sourceBody89_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_34 sourceBody89_8

def sourceBody89_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_7 sourceBody89_35

def sourceBody89_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_6 sourceBody89_36

def sourceBody89_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_1 sourceBody89_37

def sourceBody89_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_0 sourceBody89_38

def sourceBody89_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody89_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody89_8, 89, 4)) (some 88) ([6, 10]) (some (6, sourceBody89_10, 89, 5))

def sourceBody89_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_41 sourceBody89_5

def sourceBody89_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_42 sourceBody89_8

def sourceBody89_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_40 sourceBody89_43

def sourceBody89_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_15 sourceBody89_44

def sourceBody89_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_45

def sourceBody89_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_46

def sourceBody89_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_39 sourceBody89_47

def sourceBody89_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody89_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody89_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody89_8, 89, 6)) (some 88) ([6, 10]) (some (6, sourceBody89_10, 89, 7))

def sourceBody89_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_51 sourceBody89_5

def sourceBody89_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_52 sourceBody89_8

def sourceBody89_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_50 sourceBody89_53

def sourceBody89_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_49 sourceBody89_54

def sourceBody89_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_55

def sourceBody89_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_8 sourceBody89_56

def sourceBody89_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_48 sourceBody89_57

def sourceBody89_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody89_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody89_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_60 sourceBody89_8

def sourceBody89_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_59 sourceBody89_61

def sourceBody89_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody89_58 sourceBody89_62

def source89 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (89, 3, sourceBody89_63)
end InitECandidate.Proofs.WordStages
