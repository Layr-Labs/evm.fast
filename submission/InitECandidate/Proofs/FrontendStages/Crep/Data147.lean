import InitECandidate.Proofs.FrontendStages.Crep.Translate131
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody147_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)]

def crepBody147_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody147_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody147_0 crepBody147_1

def crepBody147_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11, 12], none)) "u256_add_carry"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody147_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 63#64)]]

def crepBody147_5 : CrepProg (BitVec 64) :=
.seq crepBody147_3 crepBody147_4

def crepBody147_6 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody147_5

def crepBody147_7 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody147_6

def crepBody147_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody147_7

def crepBody147_9 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody147_8

def crepBody147_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody147_9

def crepBody147_11 : CrepProg (BitVec 64) :=
.seq crepBody147_2 crepBody147_10

def data147 : CrepProg (BitVec 64) := crepBody147_11
def output147 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 95#8, 104#8, 97#8, 108#8, 102#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data147)
end InitECandidate.Proofs.FrontendStages.Crep
