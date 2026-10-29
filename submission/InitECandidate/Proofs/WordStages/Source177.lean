import InitECandidate.Proofs.WordStages.Source161
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody177_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody177_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody177_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody177_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody177_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 10) sourceBody177_2 sourceBody177_3

def sourceBody177_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody177_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_4 sourceBody177_5

def sourceBody177_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody177_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody177_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody177_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody177_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody177_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_10 sourceBody177_11

def sourceBody177_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_9 sourceBody177_12

def sourceBody177_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_8 sourceBody177_13

def sourceBody177_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody177_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody177_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_16 sourceBody177_11

def sourceBody177_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_15 sourceBody177_17

def sourceBody177_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_14 sourceBody177_18

def sourceBody177_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody177_19 sourceBody177_11

def sourceBody177_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_20 sourceBody177_5

def sourceBody177_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_21 sourceBody177_11

def sourceBody177_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_7 sourceBody177_22

def sourceBody177_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_6 sourceBody177_23

def sourceBody177_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_1 sourceBody177_24

def sourceBody177_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_0 sourceBody177_25

def sourceBody177_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody177_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 10) sourceBody177_2 sourceBody177_3

def sourceBody177_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_28 sourceBody177_5

def sourceBody177_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_0 sourceBody177_12

def sourceBody177_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_8 sourceBody177_30

def sourceBody177_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_31 sourceBody177_18

def sourceBody177_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody177_32 sourceBody177_11

def sourceBody177_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_33 sourceBody177_5

def sourceBody177_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_34 sourceBody177_11

def sourceBody177_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_7 sourceBody177_35

def sourceBody177_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_29 sourceBody177_36

def sourceBody177_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_27 sourceBody177_37

def sourceBody177_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_0 sourceBody177_38

def sourceBody177_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_26 sourceBody177_39

def sourceBody177_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody177_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody177_11, 177, 2)) (some 172) ([6]) (some (6, sourceBody177_41, 177, 3))

def sourceBody177_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_42 sourceBody177_5

def sourceBody177_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_43 sourceBody177_11

def sourceBody177_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_0 sourceBody177_44

def sourceBody177_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody177_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 128#64, Flapjack.WordLangExpHOL.var 12])

def sourceBody177_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody177_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_48 sourceBody177_11

def sourceBody177_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_47 sourceBody177_49

def sourceBody177_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_46 sourceBody177_50

def sourceBody177_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody177_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody177_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody177_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody177_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody177_11, 177, 4)) (some 173) ([10, 8, 14]) (some (10, sourceBody177_55, 177, 5))

def sourceBody177_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_56 sourceBody177_5

def sourceBody177_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_57 sourceBody177_11

def sourceBody177_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_54 sourceBody177_58

def sourceBody177_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_53 sourceBody177_59

def sourceBody177_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_52 sourceBody177_60

def sourceBody177_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_11 sourceBody177_61

def sourceBody177_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_11 sourceBody177_62

def sourceBody177_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_51 sourceBody177_63

def sourceBody177_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 12])

def sourceBody177_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody177_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_66 sourceBody177_11

def sourceBody177_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_65 sourceBody177_67

def sourceBody177_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_64 sourceBody177_68

def sourceBody177_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_45 sourceBody177_69

def sourceBody177_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_11 sourceBody177_70

def sourceBody177_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_11 sourceBody177_71

def sourceBody177_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody177_40 sourceBody177_72

def source177 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (177, 3, sourceBody177_73)
end InitECandidate.Proofs.WordStages
