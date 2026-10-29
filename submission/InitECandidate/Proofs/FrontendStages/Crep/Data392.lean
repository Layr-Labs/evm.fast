import InitECandidate.Proofs.FrontendStages.Crep.Translate376
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody392_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody392_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody392_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1))
  (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0))) crepBody392_0 crepBody392_1

def crepBody392_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody392_4 : CrepProg (BitVec 64) :=
.seq crepBody392_2 crepBody392_3

def crepBody392_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody392_4 crepBody392_1

def crepBody392_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.const 32#64)

def crepBody392_7 : CrepProg (BitVec 64) :=
.seq crepBody392_6 crepBody392_1

def crepBody392_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 2#64)) crepBody392_7 crepBody392_1

def crepBody392_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody392_0 crepBody392_1

def crepBody392_10 : CrepProg (BitVec 64) :=
.seq crepBody392_9 crepBody392_3

def crepBody392_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)) crepBody392_10 crepBody392_1

def crepBody392_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 7)

def crepBody392_13 : CrepProg (BitVec 64) :=
.seq crepBody392_12 crepBody392_1

def crepBody392_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody392_13

def crepBody392_15 : CrepProg (BitVec 64) :=
.seq crepBody392_11 crepBody392_14

def crepBody392_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4])) crepBody392_15

def crepBody392_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4])) crepBody392_16

def crepBody392_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 3)) crepBody392_17

def crepBody392_19 : CrepProg (BitVec 64) :=
.seq crepBody392_18 crepBody392_3

def crepBody392_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody392_19

def crepBody392_21 : CrepProg (BitVec 64) :=
.seq crepBody392_8 crepBody392_20

def crepBody392_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 20#64) crepBody392_21

def crepBody392_23 : CrepProg (BitVec 64) :=
.seq crepBody392_5 crepBody392_22

def data392 : CrepProg (BitVec 64) := crepBody392_23
def output392 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 97#8, 108#8, 95#8, 115#8, 111#8, 114#8, 116#8, 95#8, 103#8, 116#8], [0, 1, 2], crepProgToHOL data392)
end InitECandidate.Proofs.FrontendStages.Crep
