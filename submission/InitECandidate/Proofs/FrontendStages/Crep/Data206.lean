import InitECandidate.Proofs.FrontendStages.Crep.Translate190
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody206_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "hdr_uint_field"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]

def crepBody206_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 4)

def crepBody206_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody206_3 : CrepProg (BitVec 64) :=
.seq crepBody206_1 crepBody206_2

def crepBody206_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 4#64) crepBody206_3

def crepBody206_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 3#64

def crepBody206_6 : CrepProg (BitVec 64) :=
.seq crepBody206_4 crepBody206_5

def crepBody206_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 8#64) (Flapjack.CrepExp.var 3)) crepBody206_6 crepBody206_2

def crepBody206_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 6)

def crepBody206_9 : CrepProg (BitVec 64) :=
.seq crepBody206_8 crepBody206_2

def crepBody206_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5])]) crepBody206_9

def crepBody206_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody206_12 : CrepProg (BitVec 64) :=
.seq crepBody206_11 crepBody206_2

def crepBody206_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody206_12

def crepBody206_14 : CrepProg (BitVec 64) :=
.seq crepBody206_10 crepBody206_13

def crepBody206_15 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 3)) crepBody206_14

def crepBody206_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody206_17 : CrepProg (BitVec 64) :=
.seq crepBody206_15 crepBody206_16

def crepBody206_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody206_17

def crepBody206_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody206_18

def crepBody206_20 : CrepProg (BitVec 64) :=
.seq crepBody206_7 crepBody206_19

def crepBody206_21 : CrepProg (BitVec 64) :=
.seq crepBody206_0 crepBody206_20

def crepBody206_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody206_21

def crepBody206_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody206_22

def data206 : CrepProg (BitVec 64) := crepBody206_23
def output206 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 100#8, 114#8, 95#8, 119#8, 111#8, 114#8, 100#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8], [0, 1], crepProgToHOL data206)
end InitECandidate.Proofs.FrontendStages.Crep
