import InitECandidate.Proofs.FrontendStages.Crep.Translate73
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody89_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "sha256_state_init"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 48#64])]

def crepBody89_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody89_0

def crepBody89_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "sha256_block"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]]

def crepBody89_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody89_2

def crepBody89_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody89_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody89_6 : CrepProg (BitVec 64) :=
.seq crepBody89_4 crepBody89_5

def crepBody89_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody89_6

def crepBody89_8 : CrepProg (BitVec 64) :=
.seq crepBody89_3 crepBody89_7

def crepBody89_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64])) crepBody89_8

def crepBody89_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memzero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.const 128#64]

def crepBody89_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody89_10

def crepBody89_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4]

def crepBody89_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody89_12

def crepBody89_14 : CrepProg (BitVec 64) :=
.seq crepBody89_11 crepBody89_13

def crepBody89_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64]),
      Flapjack.CrepExp.var 4])
  (Flapjack.CrepExp.const 128#64)

def crepBody89_16 : CrepProg (BitVec 64) :=
.seq crepBody89_14 crepBody89_15

def crepBody89_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 128#64)

def crepBody89_18 : CrepProg (BitVec 64) :=
.seq crepBody89_17 crepBody89_5

def crepBody89_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 56#64)) crepBody89_18 crepBody89_5

def crepBody89_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "st_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64]),
            Flapjack.CrepExp.var 5],
        Flapjack.CrepExp.const 8#64],
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 3#64)]

def crepBody89_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody89_20

def crepBody89_22 : CrepProg (BitVec 64) :=
.seq crepBody89_19 crepBody89_21

def crepBody89_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sha256_block"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64])]

def crepBody89_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody89_23

def crepBody89_25 : CrepProg (BitVec 64) :=
.seq crepBody89_22 crepBody89_24

def crepBody89_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sha256_block"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64]),
        Flapjack.CrepExp.const 64#64]]

def crepBody89_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody89_26

def crepBody89_28 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 128#64)) crepBody89_27 crepBody89_5

def crepBody89_29 : CrepProg (BitVec 64) :=
.seq crepBody89_25 crepBody89_28

def crepBody89_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sha256_finish"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 2]

def crepBody89_31 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody89_30

def crepBody89_32 : CrepProg (BitVec 64) :=
.seq crepBody89_29 crepBody89_31

def crepBody89_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody89_34 : CrepProg (BitVec 64) :=
.seq crepBody89_32 crepBody89_33

def crepBody89_35 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 64#64) crepBody89_34

def crepBody89_36 : CrepProg (BitVec 64) :=
.seq crepBody89_16 crepBody89_35

def crepBody89_37 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]) crepBody89_36

def crepBody89_38 : CrepProg (BitVec 64) :=
.seq crepBody89_9 crepBody89_37

def crepBody89_39 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody89_38

def crepBody89_40 : CrepProg (BitVec 64) :=
.seq crepBody89_1 crepBody89_39

def data89 : CrepProg (BitVec 64) := crepBody89_40
def output89 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 104#8, 97#8, 50#8, 53#8, 54#8], [0, 1, 2], crepProgToHOL data89)
end InitECandidate.Proofs.FrontendStages.Crep
