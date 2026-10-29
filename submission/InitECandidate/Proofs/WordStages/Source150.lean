import InitECandidate.Proofs.WordStages.Source134
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody150_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody150_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody150_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1779033703#64)

def sourceBody150_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 8)

def sourceBody150_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 4

def sourceBody150_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_4 sourceBody150_0

def sourceBody150_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_3 sourceBody150_5

def sourceBody150_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_6 sourceBody150_0

def sourceBody150_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_2 sourceBody150_7

def sourceBody150_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_8

def sourceBody150_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_1 sourceBody150_9

def sourceBody150_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_10

def sourceBody150_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody150_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3144134277#64)

def sourceBody150_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_13 sourceBody150_7

def sourceBody150_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_14

def sourceBody150_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_12 sourceBody150_15

def sourceBody150_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_16

def sourceBody150_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_11 sourceBody150_17

def sourceBody150_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody150_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1013904242#64)

def sourceBody150_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_20 sourceBody150_7

def sourceBody150_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_21

def sourceBody150_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_19 sourceBody150_22

def sourceBody150_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_23

def sourceBody150_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_18 sourceBody150_24

def sourceBody150_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody150_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2773480762#64)

def sourceBody150_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_27 sourceBody150_7

def sourceBody150_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_28

def sourceBody150_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_26 sourceBody150_29

def sourceBody150_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_30

def sourceBody150_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_25 sourceBody150_31

def sourceBody150_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody150_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1359893119#64)

def sourceBody150_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_34 sourceBody150_7

def sourceBody150_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_35

def sourceBody150_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_33 sourceBody150_36

def sourceBody150_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_37

def sourceBody150_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_32 sourceBody150_38

def sourceBody150_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody150_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2600822924#64)

def sourceBody150_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_41 sourceBody150_7

def sourceBody150_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_42

def sourceBody150_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_40 sourceBody150_43

def sourceBody150_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_44

def sourceBody150_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_39 sourceBody150_45

def sourceBody150_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody150_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 528734635#64)

def sourceBody150_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_48 sourceBody150_7

def sourceBody150_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_49

def sourceBody150_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_47 sourceBody150_50

def sourceBody150_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_51

def sourceBody150_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_46 sourceBody150_52

def sourceBody150_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody150_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1541459225#64)

def sourceBody150_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_55 sourceBody150_7

def sourceBody150_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_56

def sourceBody150_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_54 sourceBody150_57

def sourceBody150_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_0 sourceBody150_58

def sourceBody150_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_53 sourceBody150_59

def sourceBody150_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody150_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody150_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_62 sourceBody150_0

def sourceBody150_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_61 sourceBody150_63

def sourceBody150_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody150_60 sourceBody150_64

def source150 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (150, 2, sourceBody150_65)
end InitECandidate.Proofs.WordStages
