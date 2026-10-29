import InitECandidate.Proofs.WordStages.Source663
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody679_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody679_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody679_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody679_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody679_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody679_0, 679, 2)) (some 78) ([8, 12]) (some (8, sourceBody679_3, 679, 3))

def sourceBody679_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody679_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_4 sourceBody679_5

def sourceBody679_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_6 sourceBody679_0

def sourceBody679_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_2 sourceBody679_7

def sourceBody679_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_1 sourceBody679_8

def sourceBody679_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_9

def sourceBody679_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_10

def sourceBody679_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody679_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def sourceBody679_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def sourceBody679_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def sourceBody679_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def sourceBody679_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody679_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 6

def sourceBody679_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_18 sourceBody679_0

def sourceBody679_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_17 sourceBody679_19

def sourceBody679_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody679_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64]) 6

def sourceBody679_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_22 sourceBody679_0

def sourceBody679_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_21 sourceBody679_23

def sourceBody679_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody679_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])
  6

def sourceBody679_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_26 sourceBody679_0

def sourceBody679_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_25 sourceBody679_27

def sourceBody679_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody679_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])
  6

def sourceBody679_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_30 sourceBody679_0

def sourceBody679_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_29 sourceBody679_31

def sourceBody679_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_32 sourceBody679_0

def sourceBody679_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_28 sourceBody679_33

def sourceBody679_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_24 sourceBody679_34

def sourceBody679_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_20 sourceBody679_35

def sourceBody679_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_16 sourceBody679_36

def sourceBody679_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_37

def sourceBody679_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_15 sourceBody679_38

def sourceBody679_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_39

def sourceBody679_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_14 sourceBody679_40

def sourceBody679_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_41

def sourceBody679_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_13 sourceBody679_42

def sourceBody679_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_43

def sourceBody679_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_12 sourceBody679_44

def sourceBody679_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_0 sourceBody679_45

def sourceBody679_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_11 sourceBody679_46

def sourceBody679_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody679_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody679_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_49 sourceBody679_0

def sourceBody679_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_48 sourceBody679_50

def sourceBody679_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody679_47 sourceBody679_51

def source679 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (679, 3, sourceBody679_52)
end InitECandidate.Proofs.WordStages
