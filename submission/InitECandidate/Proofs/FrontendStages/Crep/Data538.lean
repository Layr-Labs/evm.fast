import InitECandidate.Proofs.FrontendStages.Crep.Translate522
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody538_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.const 1#64)

def crepBody538_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody538_2 : CrepProg (BitVec 64) :=
.seq crepBody538_0 crepBody538_1

def crepBody538_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody538_4 : CrepProg (BitVec 64) :=
.seq crepBody538_3 crepBody538_1

def crepBody538_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "frame_exception" [Flapjack.CrepExp.var 4]

def crepBody538_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody538_5

def crepBody538_7 : CrepProg (BitVec 64) :=
.seq crepBody538_4 crepBody538_6

def crepBody538_8 : CrepProg (BitVec 64) :=
.call (some (([5]), some ((8#64), crepBody538_7))) ("op_dispatch") ([Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 48#64]),
        Flapjack.CrepExp.var 3])])

def crepBody538_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody538_8

def crepBody538_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody538_9

def crepBody538_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 3)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 56#64]))) crepBody538_2 crepBody538_10

def crepBody538_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 0#64])) crepBody538_11

def crepBody538_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 104#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody538_2 crepBody538_12

def crepBody538_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
        Flapjack.CrepExp.const 32#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody538_2 crepBody538_13

def crepBody538_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "frame_epilogue" []

def crepBody538_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody538_15

def crepBody538_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody538_18 : CrepProg (BitVec 64) :=
.seq crepBody538_17 crepBody538_1

def crepBody538_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
      Flapjack.CrepExp.const 0#64])) crepBody538_18

def crepBody538_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]) crepBody538_19

def crepBody538_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
      Flapjack.CrepExp.const 8#64])) crepBody538_18

def crepBody538_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]) crepBody538_21

def crepBody538_23 : CrepProg (BitVec 64) :=
.seq crepBody538_20 crepBody538_22

def crepBody538_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.const 0#64)

def crepBody538_25 : CrepProg (BitVec 64) :=
.seq crepBody538_24 crepBody538_1

def crepBody538_26 : CrepProg (BitVec 64) :=
.seq crepBody538_23 crepBody538_25

def crepBody538_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody538_28 : CrepProg (BitVec 64) :=
.seq crepBody538_27 crepBody538_1

def crepBody538_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "frame_exception" [Flapjack.CrepExp.var 3]

def crepBody538_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody538_29

def crepBody538_31 : CrepProg (BitVec 64) :=
.seq crepBody538_28 crepBody538_30

def crepBody538_32 : CrepProg (BitVec 64) :=
.call (some (([4]), some ((8#64), crepBody538_31))) ("finish_child") ([])

def crepBody538_33 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody538_32

def crepBody538_34 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody538_33

def crepBody538_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
        Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody538_26 crepBody538_34

def crepBody538_36 : CrepProg (BitVec 64) :=
.seq crepBody538_16 crepBody538_35

def crepBody538_37 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody538_36 crepBody538_1

def crepBody538_38 : CrepProg (BitVec 64) :=
.seq crepBody538_14 crepBody538_37

def crepBody538_39 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody538_38

def crepBody538_40 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody538_39

def crepBody538_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody538_42 : CrepProg (BitVec 64) :=
.seq crepBody538_40 crepBody538_41

def crepBody538_43 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 1#64) crepBody538_42

def data538 : CrepProg (BitVec 64) := crepBody538_43
def output538 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 117#8, 110#8, 95#8, 102#8, 114#8, 97#8, 109#8, 101#8, 115#8], [], crepProgToHOL data538)
end InitECandidate.Proofs.FrontendStages.Crep
