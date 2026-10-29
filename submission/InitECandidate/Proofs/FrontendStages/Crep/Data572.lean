import InitECandidate.Proofs.FrontendStages.Crep.Translate556
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody572_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr
        (Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 0,
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.const 8#64]]))
        (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 3#64],
            Flapjack.CrepExp.const 8#64]),
      Flapjack.CrepExp.const 255#64])

def crepBody572_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody572_2 : CrepProg (BitVec 64) :=
.seq crepBody572_0 crepBody572_1

def crepBody572_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 2#64))
  (Flapjack.CrepExp.var 1)) crepBody572_2 crepBody572_1

def crepBody572_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4])
  (Flapjack.CrepExp.var 6)

def crepBody572_5 : CrepProg (BitVec 64) :=
.seq crepBody572_3 crepBody572_4

def crepBody572_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 7)

def crepBody572_7 : CrepProg (BitVec 64) :=
.seq crepBody572_6 crepBody572_1

def crepBody572_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody572_7

def crepBody572_9 : CrepProg (BitVec 64) :=
.seq crepBody572_5 crepBody572_8

def crepBody572_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody572_9

def crepBody572_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 4]) crepBody572_10

def crepBody572_12 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 3)) crepBody572_11

def crepBody572_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody572_14 : CrepProg (BitVec 64) :=
.seq crepBody572_12 crepBody572_13

def crepBody572_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody572_14

def data572 : CrepProg (BitVec 64) := crepBody572_15
def output572 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8], [0, 1, 2, 3], crepProgToHOL data572)
end InitECandidate.Proofs.FrontendStages.Crep
