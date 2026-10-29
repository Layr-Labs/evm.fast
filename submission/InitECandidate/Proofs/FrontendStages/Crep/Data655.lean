import InitECandidate.Proofs.FrontendStages.Crep.Translate639
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody655_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "bls_fp_shr1"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody655_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody655_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody655_0 crepBody655_1

def crepBody655_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9, 10, 11, 12], none)) "bls_fp_add_raw"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 13402431016077863595#64,
    Flapjack.CrepExp.const 2210141511517208575#64, Flapjack.CrepExp.const 7435674573564081700#64,
    Flapjack.CrepExp.const 7239337960414712511#64, Flapjack.CrepExp.const 5412103778470702295#64,
    Flapjack.CrepExp.const 1873798617647539866#64]

def crepBody655_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 63#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
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

def crepBody655_5 : CrepProg (BitVec 64) :=
.seq crepBody655_3 crepBody655_4

def crepBody655_6 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody655_5

def crepBody655_7 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody655_6

def crepBody655_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody655_7

def crepBody655_9 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody655_8

def crepBody655_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody655_9

def crepBody655_11 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody655_10

def crepBody655_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody655_11

def crepBody655_13 : CrepProg (BitVec 64) :=
.seq crepBody655_2 crepBody655_12

def data655 : CrepProg (BitVec 64) := crepBody655_13
def output655 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 104#8, 97#8, 108#8, 102#8, 95#8, 99#8, 97#8, 110#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data655)
end InitECandidate.Proofs.FrontendStages.Crep
