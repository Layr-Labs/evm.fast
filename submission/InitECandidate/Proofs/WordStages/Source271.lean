import InitECandidate.Proofs.WordStages.Source255
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody271_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody271_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody271_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody271_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody271_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody271_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody271_0, 271, 2)) (some 269) ([16, 26, 8]) (some (16, sourceBody271_4, 271, 3))

def sourceBody271_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody271_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_5 sourceBody271_6

def sourceBody271_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_7 sourceBody271_0

def sourceBody271_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_3 sourceBody271_8

def sourceBody271_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_2 sourceBody271_9

def sourceBody271_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_1 sourceBody271_10

def sourceBody271_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody271_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody271_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody271_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody271_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 26 (Flapjack.WordRegImm.reg 8) sourceBody271_14 sourceBody271_15

def sourceBody271_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_16 sourceBody271_6

def sourceBody271_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody271_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody271_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody271_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_20 sourceBody271_0

def sourceBody271_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_21 sourceBody271_0

def sourceBody271_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_19 sourceBody271_22

def sourceBody271_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_23

def sourceBody271_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody271_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_25 sourceBody271_4

def sourceBody271_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_24 sourceBody271_26

def sourceBody271_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody271_27 sourceBody271_0

def sourceBody271_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_28 sourceBody271_6

def sourceBody271_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_29 sourceBody271_0

def sourceBody271_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_18 sourceBody271_30

def sourceBody271_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_17 sourceBody271_31

def sourceBody271_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_13 sourceBody271_32

def sourceBody271_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_12 sourceBody271_33

def sourceBody271_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody271_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody271_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody271_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 26, 8, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody271_0, 271, 4)) (some 146) ([14, 24]) (some (14, sourceBody271_37, 271, 5))

def sourceBody271_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_38 sourceBody271_6

def sourceBody271_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_39 sourceBody271_0

def sourceBody271_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_36 sourceBody271_40

def sourceBody271_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_35 sourceBody271_41

def sourceBody271_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody271_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody271_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody271_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody271_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 24, 12, 22]

def sourceBody271_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_47 sourceBody271_0

def sourceBody271_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_46 sourceBody271_48

def sourceBody271_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_45 sourceBody271_49

def sourceBody271_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_44 sourceBody271_50

def sourceBody271_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_43 sourceBody271_51

def sourceBody271_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_42 sourceBody271_52

def sourceBody271_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_53

def sourceBody271_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_54

def sourceBody271_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_55

def sourceBody271_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_56

def sourceBody271_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_57

def sourceBody271_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_58

def sourceBody271_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_59

def sourceBody271_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_60

def sourceBody271_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_34 sourceBody271_61

def sourceBody271_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_11 sourceBody271_62

def sourceBody271_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_63

def sourceBody271_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_64

def sourceBody271_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_65

def sourceBody271_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody271_0 sourceBody271_66

def source271 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (271, 4, sourceBody271_67)
end InitECandidate.Proofs.WordStages
