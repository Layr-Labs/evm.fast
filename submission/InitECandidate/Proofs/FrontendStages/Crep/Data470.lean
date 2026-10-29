import InitECandidate.Proofs.FrontendStages.Crep.Translate454
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody470_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody470_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody470_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "stack_pop" []

def crepBody470_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "sat_word"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody470_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "words_of" [Flapjack.CrepExp.var 13]

def crepBody470_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16], none)) "extend_memory_cost2"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody470_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 3#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 14]],
    Flapjack.CrepExp.var 15]

def crepBody470_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "charge_gas" [Flapjack.CrepExp.var 17]

def crepBody470_8 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody470_7

def crepBody470_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "extend_memory" [Flapjack.CrepExp.var 16]

def crepBody470_10 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody470_9

def crepBody470_11 : CrepProg (BitVec 64) :=
.seq crepBody470_8 crepBody470_10

def crepBody470_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody470_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody470_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "heap_mark" []

def crepBody470_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "alloc" [Flapjack.CrepExp.var 13]

def crepBody470_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memcpy"
  [Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 19],
    Flapjack.CrepExp.var 13]

def crepBody470_17 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody470_16

def crepBody470_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 18],
    Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 13]

def crepBody470_19 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody470_18

def crepBody470_20 : CrepProg (BitVec 64) :=
.seq crepBody470_17 crepBody470_19

def crepBody470_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "heap_release" [Flapjack.CrepExp.var 20]

def crepBody470_22 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody470_21

def crepBody470_23 : CrepProg (BitVec 64) :=
.seq crepBody470_20 crepBody470_22

def crepBody470_24 : CrepProg (BitVec 64) :=
.seq crepBody470_15 crepBody470_23

def crepBody470_25 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody470_24

def crepBody470_26 : CrepProg (BitVec 64) :=
.seq crepBody470_14 crepBody470_25

def crepBody470_27 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody470_26

def crepBody470_28 : CrepProg (BitVec 64) :=
.seq crepBody470_13 crepBody470_27

def crepBody470_29 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody470_28

def crepBody470_30 : CrepProg (BitVec 64) :=
.seq crepBody470_12 crepBody470_29

def crepBody470_31 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody470_30

def crepBody470_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody470_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody470_31 crepBody470_32

def crepBody470_34 : CrepProg (BitVec 64) :=
.seq crepBody470_11 crepBody470_33

def crepBody470_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody470_36 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody470_35

def crepBody470_37 : CrepProg (BitVec 64) :=
.seq crepBody470_34 crepBody470_36

def crepBody470_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody470_39 : CrepProg (BitVec 64) :=
.seq crepBody470_37 crepBody470_38

def crepBody470_40 : CrepProg (BitVec 64) :=
.seq crepBody470_6 crepBody470_39

def crepBody470_41 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody470_40

def crepBody470_42 : CrepProg (BitVec 64) :=
.seq crepBody470_5 crepBody470_41

def crepBody470_43 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody470_42

def crepBody470_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody470_43

def crepBody470_45 : CrepProg (BitVec 64) :=
.seq crepBody470_4 crepBody470_44

def crepBody470_46 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody470_45

def crepBody470_47 : CrepProg (BitVec 64) :=
.seq crepBody470_3 crepBody470_46

def crepBody470_48 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody470_47

def crepBody470_49 : CrepProg (BitVec 64) :=
.seq crepBody470_2 crepBody470_48

def crepBody470_50 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody470_49

def crepBody470_51 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody470_50

def crepBody470_52 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody470_51

def crepBody470_53 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody470_52

def crepBody470_54 : CrepProg (BitVec 64) :=
.seq crepBody470_1 crepBody470_53

def crepBody470_55 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody470_54

def crepBody470_56 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody470_55

def crepBody470_57 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody470_56

def crepBody470_58 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody470_57

def crepBody470_59 : CrepProg (BitVec 64) :=
.seq crepBody470_0 crepBody470_58

def crepBody470_60 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody470_59

def crepBody470_61 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody470_60

def crepBody470_62 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody470_61

def crepBody470_63 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody470_62

def data470 : CrepProg (BitVec 64) := crepBody470_63
def output470 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 99#8, 111#8, 112#8, 121#8], [], crepProgToHOL data470)
end InitECandidate.Proofs.FrontendStages.Crep
