import InitECandidate.Proofs.WordStages.Source129
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody145_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody145_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody145_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody145_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody145_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 24 (Flapjack.WordRegImm.reg 12) sourceBody145_2 sourceBody145_3

def sourceBody145_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody145_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_4 sourceBody145_5

def sourceBody145_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody145_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody145_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody145_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody145_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_9 sourceBody145_10

def sourceBody145_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_8 sourceBody145_11

def sourceBody145_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody145_12 sourceBody145_10

def sourceBody145_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_13 sourceBody145_5

def sourceBody145_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_14 sourceBody145_10

def sourceBody145_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_7 sourceBody145_15

def sourceBody145_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_6 sourceBody145_16

def sourceBody145_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_1 sourceBody145_17

def sourceBody145_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_0 sourceBody145_18

def sourceBody145_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 31#64, Flapjack.WordLangExpHOL.var 2])
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody145_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody145_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody145_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody145_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody145_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 18)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody145_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody145_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody145_10, 145, 2)) (some 103) ([12, 20, 16, 22, 14]) (some (12, sourceBody145_26, 145, 3))

def sourceBody145_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_27 sourceBody145_5

def sourceBody145_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_28 sourceBody145_10

def sourceBody145_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_25 sourceBody145_29

def sourceBody145_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_24 sourceBody145_30

def sourceBody145_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_23 sourceBody145_31

def sourceBody145_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_22 sourceBody145_32

def sourceBody145_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_21 sourceBody145_33

def sourceBody145_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 63#64]),
      Flapjack.WordLangExpHOL.const 255#64])

def sourceBody145_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody145_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_36 sourceBody145_10

def sourceBody145_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_35 sourceBody145_37

def sourceBody145_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_34 sourceBody145_38

def sourceBody145_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_10 sourceBody145_39

def sourceBody145_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_10 sourceBody145_40

def sourceBody145_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_20 sourceBody145_41

def sourceBody145_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_10 sourceBody145_42

def sourceBody145_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody145_19 sourceBody145_43

def source145 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (145, 6, sourceBody145_44)
end InitECandidate.Proofs.WordStages
