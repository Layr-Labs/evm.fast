import InitECandidate.Proofs.WordStages.Source158
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody174_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 55#64)

def sourceBody174_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody174_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody174_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody174_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 12) sourceBody174_2 sourceBody174_3

def sourceBody174_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody174_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_4 sourceBody174_5

def sourceBody174_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody174_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody174_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6])

def sourceBody174_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 14 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody174_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody174_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_10 sourceBody174_11

def sourceBody174_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_9 sourceBody174_12

def sourceBody174_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_8 sourceBody174_13

def sourceBody174_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody174_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody174_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_16 sourceBody174_11

def sourceBody174_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_15 sourceBody174_17

def sourceBody174_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_14 sourceBody174_18

def sourceBody174_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody174_19 sourceBody174_11

def sourceBody174_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_20 sourceBody174_5

def sourceBody174_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_21 sourceBody174_11

def sourceBody174_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_7 sourceBody174_22

def sourceBody174_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_6 sourceBody174_23

def sourceBody174_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_1 sourceBody174_24

def sourceBody174_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_0 sourceBody174_25

def sourceBody174_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody174_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody174_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody174_11, 174, 2)) (some 172) ([14]) (some (14, sourceBody174_28, 174, 3))

def sourceBody174_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_29 sourceBody174_5

def sourceBody174_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_30 sourceBody174_11

def sourceBody174_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_27 sourceBody174_31

def sourceBody174_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody174_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 55#64, Flapjack.WordLangExpHOL.var 10])

def sourceBody174_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody174_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_35 sourceBody174_11

def sourceBody174_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_34 sourceBody174_36

def sourceBody174_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_33 sourceBody174_37

def sourceBody174_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody174_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody174_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody174_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody174_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody174_11, 174, 4)) (some 173) ([12, 16, 8]) (some (12, sourceBody174_42, 174, 5))

def sourceBody174_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_43 sourceBody174_5

def sourceBody174_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_44 sourceBody174_11

def sourceBody174_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_41 sourceBody174_45

def sourceBody174_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_40 sourceBody174_46

def sourceBody174_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_39 sourceBody174_47

def sourceBody174_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_11 sourceBody174_48

def sourceBody174_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_11 sourceBody174_49

def sourceBody174_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_38 sourceBody174_50

def sourceBody174_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 10])

def sourceBody174_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody174_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_53 sourceBody174_11

def sourceBody174_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_52 sourceBody174_54

def sourceBody174_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_51 sourceBody174_55

def sourceBody174_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_32 sourceBody174_56

def sourceBody174_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_11 sourceBody174_57

def sourceBody174_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_11 sourceBody174_58

def sourceBody174_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody174_26 sourceBody174_59

def source174 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (174, 4, sourceBody174_60)
end InitECandidate.Proofs.WordStages
