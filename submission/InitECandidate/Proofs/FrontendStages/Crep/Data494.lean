import InitECandidate.Proofs.FrontendStages.Crep.Translate478
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody494_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody494_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody494_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody494_1

def crepBody494_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody494_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody494_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody494_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "buffer_read"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 8]

def crepBody494_7 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody494_6

def crepBody494_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_from_be"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64]

def crepBody494_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody494_10 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody494_9

def crepBody494_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "stack_push"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody494_12 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody494_11

def crepBody494_13 : CrepProg (BitVec 64) :=
.seq crepBody494_10 crepBody494_12

def crepBody494_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody494_15 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody494_14

def crepBody494_16 : CrepProg (BitVec 64) :=
.seq crepBody494_13 crepBody494_15

def crepBody494_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody494_18 : CrepProg (BitVec 64) :=
.seq crepBody494_16 crepBody494_17

def crepBody494_19 : CrepProg (BitVec 64) :=
.seq crepBody494_8 crepBody494_18

def crepBody494_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody494_19

def crepBody494_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody494_20

def crepBody494_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody494_21

def crepBody494_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody494_22

def crepBody494_24 : CrepProg (BitVec 64) :=
.seq crepBody494_7 crepBody494_23

def crepBody494_25 : CrepProg (BitVec 64) :=
.seq crepBody494_5 crepBody494_24

def crepBody494_26 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody494_25

def crepBody494_27 : CrepProg (BitVec 64) :=
.seq crepBody494_4 crepBody494_26

def crepBody494_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody494_27

def crepBody494_29 : CrepProg (BitVec 64) :=
.seq crepBody494_3 crepBody494_28

def crepBody494_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody494_29

def crepBody494_31 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody494_30

def crepBody494_32 : CrepProg (BitVec 64) :=
.seq crepBody494_2 crepBody494_31

def crepBody494_33 : CrepProg (BitVec 64) :=
.seq crepBody494_0 crepBody494_32

def crepBody494_34 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody494_33

def crepBody494_35 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody494_34

def crepBody494_36 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody494_35

def crepBody494_37 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody494_36

def data494 : CrepProg (BitVec 64) := crepBody494_37
def output494 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 100#8, 97#8, 116#8, 97#8, 108#8, 111#8, 97#8, 100#8], [], crepProgToHOL data494)
end InitECandidate.Proofs.FrontendStages.Crep
