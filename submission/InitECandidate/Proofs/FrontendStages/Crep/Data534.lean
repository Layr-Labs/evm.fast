import InitECandidate.Proofs.FrontendStages.Crep.Translate518
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody534_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody534_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "move_ether"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody534_2 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody534_1

def crepBody534_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody534_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "emit_transfer_log"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody534_5 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody534_4

def crepBody534_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody534_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody534_5 crepBody534_6

def crepBody534_8 : CrepProg (BitVec 64) :=
.seq crepBody534_3 crepBody534_7

def crepBody534_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody534_8

def crepBody534_10 : CrepProg (BitVec 64) :=
.seq crepBody534_2 crepBody534_9

def crepBody534_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody534_10 crepBody534_6

def crepBody534_12 : CrepProg (BitVec 64) :=
.seq crepBody534_0 crepBody534_11

def crepBody534_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody534_12

def crepBody534_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64],
      Flapjack.CrepExp.const 24#64])) crepBody534_13

def crepBody534_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64],
      Flapjack.CrepExp.const 16#64])) crepBody534_14

def crepBody534_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64],
      Flapjack.CrepExp.const 8#64])) crepBody534_15

def crepBody534_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64])) crepBody534_16

def crepBody534_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 136#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody534_17 crepBody534_6

def crepBody534_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "precompile_index" [Flapjack.CrepExp.var 2]

def crepBody534_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "run_precompile" [Flapjack.CrepExp.var 3]

def crepBody534_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody534_20

def crepBody534_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 168#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody534_21 crepBody534_6

def crepBody534_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody534_24 : CrepProg (BitVec 64) :=
.seq crepBody534_22 crepBody534_23

def crepBody534_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody534_24 crepBody534_6

def crepBody534_26 : CrepProg (BitVec 64) :=
.seq crepBody534_19 crepBody534_25

def crepBody534_27 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody534_26

def crepBody534_28 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody534_27 crepBody534_6

def crepBody534_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody534_30 : CrepProg (BitVec 64) :=
.seq crepBody534_28 crepBody534_29

def crepBody534_31 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 104#64])) crepBody534_30

def crepBody534_32 : CrepProg (BitVec 64) :=
.seq crepBody534_18 crepBody534_31

def crepBody534_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody534_32

def data534 : CrepProg (BitVec 64) := crepBody534_33
def output534 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 112#8, 114#8, 111#8, 108#8, 111#8, 103#8, 117#8, 101#8], [], crepProgToHOL data534)
end InitECandidate.Proofs.FrontendStages.Crep
