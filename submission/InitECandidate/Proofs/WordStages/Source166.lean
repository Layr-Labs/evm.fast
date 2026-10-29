import InitECandidate.Proofs.WordStages.Source150
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody166_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody166_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody166_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody166_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody166_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 8, 14]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody166_0, 166, 2)) (some 163) ([10, 18]) (some (10, sourceBody166_3, 166, 3))

def sourceBody166_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody166_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_4 sourceBody166_5

def sourceBody166_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_6 sourceBody166_0

def sourceBody166_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_2 sourceBody166_7

def sourceBody166_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_1 sourceBody166_8

def sourceBody166_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody166_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody166_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody166_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody166_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 6) sourceBody166_12 sourceBody166_13

def sourceBody166_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_14 sourceBody166_5

def sourceBody166_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody166_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 16])

def sourceBody166_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody166_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody166_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody166_0, 166, 4)) (some 165) ([18, 6]) (some (18, sourceBody166_19, 166, 5))

def sourceBody166_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_20 sourceBody166_5

def sourceBody166_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_21 sourceBody166_0

def sourceBody166_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_18 sourceBody166_22

def sourceBody166_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_17 sourceBody166_23

def sourceBody166_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_24

def sourceBody166_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_25

def sourceBody166_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody166_26 sourceBody166_0

def sourceBody166_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_27 sourceBody166_5

def sourceBody166_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_28 sourceBody166_0

def sourceBody166_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_16 sourceBody166_29

def sourceBody166_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_15 sourceBody166_30

def sourceBody166_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_11 sourceBody166_31

def sourceBody166_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_10 sourceBody166_32

def sourceBody166_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 8])

def sourceBody166_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody166_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_35 sourceBody166_0

def sourceBody166_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_34 sourceBody166_36

def sourceBody166_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_33 sourceBody166_37

def sourceBody166_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_9 sourceBody166_38

def sourceBody166_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_39

def sourceBody166_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_40

def sourceBody166_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_41

def sourceBody166_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_42

def sourceBody166_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_43

def sourceBody166_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody166_0 sourceBody166_44

def source166 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (166, 3, sourceBody166_45)
end InitECandidate.Proofs.WordStages
