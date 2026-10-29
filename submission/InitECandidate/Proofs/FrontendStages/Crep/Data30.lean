import InitECandidate.Proofs.FrontendStages.Crep.Translate14
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody30_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "trap_with" [Flapjack.CrepExp.const 2#64]

def crepBody30_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody30_0

def crepBody30_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody30_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody30_1 crepBody30_2

def crepBody30_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 0]

def crepBody30_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 1)) crepBody30_4 crepBody30_2

def crepBody30_6 : CrepProg (BitVec 64) :=
.seq crepBody30_3 crepBody30_5

def crepBody30_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 5)

def crepBody30_8 : CrepProg (BitVec 64) :=
.seq crepBody30_7 crepBody30_2

def crepBody30_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody30_8

def crepBody30_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 5)

def crepBody30_11 : CrepProg (BitVec 64) :=
.seq crepBody30_10 crepBody30_2

def crepBody30_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 4),
        Flapjack.CrepExp.const 1#64]]) crepBody30_11

def crepBody30_13 : CrepProg (BitVec 64) :=
.seq crepBody30_9 crepBody30_12

def crepBody30_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]) crepBody30_11

def crepBody30_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 5)

def crepBody30_16 : CrepProg (BitVec 64) :=
.seq crepBody30_15 crepBody30_2

def crepBody30_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 4)]) crepBody30_16

def crepBody30_18 : CrepProg (BitVec 64) :=
.seq crepBody30_14 crepBody30_17

def crepBody30_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody30_18 crepBody30_2

def crepBody30_20 : CrepProg (BitVec 64) :=
.seq crepBody30_13 crepBody30_19

def crepBody30_21 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 4)) crepBody30_20

def crepBody30_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody30_23 : CrepProg (BitVec 64) :=
.seq crepBody30_21 crepBody30_22

def crepBody30_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 64#64) crepBody30_23

def crepBody30_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody30_24

def crepBody30_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody30_25

def crepBody30_27 : CrepProg (BitVec 64) :=
.seq crepBody30_6 crepBody30_26

def data30 : CrepProg (BitVec 64) := crepBody30_27
def output30 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 100#8, 105#8, 118#8, 109#8, 111#8, 100#8], [0, 1], crepProgToHOL data30)
end InitECandidate.Proofs.FrontendStages.Crep
