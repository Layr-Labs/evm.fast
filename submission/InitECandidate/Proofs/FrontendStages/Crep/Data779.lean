import InitECandidate.Proofs.FrontendStages.Crep.Translate763
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody779_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "logs_encoded_bound" [Flapjack.CrepExp.var 3]

def crepBody779_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 400#64]]

def crepBody779_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64)

def crepBody779_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 1#64)

def crepBody779_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody779_5 : CrepProg (BitVec 64) :=
.seq crepBody779_3 crepBody779_4

def crepBody779_6 : CrepProg (BitVec 64) :=
.seq crepBody779_2 crepBody779_5

def crepBody779_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 128#64)

def crepBody779_8 : CrepProg (BitVec 64) :=
.seq crepBody779_7 crepBody779_5

def crepBody779_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody779_6 crepBody779_8

def crepBody779_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 9)

def crepBody779_11 : CrepProg (BitVec 64) :=
.seq crepBody779_10 crepBody779_4

def crepBody779_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]) crepBody779_11

def crepBody779_13 : CrepProg (BitVec 64) :=
.seq crepBody779_9 crepBody779_12

def crepBody779_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_word" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 2]

def crepBody779_15 : CrepProg (BitVec 64) :=
.seq crepBody779_13 crepBody779_14

def crepBody779_16 : CrepProg (BitVec 64) :=
.seq crepBody779_15 crepBody779_12

def crepBody779_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 256#64]

def crepBody779_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "logs_bloom" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 9]

def crepBody779_19 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody779_18

def crepBody779_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 256#64]

def crepBody779_21 : CrepProg (BitVec 64) :=
.seq crepBody779_19 crepBody779_20

def crepBody779_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 10)

def crepBody779_23 : CrepProg (BitVec 64) :=
.seq crepBody779_22 crepBody779_4

def crepBody779_24 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]) crepBody779_23

def crepBody779_25 : CrepProg (BitVec 64) :=
.seq crepBody779_21 crepBody779_24

def crepBody779_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "encode_logs" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 3]

def crepBody779_27 : CrepProg (BitVec 64) :=
.seq crepBody779_25 crepBody779_26

def crepBody779_28 : CrepProg (BitVec 64) :=
.seq crepBody779_27 crepBody779_24

def crepBody779_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_finish_list" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody779_30 : CrepProg (BitVec 64) :=
.seq crepBody779_28 crepBody779_29

def crepBody779_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.var 0)

def crepBody779_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]]

def crepBody779_33 : CrepProg (BitVec 64) :=
.seq crepBody779_31 crepBody779_32

def crepBody779_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody779_33 crepBody779_4

def crepBody779_35 : CrepProg (BitVec 64) :=
.seq crepBody779_30 crepBody779_34

def crepBody779_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8]

def crepBody779_37 : CrepProg (BitVec 64) :=
.seq crepBody779_35 crepBody779_36

def crepBody779_38 : CrepProg (BitVec 64) :=
.seq crepBody779_17 crepBody779_37

def crepBody779_39 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody779_38

def crepBody779_40 : CrepProg (BitVec 64) :=
.seq crepBody779_16 crepBody779_39

def crepBody779_41 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody779_40

def crepBody779_42 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 9#64]) crepBody779_41

def crepBody779_43 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody779_42

def crepBody779_44 : CrepProg (BitVec 64) :=
.seq crepBody779_1 crepBody779_43

def crepBody779_45 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody779_44

def crepBody779_46 : CrepProg (BitVec 64) :=
.seq crepBody779_0 crepBody779_45

def crepBody779_47 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody779_46

def data779 : CrepProg (BitVec 64) := crepBody779_47
def output779 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 114#8, 101#8, 99#8, 101#8, 105#8, 112#8, 116#8], [0, 1, 2, 3], crepProgToHOL data779)
end InitECandidate.Proofs.FrontendStages.Crep
