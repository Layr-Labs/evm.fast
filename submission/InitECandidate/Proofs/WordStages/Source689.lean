import InitECandidate.Proofs.WordStages.Source673
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody689_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody689_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody689_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody689_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody689_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody689_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody689_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 10) sourceBody689_5 sourceBody689_3

def sourceBody689_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_6 sourceBody689_2

def sourceBody689_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody689_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody689_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody689_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_10 sourceBody689_0

def sourceBody689_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_11 sourceBody689_0

def sourceBody689_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_9 sourceBody689_12

def sourceBody689_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_0 sourceBody689_13

def sourceBody689_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody689_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody689_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody689_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody689_0, 689, 2)) (some 80) ([12, 10]) (some (12, sourceBody689_17, 689, 3))

def sourceBody689_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_18 sourceBody689_2

def sourceBody689_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_19 sourceBody689_0

def sourceBody689_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_16 sourceBody689_20

def sourceBody689_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_15 sourceBody689_21

def sourceBody689_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody689_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody689_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody689_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody689_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 16) sourceBody689_25 sourceBody689_26

def sourceBody689_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_27 sourceBody689_2

def sourceBody689_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody689_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody689_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody689_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_31 sourceBody689_0

def sourceBody689_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_30 sourceBody689_32

def sourceBody689_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody689_33 sourceBody689_0

def sourceBody689_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_34 sourceBody689_2

def sourceBody689_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_35 sourceBody689_0

def sourceBody689_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_29 sourceBody689_36

def sourceBody689_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_28 sourceBody689_37

def sourceBody689_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_24 sourceBody689_38

def sourceBody689_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_23 sourceBody689_39

def sourceBody689_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_22 sourceBody689_40

def sourceBody689_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_0 sourceBody689_41

def sourceBody689_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_0 sourceBody689_42

def sourceBody689_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_14 sourceBody689_43

def sourceBody689_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody689_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_44 sourceBody689_45

def sourceBody689_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody689_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody689_46 sourceBody689_47

def sourceBody689_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_48 sourceBody689_2

def sourceBody689_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_49 sourceBody689_0

def sourceBody689_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_8 sourceBody689_50

def sourceBody689_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_7 sourceBody689_51

def sourceBody689_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_4 sourceBody689_52

def sourceBody689_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_3 sourceBody689_53

def sourceBody689_55 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody689_54 (Flapjack.Spt.ls PUnit.unit)

def sourceBody689_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_55 sourceBody689_2

def sourceBody689_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_2 sourceBody689_56

def sourceBody689_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody689_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody689_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_59 sourceBody689_0

def sourceBody689_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_58 sourceBody689_60

def sourceBody689_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_57 sourceBody689_61

def sourceBody689_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_1 sourceBody689_62

def sourceBody689_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody689_0 sourceBody689_63

def source689 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (689, 3, sourceBody689_64)
end InitECandidate.Proofs.WordStages
