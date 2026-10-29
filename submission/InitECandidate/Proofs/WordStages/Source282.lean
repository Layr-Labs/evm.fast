import InitECandidate.Proofs.WordStages.Source266
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody282_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody282_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody282_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody282_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody282_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody282_0, 282, 2)) (some 95) ([6, 10]) (some (6, sourceBody282_3, 282, 3))

def sourceBody282_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody282_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_4 sourceBody282_5

def sourceBody282_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_6 sourceBody282_0

def sourceBody282_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_2 sourceBody282_7

def sourceBody282_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_1 sourceBody282_8

def sourceBody282_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody282_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody282_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody282_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody282_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 8) sourceBody282_12 sourceBody282_13

def sourceBody282_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_14 sourceBody282_5

def sourceBody282_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody282_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody282_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody282_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_18 sourceBody282_0

def sourceBody282_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_17 sourceBody282_19

def sourceBody282_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody282_20 sourceBody282_0

def sourceBody282_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_21 sourceBody282_5

def sourceBody282_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_22 sourceBody282_0

def sourceBody282_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_16 sourceBody282_23

def sourceBody282_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_15 sourceBody282_24

def sourceBody282_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_11 sourceBody282_25

def sourceBody282_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_10 sourceBody282_26

def sourceBody282_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody282_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 12])

def sourceBody282_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_29 sourceBody282_25

def sourceBody282_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_28 sourceBody282_30

def sourceBody282_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_27 sourceBody282_31

def sourceBody282_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5000#64)

def sourceBody282_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody282_12 sourceBody282_13

def sourceBody282_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_34 sourceBody282_5

def sourceBody282_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_35 sourceBody282_24

def sourceBody282_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_33 sourceBody282_36

def sourceBody282_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_10 sourceBody282_37

def sourceBody282_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_32 sourceBody282_38

def sourceBody282_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody282_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_40 sourceBody282_19

def sourceBody282_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_39 sourceBody282_41

def sourceBody282_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_9 sourceBody282_42

def sourceBody282_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_0 sourceBody282_43

def sourceBody282_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody282_0 sourceBody282_44

def source282 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (282, 3, sourceBody282_45)
end InitECandidate.Proofs.WordStages
