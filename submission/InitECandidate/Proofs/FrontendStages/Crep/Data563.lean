import InitECandidate.Proofs.FrontendStages.Crep.Translate547
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody563_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]]

def crepBody563_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody563_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64)) crepBody563_0 crepBody563_1

def crepBody563_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2],
        Flapjack.CrepExp.op Flapjack.BinOp.and
          [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4294967295#64],
            Flapjack.CrepExp.var 3]]]

def crepBody563_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)) crepBody563_3 crepBody563_1

def crepBody563_5 : CrepProg (BitVec 64) :=
.seq crepBody563_2 crepBody563_4

def crepBody563_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.xor
      [Flapjack.CrepExp.op Flapjack.BinOp.or
          [Flapjack.CrepExp.var 1,
            Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4294967295#64]],
        Flapjack.CrepExp.var 3]]

def crepBody563_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 48#64)) crepBody563_6 crepBody563_1

def crepBody563_8 : CrepProg (BitVec 64) :=
.seq crepBody563_5 crepBody563_7

def crepBody563_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
        Flapjack.CrepExp.op Flapjack.BinOp.and
          [Flapjack.CrepExp.var 2,
            Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4294967295#64]]]]

def crepBody563_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 64#64)) crepBody563_9 crepBody563_1

def crepBody563_11 : CrepProg (BitVec 64) :=
.seq crepBody563_8 crepBody563_10

def crepBody563_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.xor
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.op Flapjack.BinOp.or
          [Flapjack.CrepExp.var 2,
            Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4294967295#64]]]]

def crepBody563_13 : CrepProg (BitVec 64) :=
.seq crepBody563_11 crepBody563_12

def data563 : CrepProg (BitVec 64) := crepBody563_13
def output563 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 109#8, 100#8, 95#8, 102#8], [0, 1, 2, 3], crepProgToHOL data563)
end InitECandidate.Proofs.FrontendStages.Crep
