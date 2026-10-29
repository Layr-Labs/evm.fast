import InitECandidate.Proofs.FrontendStages.Crep.Translate758
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody774_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody774_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody774_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "keccak256"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]

def crepBody774_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody774_2

def crepBody774_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8])
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8]),
      Flapjack.CrepExp.var 9])

def crepBody774_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 10)

def crepBody774_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody774_7 : CrepProg (BitVec 64) :=
.seq crepBody774_5 crepBody774_6

def crepBody774_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 2#64]) crepBody774_7

def crepBody774_9 : CrepProg (BitVec 64) :=
.seq crepBody774_4 crepBody774_8

def crepBody774_10 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.const 7#64,
      Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 7#64]])) crepBody774_9

def crepBody774_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 3#64)) crepBody774_10

def crepBody774_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 2047#64, Flapjack.CrepExp.var 6]) crepBody774_11

def crepBody774_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64])],
    Flapjack.CrepExp.const 2047#64]) crepBody774_12

def crepBody774_14 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 6#64)) crepBody774_13

def crepBody774_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody774_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody774_15

def crepBody774_17 : CrepProg (BitVec 64) :=
.seq crepBody774_14 crepBody774_16

def crepBody774_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody774_19 : CrepProg (BitVec 64) :=
.seq crepBody774_17 crepBody774_18

def crepBody774_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody774_19

def crepBody774_21 : CrepProg (BitVec 64) :=
.seq crepBody774_3 crepBody774_20

def crepBody774_22 : CrepProg (BitVec 64) :=
.seq crepBody774_1 crepBody774_21

def crepBody774_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody774_22

def crepBody774_24 : CrepProg (BitVec 64) :=
.seq crepBody774_0 crepBody774_23

def crepBody774_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody774_24

def data774 : CrepProg (BitVec 64) := crepBody774_25
def output774 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 95#8, 116#8, 111#8, 95#8, 98#8, 108#8, 111#8, 111#8, 109#8], [0, 1, 2], crepProgToHOL data774)
end InitECandidate.Proofs.FrontendStages.Crep
