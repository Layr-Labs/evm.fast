import InitECandidate.Proofs.WordStages.Source151
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody167_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody167_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody167_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody167_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody167_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody167_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody167_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody167_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody167_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 16) sourceBody167_6 sourceBody167_7

def sourceBody167_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_8 sourceBody167_3

def sourceBody167_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody167_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 8])

def sourceBody167_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 8])

def sourceBody167_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody167_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody167_0, 167, 2)) (some 166) ([10, 16]) (some (10, sourceBody167_13, 167, 3))

def sourceBody167_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_14 sourceBody167_3

def sourceBody167_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_15 sourceBody167_0

def sourceBody167_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_12 sourceBody167_16

def sourceBody167_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_11 sourceBody167_17

def sourceBody167_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12])

def sourceBody167_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody167_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_20 sourceBody167_0

def sourceBody167_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_21 sourceBody167_0

def sourceBody167_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_19 sourceBody167_22

def sourceBody167_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_0 sourceBody167_23

def sourceBody167_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody167_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody167_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_26 sourceBody167_0

def sourceBody167_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_27 sourceBody167_0

def sourceBody167_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_25 sourceBody167_28

def sourceBody167_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_0 sourceBody167_29

def sourceBody167_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_24 sourceBody167_30

def sourceBody167_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_18 sourceBody167_31

def sourceBody167_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_0 sourceBody167_32

def sourceBody167_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_0 sourceBody167_33

def sourceBody167_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody167_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_34 sourceBody167_35

def sourceBody167_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody167_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody167_36 sourceBody167_37

def sourceBody167_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_38 sourceBody167_3

def sourceBody167_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_39 sourceBody167_0

def sourceBody167_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_10 sourceBody167_40

def sourceBody167_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_9 sourceBody167_41

def sourceBody167_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_5 sourceBody167_42

def sourceBody167_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_4 sourceBody167_43

def sourceBody167_45 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody167_44 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody167_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_45 sourceBody167_3

def sourceBody167_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_3 sourceBody167_46

def sourceBody167_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody167_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody167_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_49 sourceBody167_0

def sourceBody167_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_48 sourceBody167_50

def sourceBody167_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_47 sourceBody167_51

def sourceBody167_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_2 sourceBody167_52

def sourceBody167_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_0 sourceBody167_53

def sourceBody167_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_1 sourceBody167_54

def sourceBody167_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody167_0 sourceBody167_55

def source167 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (167, 3, sourceBody167_56)
end InitECandidate.Proofs.WordStages
