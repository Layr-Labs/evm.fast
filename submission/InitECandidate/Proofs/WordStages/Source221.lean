import InitECandidate.Proofs.WordStages.Source205
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody221_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody221_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody221_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody221_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody221_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody221_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody221_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody221_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 30

def sourceBody221_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_7 sourceBody221_0

def sourceBody221_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_6 sourceBody221_8

def sourceBody221_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 20)

def sourceBody221_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  30

def sourceBody221_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_11 sourceBody221_0

def sourceBody221_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_10 sourceBody221_12

def sourceBody221_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody221_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  30

def sourceBody221_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_15 sourceBody221_0

def sourceBody221_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_14 sourceBody221_16

def sourceBody221_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody221_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  30

def sourceBody221_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_19 sourceBody221_0

def sourceBody221_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_18 sourceBody221_20

def sourceBody221_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_21 sourceBody221_0

def sourceBody221_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_17 sourceBody221_22

def sourceBody221_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_13 sourceBody221_23

def sourceBody221_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_9 sourceBody221_24

def sourceBody221_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_5 sourceBody221_25

def sourceBody221_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_26

def sourceBody221_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_4 sourceBody221_27

def sourceBody221_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_28

def sourceBody221_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_3 sourceBody221_29

def sourceBody221_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_30

def sourceBody221_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_2 sourceBody221_31

def sourceBody221_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_32

def sourceBody221_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_1 sourceBody221_33

def sourceBody221_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_34

def sourceBody221_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody221_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody221_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody221_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody221_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody221_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_40 sourceBody221_25

def sourceBody221_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_41

def sourceBody221_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_39 sourceBody221_42

def sourceBody221_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_43

def sourceBody221_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_38 sourceBody221_44

def sourceBody221_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_45

def sourceBody221_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_37 sourceBody221_46

def sourceBody221_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_47

def sourceBody221_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_36 sourceBody221_48

def sourceBody221_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_49

def sourceBody221_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_35 sourceBody221_50

def sourceBody221_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody221_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody221_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody221_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody221_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody221_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_56 sourceBody221_25

def sourceBody221_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_57

def sourceBody221_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_55 sourceBody221_58

def sourceBody221_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_59

def sourceBody221_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_54 sourceBody221_60

def sourceBody221_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_61

def sourceBody221_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_53 sourceBody221_62

def sourceBody221_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_63

def sourceBody221_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_52 sourceBody221_64

def sourceBody221_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_0 sourceBody221_65

def sourceBody221_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_51 sourceBody221_66

def sourceBody221_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody221_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody221_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_69 sourceBody221_0

def sourceBody221_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_68 sourceBody221_70

def sourceBody221_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody221_67 sourceBody221_71

def source221 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (221, 10, sourceBody221_72)
end InitECandidate.Proofs.WordStages
