import InitECandidate.Proofs.FrontendStages.Crep.Translate42
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody58_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody58_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody58_2 : CrepProg (BitVec 64) :=
.seq crepBody58_0 crepBody58_1

def crepBody58_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]) crepBody58_2

def crepBody58_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 2)

def crepBody58_5 : CrepProg (BitVec 64) :=
.seq crepBody58_4 crepBody58_1

def crepBody58_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64)) crepBody58_5

def crepBody58_7 : CrepProg (BitVec 64) :=
.seq crepBody58_3 crepBody58_6

def crepBody58_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4294901760#64])
  (Flapjack.CrepExp.const 0#64)) crepBody58_7 crepBody58_1

def crepBody58_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]) crepBody58_2

def crepBody58_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 8#64)) crepBody58_5

def crepBody58_11 : CrepProg (BitVec 64) :=
.seq crepBody58_9 crepBody58_10

def crepBody58_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4278190080#64])
  (Flapjack.CrepExp.const 0#64)) crepBody58_11 crepBody58_1

def crepBody58_13 : CrepProg (BitVec 64) :=
.seq crepBody58_8 crepBody58_12

def crepBody58_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64]) crepBody58_2

def crepBody58_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 4#64)) crepBody58_5

def crepBody58_16 : CrepProg (BitVec 64) :=
.seq crepBody58_14 crepBody58_15

def crepBody58_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4026531840#64])
  (Flapjack.CrepExp.const 0#64)) crepBody58_16 crepBody58_1

def crepBody58_18 : CrepProg (BitVec 64) :=
.seq crepBody58_13 crepBody58_17

def crepBody58_19 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 2#64]) crepBody58_2

def crepBody58_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 2#64)) crepBody58_5

def crepBody58_21 : CrepProg (BitVec 64) :=
.seq crepBody58_19 crepBody58_20

def crepBody58_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3221225472#64])
  (Flapjack.CrepExp.const 0#64)) crepBody58_21 crepBody58_1

def crepBody58_23 : CrepProg (BitVec 64) :=
.seq crepBody58_18 crepBody58_22

def crepBody58_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody58_2

def crepBody58_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2147483648#64])
  (Flapjack.CrepExp.const 0#64)) crepBody58_24 crepBody58_1

def crepBody58_26 : CrepProg (BitVec 64) :=
.seq crepBody58_23 crepBody58_25

def crepBody58_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody58_28 : CrepProg (BitVec 64) :=
.seq crepBody58_26 crepBody58_27

def crepBody58_29 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody58_28

def data58 : CrepProg (BitVec 64) := crepBody58_29
def output58 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [110#8, 108#8, 122#8, 51#8, 50#8], [0], crepProgToHOL data58)
end InitECandidate.Proofs.FrontendStages.Crep
