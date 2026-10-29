import InitECandidate.Proofs.FrontendStages.Crep.Translate249
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody265_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 128#64)

def crepBody265_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody265_2 : CrepProg (BitVec 64) :=
.seq crepBody265_0 crepBody265_1

def crepBody265_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody265_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody265_2 crepBody265_3

def crepBody265_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 160#64)

def crepBody265_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody265_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody265_6

def crepBody265_8 : CrepProg (BitVec 64) :=
.seq crepBody265_5 crepBody265_7

def crepBody265_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 33#64]

def crepBody265_10 : CrepProg (BitVec 64) :=
.seq crepBody265_8 crepBody265_9

def crepBody265_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody265_10 crepBody265_3

def crepBody265_12 : CrepProg (BitVec 64) :=
.seq crepBody265_4 crepBody265_11

def crepBody265_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "mpt_fail" [Flapjack.CrepExp.const 13#64]

def crepBody265_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody265_13

def crepBody265_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody265_14 crepBody265_3

def crepBody265_16 : CrepProg (BitVec 64) :=
.seq crepBody265_12 crepBody265_15

def crepBody265_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody265_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody265_17

def crepBody265_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody265_20 : CrepProg (BitVec 64) :=
.seq crepBody265_18 crepBody265_19

def crepBody265_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 32#64)) crepBody265_20 crepBody265_3

def crepBody265_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "node_hash_cached" [Flapjack.CrepExp.var 0]

def crepBody265_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.const 32#64]

def crepBody265_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody265_23

def crepBody265_25 : CrepProg (BitVec 64) :=
.seq crepBody265_5 crepBody265_24

def crepBody265_26 : CrepProg (BitVec 64) :=
.seq crepBody265_25 crepBody265_9

def crepBody265_27 : CrepProg (BitVec 64) :=
.seq crepBody265_22 crepBody265_26

def crepBody265_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody265_27

def crepBody265_29 : CrepProg (BitVec 64) :=
.seq crepBody265_21 crepBody265_28

def crepBody265_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody265_29

def crepBody265_31 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody265_30

def crepBody265_32 : CrepProg (BitVec 64) :=
.seq crepBody265_16 crepBody265_31

def data265 : CrepProg (BitVec 64) := crepBody265_32
def output265 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [110#8, 111#8, 100#8, 101#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8, 95#8, 114#8, 101#8, 102#8], [0, 1], crepProgToHOL data265)
end InitECandidate.Proofs.FrontendStages.Crep
