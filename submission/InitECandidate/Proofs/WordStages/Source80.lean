import InitECandidate.Proofs.WordStages.Source64
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody80_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody80_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody80_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody80_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody80_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody80_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody80_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody80_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 10) sourceBody80_5 sourceBody80_6

def sourceBody80_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_7 sourceBody80_2

def sourceBody80_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody80_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 14])

def sourceBody80_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody80_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody80_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody80_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody80_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody80_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 16) sourceBody80_14 sourceBody80_15

def sourceBody80_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_16 sourceBody80_2

def sourceBody80_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody80_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody80_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody80_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_20 sourceBody80_0

def sourceBody80_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_19 sourceBody80_21

def sourceBody80_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody80_22 sourceBody80_0

def sourceBody80_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_23 sourceBody80_2

def sourceBody80_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_24 sourceBody80_0

def sourceBody80_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_18 sourceBody80_25

def sourceBody80_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_17 sourceBody80_26

def sourceBody80_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_13 sourceBody80_27

def sourceBody80_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_12 sourceBody80_28

def sourceBody80_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_11 sourceBody80_29

def sourceBody80_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_10 sourceBody80_30

def sourceBody80_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody80_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody80_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_33 sourceBody80_0

def sourceBody80_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_34 sourceBody80_0

def sourceBody80_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_32 sourceBody80_35

def sourceBody80_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_0 sourceBody80_36

def sourceBody80_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_31 sourceBody80_37

def sourceBody80_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody80_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_38 sourceBody80_39

def sourceBody80_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody80_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody80_40 sourceBody80_41

def sourceBody80_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_42 sourceBody80_2

def sourceBody80_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_43 sourceBody80_0

def sourceBody80_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_9 sourceBody80_44

def sourceBody80_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_8 sourceBody80_45

def sourceBody80_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_4 sourceBody80_46

def sourceBody80_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_3 sourceBody80_47

def sourceBody80_49 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody80_48 (Flapjack.Spt.ls PUnit.unit)

def sourceBody80_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_49 sourceBody80_2

def sourceBody80_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_2 sourceBody80_50

def sourceBody80_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody80_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_52 sourceBody80_21

def sourceBody80_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_51 sourceBody80_53

def sourceBody80_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_1 sourceBody80_54

def sourceBody80_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody80_0 sourceBody80_55

def source80 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (80, 3, sourceBody80_56)
end InitECandidate.Proofs.WordStages
