import InitECandidate.Proofs.WordStages.Source160
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody176_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody176_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody176_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody176_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody176_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 12) sourceBody176_2 sourceBody176_3

def sourceBody176_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody176_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_4 sourceBody176_5

def sourceBody176_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody176_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody176_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody176_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody176_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_9 sourceBody176_10

def sourceBody176_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_8 sourceBody176_11

def sourceBody176_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody176_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody176_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody176_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody176_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 8) sourceBody176_15 sourceBody176_16

def sourceBody176_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_17 sourceBody176_5

def sourceBody176_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody176_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody176_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 18 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody176_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_21 sourceBody176_10

def sourceBody176_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_7 sourceBody176_22

def sourceBody176_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_20 sourceBody176_23

def sourceBody176_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody176_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_25 sourceBody176_10

def sourceBody176_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_1 sourceBody176_26

def sourceBody176_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_24 sourceBody176_27

def sourceBody176_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody176_28 sourceBody176_10

def sourceBody176_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_29 sourceBody176_5

def sourceBody176_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_30 sourceBody176_10

def sourceBody176_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_19 sourceBody176_31

def sourceBody176_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_18 sourceBody176_32

def sourceBody176_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_14 sourceBody176_33

def sourceBody176_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_7 sourceBody176_34

def sourceBody176_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_13 sourceBody176_35

def sourceBody176_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_12 sourceBody176_36

def sourceBody176_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody176_37 sourceBody176_10

def sourceBody176_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_38 sourceBody176_5

def sourceBody176_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_39 sourceBody176_10

def sourceBody176_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_7 sourceBody176_40

def sourceBody176_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_6 sourceBody176_41

def sourceBody176_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_1 sourceBody176_42

def sourceBody176_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_0 sourceBody176_43

def sourceBody176_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody176_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody176_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody176_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody176_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody176_10, 176, 2)) (some 174) ([16, 12, 18]) (some (16, sourceBody176_48, 176, 3))

def sourceBody176_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_49 sourceBody176_5

def sourceBody176_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_50 sourceBody176_10

def sourceBody176_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_47 sourceBody176_51

def sourceBody176_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_46 sourceBody176_52

def sourceBody176_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_45 sourceBody176_53

def sourceBody176_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody176_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody176_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody176_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody176_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody176_10, 176, 4)) (some 77) ([12, 18, 8]) (some (12, sourceBody176_58, 176, 5))

def sourceBody176_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_59 sourceBody176_5

def sourceBody176_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_60 sourceBody176_10

def sourceBody176_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_57 sourceBody176_61

def sourceBody176_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_56 sourceBody176_62

def sourceBody176_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_55 sourceBody176_63

def sourceBody176_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_10 sourceBody176_64

def sourceBody176_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_10 sourceBody176_65

def sourceBody176_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 6])

def sourceBody176_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody176_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_68 sourceBody176_10

def sourceBody176_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_67 sourceBody176_69

def sourceBody176_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_66 sourceBody176_70

def sourceBody176_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_54 sourceBody176_71

def sourceBody176_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_10 sourceBody176_72

def sourceBody176_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_10 sourceBody176_73

def sourceBody176_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody176_44 sourceBody176_74

def source176 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (176, 4, sourceBody176_75)
end InitECandidate.Proofs.WordStages
