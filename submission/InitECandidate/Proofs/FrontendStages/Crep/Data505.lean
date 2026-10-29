import InitECandidate.Proofs.FrontendStages.Crep.Translate489
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody505_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody505_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody505_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "stack_pop" []

def crepBody505_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "sat_word"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody505_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "words_of" [Flapjack.CrepExp.var 13]

def crepBody505_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody505_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 3#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 14]],
    Flapjack.CrepExp.var 15]

def crepBody505_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "charge_gas" [Flapjack.CrepExp.var 17]

def crepBody505_8 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody505_7

def crepBody505_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody505_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "add_sat" [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 13]

def crepBody505_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 20)

def crepBody505_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody505_13 : CrepProg (BitVec 64) :=
.seq crepBody505_11 crepBody505_12

def crepBody505_14 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 9#64) crepBody505_13

def crepBody505_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody505_16 : CrepProg (BitVec 64) :=
.seq crepBody505_14 crepBody505_15

def crepBody505_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.const 152#64]))
  (Flapjack.CrepExp.var 19)) crepBody505_16 crepBody505_12

def crepBody505_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "extend_memory" [Flapjack.CrepExp.var 16]

def crepBody505_19 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody505_18

def crepBody505_20 : CrepProg (BitVec 64) :=
.seq crepBody505_17 crepBody505_19

def crepBody505_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody505_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 20],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 144#64]),
        Flapjack.CrepExp.var 18],
    Flapjack.CrepExp.var 13]

def crepBody505_23 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody505_22

def crepBody505_24 : CrepProg (BitVec 64) :=
.seq crepBody505_21 crepBody505_23

def crepBody505_25 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody505_24

def crepBody505_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody505_25 crepBody505_12

def crepBody505_27 : CrepProg (BitVec 64) :=
.seq crepBody505_20 crepBody505_26

def crepBody505_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody505_29 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody505_28

def crepBody505_30 : CrepProg (BitVec 64) :=
.seq crepBody505_27 crepBody505_29

def crepBody505_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody505_32 : CrepProg (BitVec 64) :=
.seq crepBody505_30 crepBody505_31

def crepBody505_33 : CrepProg (BitVec 64) :=
.seq crepBody505_10 crepBody505_32

def crepBody505_34 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody505_33

def crepBody505_35 : CrepProg (BitVec 64) :=
.seq crepBody505_9 crepBody505_34

def crepBody505_36 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody505_35

def crepBody505_37 : CrepProg (BitVec 64) :=
.seq crepBody505_8 crepBody505_36

def crepBody505_38 : CrepProg (BitVec 64) :=
.seq crepBody505_6 crepBody505_37

def crepBody505_39 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody505_38

def crepBody505_40 : CrepProg (BitVec 64) :=
.seq crepBody505_5 crepBody505_39

def crepBody505_41 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody505_40

def crepBody505_42 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody505_41

def crepBody505_43 : CrepProg (BitVec 64) :=
.seq crepBody505_4 crepBody505_42

def crepBody505_44 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody505_43

def crepBody505_45 : CrepProg (BitVec 64) :=
.seq crepBody505_3 crepBody505_44

def crepBody505_46 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody505_45

def crepBody505_47 : CrepProg (BitVec 64) :=
.seq crepBody505_2 crepBody505_46

def crepBody505_48 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody505_47

def crepBody505_49 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody505_48

def crepBody505_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody505_49

def crepBody505_51 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody505_50

def crepBody505_52 : CrepProg (BitVec 64) :=
.seq crepBody505_1 crepBody505_51

def crepBody505_53 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody505_52

def crepBody505_54 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody505_53

def crepBody505_55 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody505_54

def crepBody505_56 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody505_55

def crepBody505_57 : CrepProg (BitVec 64) :=
.seq crepBody505_0 crepBody505_56

def crepBody505_58 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody505_57

def crepBody505_59 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody505_58

def crepBody505_60 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody505_59

def crepBody505_61 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody505_60

def data505 : CrepProg (BitVec 64) := crepBody505_61
def output505 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 114#8, 101#8, 116#8, 117#8, 114#8, 110#8, 100#8, 97#8, 116#8, 97#8, 99#8, 111#8, 112#8, 121#8], [], crepProgToHOL data505)
end InitECandidate.Proofs.FrontendStages.Crep
