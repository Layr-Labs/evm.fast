import InitECandidate.Proofs.FrontendStages.Crep.Translate83
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody99_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_fail" [Flapjack.CrepExp.const 1#64]

def crepBody99_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody99_0

def crepBody99_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody99_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody99_1 crepBody99_2

def crepBody99_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64]

def crepBody99_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 128#64)) crepBody99_4 crepBody99_2

def crepBody99_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_fail" [Flapjack.CrepExp.const 3#64]

def crepBody99_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody99_6

def crepBody99_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.var 3)) crepBody99_7 crepBody99_2

def crepBody99_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_fail" [Flapjack.CrepExp.const 4#64]

def crepBody99_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody99_9

def crepBody99_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
  (Flapjack.CrepExp.const 128#64)) crepBody99_10 crepBody99_2

def crepBody99_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody99_11 crepBody99_2

def crepBody99_13 : CrepProg (BitVec 64) :=
.seq crepBody99_8 crepBody99_12

def crepBody99_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64]

def crepBody99_15 : CrepProg (BitVec 64) :=
.seq crepBody99_13 crepBody99_14

def crepBody99_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 128#64]) crepBody99_15

def crepBody99_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 183#64) (Flapjack.CrepExp.var 2)) crepBody99_16 crepBody99_2

def crepBody99_18 : CrepProg (BitVec 64) :=
.seq crepBody99_5 crepBody99_17

def crepBody99_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_read_length"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 3]

def crepBody99_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_fail" [Flapjack.CrepExp.const 5#64]

def crepBody99_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody99_20

def crepBody99_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 55#64) (Flapjack.CrepExp.var 4)) crepBody99_21 crepBody99_2

def crepBody99_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_fail" [Flapjack.CrepExp.const 3#64]

def crepBody99_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody99_23

def crepBody99_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
      Flapjack.CrepExp.var 3])
  (Flapjack.CrepExp.var 4)) crepBody99_24 crepBody99_2

def crepBody99_26 : CrepProg (BitVec 64) :=
.seq crepBody99_22 crepBody99_25

def crepBody99_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.const 0#64]

def crepBody99_28 : CrepProg (BitVec 64) :=
.seq crepBody99_26 crepBody99_27

def crepBody99_29 : CrepProg (BitVec 64) :=
.seq crepBody99_19 crepBody99_28

def crepBody99_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody99_29

def crepBody99_31 : CrepProg (BitVec 64) :=
.seq crepBody99_8 crepBody99_30

def crepBody99_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 183#64]) crepBody99_31

def crepBody99_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 191#64) (Flapjack.CrepExp.var 2)) crepBody99_32 crepBody99_2

def crepBody99_34 : CrepProg (BitVec 64) :=
.seq crepBody99_18 crepBody99_33

def crepBody99_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]

def crepBody99_36 : CrepProg (BitVec 64) :=
.seq crepBody99_8 crepBody99_35

def crepBody99_37 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]) crepBody99_36

def crepBody99_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 247#64) (Flapjack.CrepExp.var 2)) crepBody99_37 crepBody99_2

def crepBody99_39 : CrepProg (BitVec 64) :=
.seq crepBody99_34 crepBody99_38

def crepBody99_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.const 1#64]

def crepBody99_41 : CrepProg (BitVec 64) :=
.seq crepBody99_26 crepBody99_40

def crepBody99_42 : CrepProg (BitVec 64) :=
.seq crepBody99_19 crepBody99_41

def crepBody99_43 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody99_42

def crepBody99_44 : CrepProg (BitVec 64) :=
.seq crepBody99_8 crepBody99_43

def crepBody99_45 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 247#64]) crepBody99_44

def crepBody99_46 : CrepProg (BitVec 64) :=
.seq crepBody99_39 crepBody99_45

def crepBody99_47 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0)) crepBody99_46

def crepBody99_48 : CrepProg (BitVec 64) :=
.seq crepBody99_3 crepBody99_47

def data99 : CrepProg (BitVec 64) := crepBody99_48
def output99 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8], [0, 1], crepProgToHOL data99)
end InitECandidate.Proofs.FrontendStages.Crep
