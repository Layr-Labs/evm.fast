import InitECandidate.Proofs.FrontendStages.Crep.Translate555
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody571_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody571_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody571_2 : CrepProg (BitVec 64) :=
.seq crepBody571_0 crepBody571_1

def crepBody571_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody571_2

def crepBody571_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]]) crepBody571_3

def crepBody571_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 5)

def crepBody571_6 : CrepProg (BitVec 64) :=
.seq crepBody571_5 crepBody571_1

def crepBody571_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody571_6

def crepBody571_8 : CrepProg (BitVec 64) :=
.seq crepBody571_4 crepBody571_7

def crepBody571_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 3)) crepBody571_8

def crepBody571_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 0#64)

def crepBody571_11 : CrepProg (BitVec 64) :=
.seq crepBody571_10 crepBody571_1

def crepBody571_12 : CrepProg (BitVec 64) :=
.seq crepBody571_9 crepBody571_11

def crepBody571_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody571_14 : CrepProg (BitVec 64) :=
.seq crepBody571_13 crepBody571_1

def crepBody571_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]))
      (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 3#64],
          Flapjack.CrepExp.const 8#64])]) crepBody571_14

def crepBody571_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 6) crepBody571_15

def crepBody571_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 7)

def crepBody571_18 : CrepProg (BitVec 64) :=
.seq crepBody571_17 crepBody571_1

def crepBody571_19 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody571_18

def crepBody571_20 : CrepProg (BitVec 64) :=
.seq crepBody571_16 crepBody571_19

def crepBody571_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 2#64),
        Flapjack.CrepExp.const 8#64]]) crepBody571_20

def crepBody571_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 4]) crepBody571_21

def crepBody571_23 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 1)) crepBody571_22

def crepBody571_24 : CrepProg (BitVec 64) :=
.seq crepBody571_12 crepBody571_23

def crepBody571_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody571_26 : CrepProg (BitVec 64) :=
.seq crepBody571_24 crepBody571_25

def crepBody571_27 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody571_26

def crepBody571_28 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.const 2#64)) crepBody571_27

def data571 : CrepProg (BitVec 64) := crepBody571_28
def output571 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 101#8], [0, 1, 2], crepProgToHOL data571)
end InitECandidate.Proofs.FrontendStages.Crep
