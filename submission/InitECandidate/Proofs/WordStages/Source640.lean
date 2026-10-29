import InitECandidate.Proofs.WordStages.Source624
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody640_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody640_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody640_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody640_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody640_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody640_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody640_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody640_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 10) sourceBody640_5 sourceBody640_6

def sourceBody640_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_7 sourceBody640_2

def sourceBody640_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody640_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 16])

def sourceBody640_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody640_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_11 sourceBody640_0

def sourceBody640_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_10 sourceBody640_12

def sourceBody640_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody640_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody640_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody640_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody640_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 6) sourceBody640_16 sourceBody640_17

def sourceBody640_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_18 sourceBody640_2

def sourceBody640_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody640_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody640_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody640_0, 640, 2)) (some 137) ([18]) (some (18, sourceBody640_21, 640, 3))

def sourceBody640_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_22 sourceBody640_2

def sourceBody640_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_23 sourceBody640_0

def sourceBody640_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_9 sourceBody640_24

def sourceBody640_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64],
                Flapjack.WordLangExpHOL.var 16])
            (Flapjack.WordLangExpHOL.const 3#64),
          Flapjack.WordLangExpHOL.var 10],
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody640_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody640_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_27 sourceBody640_0

def sourceBody640_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_26 sourceBody640_28

def sourceBody640_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_25 sourceBody640_29

def sourceBody640_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_0 sourceBody640_30

def sourceBody640_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_0 sourceBody640_31

def sourceBody640_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody640_32 sourceBody640_0

def sourceBody640_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_33 sourceBody640_2

def sourceBody640_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_34 sourceBody640_0

def sourceBody640_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_20 sourceBody640_35

def sourceBody640_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_19 sourceBody640_36

def sourceBody640_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_15 sourceBody640_37

def sourceBody640_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_9 sourceBody640_38

def sourceBody640_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody640_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody640_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_41 sourceBody640_0

def sourceBody640_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_42 sourceBody640_0

def sourceBody640_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_40 sourceBody640_43

def sourceBody640_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_0 sourceBody640_44

def sourceBody640_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_39 sourceBody640_45

def sourceBody640_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_14 sourceBody640_46

def sourceBody640_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_13 sourceBody640_47

def sourceBody640_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody640_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_48 sourceBody640_49

def sourceBody640_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody640_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody640_50 sourceBody640_51

def sourceBody640_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_52 sourceBody640_2

def sourceBody640_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_53 sourceBody640_0

def sourceBody640_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_9 sourceBody640_54

def sourceBody640_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_8 sourceBody640_55

def sourceBody640_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_4 sourceBody640_56

def sourceBody640_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_3 sourceBody640_57

def sourceBody640_59 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody640_58 (Flapjack.Spt.ls PUnit.unit)

def sourceBody640_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_59 sourceBody640_2

def sourceBody640_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_2 sourceBody640_60

def sourceBody640_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody640_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody640_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_63 sourceBody640_0

def sourceBody640_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_62 sourceBody640_64

def sourceBody640_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_61 sourceBody640_65

def sourceBody640_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_1 sourceBody640_66

def sourceBody640_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody640_0 sourceBody640_67

def source640 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (640, 3, sourceBody640_68)
end InitECandidate.Proofs.WordStages
