import InitECandidate.Proofs.FrontendStages.Crep.Translate443
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody459_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody459_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody459_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody459_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "words_of" [Flapjack.CrepExp.var 9]

def crepBody459_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody459_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 30#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 6#64, Flapjack.CrepExp.var 10]],
    Flapjack.CrepExp.var 11]

def crepBody459_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "charge_gas" [Flapjack.CrepExp.var 13]

def crepBody459_7 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody459_6

def crepBody459_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "extend_memory" [Flapjack.CrepExp.var 12]

def crepBody459_9 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody459_8

def crepBody459_10 : CrepProg (BitVec 64) :=
.seq crepBody459_7 crepBody459_9

def crepBody459_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "heap_mark" []

def crepBody459_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody459_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "sat_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody459_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "keccak256"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 16],
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 15]

def crepBody459_15 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody459_14

def crepBody459_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "u256_from_be"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 32#64]

def crepBody459_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "heap_release" [Flapjack.CrepExp.var 14]

def crepBody459_18 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody459_17

def crepBody459_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "stack_push"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody459_20 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody459_19

def crepBody459_21 : CrepProg (BitVec 64) :=
.seq crepBody459_18 crepBody459_20

def crepBody459_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody459_23 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody459_22

def crepBody459_24 : CrepProg (BitVec 64) :=
.seq crepBody459_21 crepBody459_23

def crepBody459_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody459_26 : CrepProg (BitVec 64) :=
.seq crepBody459_24 crepBody459_25

def crepBody459_27 : CrepProg (BitVec 64) :=
.seq crepBody459_16 crepBody459_26

def crepBody459_28 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody459_27

def crepBody459_29 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody459_28

def crepBody459_30 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody459_29

def crepBody459_31 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody459_30

def crepBody459_32 : CrepProg (BitVec 64) :=
.seq crepBody459_15 crepBody459_31

def crepBody459_33 : CrepProg (BitVec 64) :=
.seq crepBody459_13 crepBody459_32

def crepBody459_34 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody459_33

def crepBody459_35 : CrepProg (BitVec 64) :=
.seq crepBody459_12 crepBody459_34

def crepBody459_36 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody459_35

def crepBody459_37 : CrepProg (BitVec 64) :=
.seq crepBody459_11 crepBody459_36

def crepBody459_38 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody459_37

def crepBody459_39 : CrepProg (BitVec 64) :=
.seq crepBody459_10 crepBody459_38

def crepBody459_40 : CrepProg (BitVec 64) :=
.seq crepBody459_5 crepBody459_39

def crepBody459_41 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody459_40

def crepBody459_42 : CrepProg (BitVec 64) :=
.seq crepBody459_4 crepBody459_41

def crepBody459_43 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody459_42

def crepBody459_44 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody459_43

def crepBody459_45 : CrepProg (BitVec 64) :=
.seq crepBody459_3 crepBody459_44

def crepBody459_46 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody459_45

def crepBody459_47 : CrepProg (BitVec 64) :=
.seq crepBody459_2 crepBody459_46

def crepBody459_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody459_47

def crepBody459_49 : CrepProg (BitVec 64) :=
.seq crepBody459_1 crepBody459_48

def crepBody459_50 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody459_49

def crepBody459_51 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody459_50

def crepBody459_52 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody459_51

def crepBody459_53 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody459_52

def crepBody459_54 : CrepProg (BitVec 64) :=
.seq crepBody459_0 crepBody459_53

def crepBody459_55 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody459_54

def crepBody459_56 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody459_55

def crepBody459_57 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody459_56

def crepBody459_58 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody459_57

def data459 : CrepProg (BitVec 64) := crepBody459_58
def output459 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 107#8, 101#8, 99#8, 99#8, 97#8, 107#8], [], crepProgToHOL data459)
end InitECandidate.Proofs.FrontendStages.Crep
