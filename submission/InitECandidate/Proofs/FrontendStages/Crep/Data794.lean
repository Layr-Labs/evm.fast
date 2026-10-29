import InitECandidate.Proofs.FrontendStages.Crep.Translate778
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody794_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "decode_transaction"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody794_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "tx_is_blob" [Flapjack.CrepExp.var 8]

def crepBody794_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody794_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody794_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody794_2 crepBody794_3

def crepBody794_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "memeq"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.const 32#64]

def crepBody794_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64)) crepBody794_2 crepBody794_3

def crepBody794_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 13)

def crepBody794_8 : CrepProg (BitVec 64) :=
.seq crepBody794_7 crepBody794_3

def crepBody794_9 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody794_8

def crepBody794_10 : CrepProg (BitVec 64) :=
.seq crepBody794_6 crepBody794_9

def crepBody794_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 13)

def crepBody794_12 : CrepProg (BitVec 64) :=
.seq crepBody794_11 crepBody794_3

def crepBody794_13 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody794_12

def crepBody794_14 : CrepProg (BitVec 64) :=
.seq crepBody794_10 crepBody794_13

def crepBody794_15 : CrepProg (BitVec 64) :=
.seq crepBody794_5 crepBody794_14

def crepBody794_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody794_15

def crepBody794_17 : CrepProg (BitVec 64) :=
.seq crepBody794_4 crepBody794_16

def crepBody794_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 10)) crepBody794_17

def crepBody794_19 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody794_18

def crepBody794_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 264#64])) crepBody794_19

def crepBody794_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody794_20 crepBody794_3

def crepBody794_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 10)

def crepBody794_23 : CrepProg (BitVec 64) :=
.seq crepBody794_22 crepBody794_3

def crepBody794_24 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody794_23

def crepBody794_25 : CrepProg (BitVec 64) :=
.seq crepBody794_21 crepBody794_24

def crepBody794_26 : CrepProg (BitVec 64) :=
.seq crepBody794_1 crepBody794_25

def crepBody794_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody794_26

def crepBody794_28 : CrepProg (BitVec 64) :=
.seq crepBody794_0 crepBody794_27

def crepBody794_29 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody794_28

def crepBody794_30 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 3)) crepBody794_29

def crepBody794_31 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody794_2 crepBody794_3

def crepBody794_32 : CrepProg (BitVec 64) :=
.seq crepBody794_30 crepBody794_31

def crepBody794_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody794_34 : CrepProg (BitVec 64) :=
.seq crepBody794_32 crepBody794_33

def crepBody794_35 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody794_34

def crepBody794_36 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody794_35

def crepBody794_37 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody794_36

def crepBody794_38 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody794_37

def crepBody794_39 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody794_38

def crepBody794_40 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody794_39

def crepBody794_41 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody794_40

def data794 : CrepProg (BitVec 64) := crepBody794_41
def output794 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [105#8, 115#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 95#8, 118#8, 101#8, 114#8, 115#8, 105#8, 111#8, 110#8, 101#8,
    100#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8, 115#8], [0], crepProgToHOL data794)
end InitECandidate.Proofs.FrontendStages.Crep
