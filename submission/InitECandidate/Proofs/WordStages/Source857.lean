import InitECandidate.Proofs.WordStages.Source841
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody857_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody857_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody857_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody857_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody857_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody857_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody857_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody857_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody857_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody857_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody857_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 40, 14, 30, 22, 38, 18, 34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody857_0, 857, 2)) (some 121) ([26, 42, 12, 28, 20, 36, 16, 32]) (some (26, sourceBody857_9, 857, 3))

def sourceBody857_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody857_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_10 sourceBody857_11

def sourceBody857_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_12 sourceBody857_0

def sourceBody857_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_8 sourceBody857_13

def sourceBody857_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_7 sourceBody857_14

def sourceBody857_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_6 sourceBody857_15

def sourceBody857_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_5 sourceBody857_16

def sourceBody857_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_4 sourceBody857_17

def sourceBody857_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_3 sourceBody857_18

def sourceBody857_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_2 sourceBody857_19

def sourceBody857_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_1 sourceBody857_20

def sourceBody857_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody857_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.var 34])

def sourceBody857_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody857_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 28) sourceBody857_24 sourceBody857_3

def sourceBody857_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_25 sourceBody857_11

def sourceBody857_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody857_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody857_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_28 sourceBody857_0

def sourceBody857_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_29 sourceBody857_0

def sourceBody857_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody857_30 sourceBody857_0

def sourceBody857_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_31 sourceBody857_11

def sourceBody857_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_32 sourceBody857_0

def sourceBody857_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_27 sourceBody857_33

def sourceBody857_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_26 sourceBody857_34

def sourceBody857_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_4 sourceBody857_35

def sourceBody857_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_23 sourceBody857_36

def sourceBody857_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody857_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody857_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 40)

def sourceBody857_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody857_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody857_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42, 12, 28, 20, 36]

def sourceBody857_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_43 sourceBody857_0

def sourceBody857_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_42 sourceBody857_44

def sourceBody857_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_41 sourceBody857_45

def sourceBody857_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_40 sourceBody857_46

def sourceBody857_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_39 sourceBody857_47

def sourceBody857_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_38 sourceBody857_48

def sourceBody857_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_37 sourceBody857_49

def sourceBody857_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_22 sourceBody857_50

def sourceBody857_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_51

def sourceBody857_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_21 sourceBody857_52

def sourceBody857_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_53

def sourceBody857_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_54

def sourceBody857_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_55

def sourceBody857_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_56

def sourceBody857_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_57

def sourceBody857_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_58

def sourceBody857_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_59

def sourceBody857_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_60

def sourceBody857_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_61

def sourceBody857_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_62

def sourceBody857_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_63

def sourceBody857_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_64

def sourceBody857_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_65

def sourceBody857_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_66

def sourceBody857_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_67

def sourceBody857_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody857_0 sourceBody857_68

def source857 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (857, 6, sourceBody857_69)
end InitECandidate.Proofs.WordStages
