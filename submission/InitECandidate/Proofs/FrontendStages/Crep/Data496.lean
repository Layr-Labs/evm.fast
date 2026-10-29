import InitECandidate.Proofs.FrontendStages.Crep.Translate480
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody496_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "stack_pop" []

def crepBody496_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9, 10], none)) "stack_pop" []

def crepBody496_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "stack_pop" []

def crepBody496_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "sat_word"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody496_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "words_of" [Flapjack.CrepExp.var 15]

def crepBody496_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody496_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 16]],
    Flapjack.CrepExp.var 17]

def crepBody496_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "charge_gas" [Flapjack.CrepExp.var 19]

def crepBody496_8 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody496_7

def crepBody496_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "extend_memory" [Flapjack.CrepExp.var 18]

def crepBody496_10 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody496_9

def crepBody496_11 : CrepProg (BitVec 64) :=
.seq crepBody496_8 crepBody496_10

def crepBody496_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "sat_word"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody496_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "sat_word"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody496_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "buffer_read"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 20]]

def crepBody496_15 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody496_14

def crepBody496_16 : CrepProg (BitVec 64) :=
.seq crepBody496_13 crepBody496_15

def crepBody496_17 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody496_16

def crepBody496_18 : CrepProg (BitVec 64) :=
.seq crepBody496_12 crepBody496_17

def crepBody496_19 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody496_18

def crepBody496_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody496_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 0#64)) crepBody496_19 crepBody496_20

def crepBody496_22 : CrepProg (BitVec 64) :=
.seq crepBody496_11 crepBody496_21

def crepBody496_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody496_24 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody496_23

def crepBody496_25 : CrepProg (BitVec 64) :=
.seq crepBody496_22 crepBody496_24

def crepBody496_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody496_27 : CrepProg (BitVec 64) :=
.seq crepBody496_25 crepBody496_26

def crepBody496_28 : CrepProg (BitVec 64) :=
.seq crepBody496_6 crepBody496_27

def crepBody496_29 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody496_28

def crepBody496_30 : CrepProg (BitVec 64) :=
.seq crepBody496_5 crepBody496_29

def crepBody496_31 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody496_30

def crepBody496_32 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody496_31

def crepBody496_33 : CrepProg (BitVec 64) :=
.seq crepBody496_4 crepBody496_32

def crepBody496_34 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody496_33

def crepBody496_35 : CrepProg (BitVec 64) :=
.seq crepBody496_3 crepBody496_34

def crepBody496_36 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody496_35

def crepBody496_37 : CrepProg (BitVec 64) :=
.seq crepBody496_2 crepBody496_36

def crepBody496_38 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody496_37

def crepBody496_39 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody496_38

def crepBody496_40 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody496_39

def crepBody496_41 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody496_40

def crepBody496_42 : CrepProg (BitVec 64) :=
.seq crepBody496_1 crepBody496_41

def crepBody496_43 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody496_42

def crepBody496_44 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody496_43

def crepBody496_45 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody496_44

def crepBody496_46 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody496_45

def crepBody496_47 : CrepProg (BitVec 64) :=
.seq crepBody496_0 crepBody496_46

def crepBody496_48 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody496_47

def crepBody496_49 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody496_48

def crepBody496_50 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody496_49

def crepBody496_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody496_50

def data496 : CrepProg (BitVec 64) := crepBody496_51
def output496 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 112#8, 121#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 117#8, 102#8, 102#8, 101#8, 114#8], [0, 1, 2], crepProgToHOL data496)
end InitECandidate.Proofs.FrontendStages.Crep
