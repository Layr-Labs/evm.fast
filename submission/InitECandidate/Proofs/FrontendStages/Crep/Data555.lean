import InitECandidate.Proofs.FrontendStages.Crep.Translate539
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody555_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "set_retdata" [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 0#64]

def crepBody555_1 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody555_0

def crepBody555_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody555_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody555_4 : CrepProg (BitVec 64) :=
.seq crepBody555_2 crepBody555_3

def crepBody555_5 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.var 0]) crepBody555_4

def crepBody555_6 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody555_5

def crepBody555_7 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.var 1]) crepBody555_4

def crepBody555_8 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody555_7

def crepBody555_9 : CrepProg (BitVec 64) :=
.seq crepBody555_6 crepBody555_8

def crepBody555_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "credit_state_gas_refund" [Flapjack.CrepExp.const 183600#64]

def crepBody555_11 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody555_10

def crepBody555_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody555_11 crepBody555_3

def crepBody555_13 : CrepProg (BitVec 64) :=
.seq crepBody555_9 crepBody555_12

def crepBody555_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "stack_push"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody555_15 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody555_14

def crepBody555_16 : CrepProg (BitVec 64) :=
.seq crepBody555_13 crepBody555_15

def crepBody555_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody555_18 : CrepProg (BitVec 64) :=
.seq crepBody555_16 crepBody555_17

def crepBody555_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 128#64]),
      Flapjack.CrepExp.const 1#64])) crepBody555_18 crepBody555_3

def crepBody555_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "scratch_mark" []

def crepBody555_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "frame_mem_mark" []

def crepBody555_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "child_message"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 17]

def crepBody555_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "start_child"
  [Flapjack.CrepExp.var 24, Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 0#64]

def crepBody555_24 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody555_23

def crepBody555_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody555_26 : CrepProg (BitVec 64) :=
.seq crepBody555_24 crepBody555_25

def crepBody555_27 : CrepProg (BitVec 64) :=
.seq crepBody555_22 crepBody555_26

def crepBody555_28 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody555_27

def crepBody555_29 : CrepProg (BitVec 64) :=
.seq crepBody555_21 crepBody555_28

def crepBody555_30 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody555_29

def crepBody555_31 : CrepProg (BitVec 64) :=
.seq crepBody555_20 crepBody555_30

def crepBody555_32 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody555_31

def crepBody555_33 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 11]) crepBody555_32

def crepBody555_34 : CrepProg (BitVec 64) :=
.seq crepBody555_19 crepBody555_33

def crepBody555_35 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody555_34

def crepBody555_36 : CrepProg (BitVec 64) :=
.seq crepBody555_1 crepBody555_35

def crepBody555_37 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody555_36

def data555 : CrepProg (BitVec 64) := crepBody555_37
def output555 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 110#8, 101#8, 114#8, 105#8, 99#8, 95#8, 99#8, 97#8, 108#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], crepProgToHOL data555)
end InitECandidate.Proofs.FrontendStages.Crep
