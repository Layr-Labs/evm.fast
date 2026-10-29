import InitECandidate.Proofs.FrontendStages.Crep.Translate81
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody97_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_fail" [Flapjack.CrepExp.const 1#64]

def crepBody97_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody97_0

def crepBody97_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody97_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody97_1 crepBody97_2

def crepBody97_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 1#64]

def crepBody97_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 128#64)) crepBody97_4 crepBody97_2

def crepBody97_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_fail" [Flapjack.CrepExp.const 3#64]

def crepBody97_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody97_6

def crepBody97_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.var 3)) crepBody97_7 crepBody97_2

def crepBody97_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_fail" [Flapjack.CrepExp.const 4#64]

def crepBody97_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody97_9

def crepBody97_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
  (Flapjack.CrepExp.const 128#64)) crepBody97_10 crepBody97_2

def crepBody97_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody97_11 crepBody97_2

def crepBody97_13 : CrepProg (BitVec 64) :=
.seq crepBody97_8 crepBody97_12

def crepBody97_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3]]

def crepBody97_15 : CrepProg (BitVec 64) :=
.seq crepBody97_13 crepBody97_14

def crepBody97_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 128#64]) crepBody97_15

def crepBody97_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 183#64) (Flapjack.CrepExp.var 2)) crepBody97_16 crepBody97_2

def crepBody97_18 : CrepProg (BitVec 64) :=
.seq crepBody97_5 crepBody97_17

def crepBody97_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_read_length"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 3]

def crepBody97_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_fail" [Flapjack.CrepExp.const 5#64]

def crepBody97_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody97_20

def crepBody97_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 55#64) (Flapjack.CrepExp.var 4)) crepBody97_21 crepBody97_2

def crepBody97_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_fail" [Flapjack.CrepExp.const 3#64]

def crepBody97_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody97_23

def crepBody97_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
      Flapjack.CrepExp.var 3])
  (Flapjack.CrepExp.var 4)) crepBody97_24 crepBody97_2

def crepBody97_26 : CrepProg (BitVec 64) :=
.seq crepBody97_22 crepBody97_25

def crepBody97_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]]

def crepBody97_28 : CrepProg (BitVec 64) :=
.seq crepBody97_26 crepBody97_27

def crepBody97_29 : CrepProg (BitVec 64) :=
.seq crepBody97_19 crepBody97_28

def crepBody97_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody97_29

def crepBody97_31 : CrepProg (BitVec 64) :=
.seq crepBody97_8 crepBody97_30

def crepBody97_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 183#64]) crepBody97_31

def crepBody97_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 191#64) (Flapjack.CrepExp.var 2)) crepBody97_32 crepBody97_2

def crepBody97_34 : CrepProg (BitVec 64) :=
.seq crepBody97_18 crepBody97_33

def crepBody97_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 3]

def crepBody97_36 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody97_35

def crepBody97_37 : CrepProg (BitVec 64) :=
.seq crepBody97_8 crepBody97_36

def crepBody97_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3]]

def crepBody97_39 : CrepProg (BitVec 64) :=
.seq crepBody97_37 crepBody97_38

def crepBody97_40 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]) crepBody97_39

def crepBody97_41 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 247#64) (Flapjack.CrepExp.var 2)) crepBody97_40 crepBody97_2

def crepBody97_42 : CrepProg (BitVec 64) :=
.seq crepBody97_34 crepBody97_41

def crepBody97_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.var 4]

def crepBody97_44 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody97_43

def crepBody97_45 : CrepProg (BitVec 64) :=
.seq crepBody97_26 crepBody97_44

def crepBody97_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]]

def crepBody97_47 : CrepProg (BitVec 64) :=
.seq crepBody97_45 crepBody97_46

def crepBody97_48 : CrepProg (BitVec 64) :=
.seq crepBody97_19 crepBody97_47

def crepBody97_49 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody97_48

def crepBody97_50 : CrepProg (BitVec 64) :=
.seq crepBody97_8 crepBody97_49

def crepBody97_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 247#64]) crepBody97_50

def crepBody97_52 : CrepProg (BitVec 64) :=
.seq crepBody97_42 crepBody97_51

def crepBody97_53 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0)) crepBody97_52

def crepBody97_54 : CrepProg (BitVec 64) :=
.seq crepBody97_3 crepBody97_53

def data97 : CrepProg (BitVec 64) := crepBody97_54
def output97 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8], [0, 1], crepProgToHOL data97)
end InitECandidate.Proofs.FrontendStages.Crep
