import InitECandidate.Proofs.FrontendStages.Crep.Translate538
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody554_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "require_not_static" []

def crepBody554_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody554_0

def crepBody554_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody554_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "stack_pop" []

def crepBody554_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "stack_pop" []

def crepBody554_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "stack_pop" []

def crepBody554_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "sat_word"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody554_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody554_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "words_of" [Flapjack.CrepExp.var 17]

def crepBody554_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "add_sat"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.const 12000#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 6#64, Flapjack.CrepExp.var 20],
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 20]],
    Flapjack.CrepExp.var 18]

def crepBody554_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "charge_gas" [Flapjack.CrepExp.var 21]

def crepBody554_11 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody554_10

def crepBody554_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody554_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 22]

def crepBody554_14 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody554_13

def crepBody554_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "extend_memory" [Flapjack.CrepExp.var 19]

def crepBody554_16 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody554_15

def crepBody554_17 : CrepProg (BitVec 64) :=
.seq crepBody554_14 crepBody554_16

def crepBody554_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody554_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody554_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "compute_create2_contract_address"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 24],
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 25]

def crepBody554_21 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody554_20

def crepBody554_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "generic_create"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 17]

def crepBody554_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody554_24 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody554_23

def crepBody554_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody554_26 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 0#64)) crepBody554_24 crepBody554_25

def crepBody554_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody554_28 : CrepProg (BitVec 64) :=
.seq crepBody554_26 crepBody554_27

def crepBody554_29 : CrepProg (BitVec 64) :=
.seq crepBody554_22 crepBody554_28

def crepBody554_30 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody554_29

def crepBody554_31 : CrepProg (BitVec 64) :=
.seq crepBody554_21 crepBody554_30

def crepBody554_32 : CrepProg (BitVec 64) :=
.seq crepBody554_19 crepBody554_31

def crepBody554_33 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody554_32

def crepBody554_34 : CrepProg (BitVec 64) :=
.seq crepBody554_18 crepBody554_33

def crepBody554_35 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody554_34

def crepBody554_36 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody554_35

def crepBody554_37 : CrepProg (BitVec 64) :=
.seq crepBody554_17 crepBody554_36

def crepBody554_38 : CrepProg (BitVec 64) :=
.seq crepBody554_12 crepBody554_37

def crepBody554_39 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody554_38

def crepBody554_40 : CrepProg (BitVec 64) :=
.seq crepBody554_11 crepBody554_39

def crepBody554_41 : CrepProg (BitVec 64) :=
.seq crepBody554_9 crepBody554_40

def crepBody554_42 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody554_41

def crepBody554_43 : CrepProg (BitVec 64) :=
.seq crepBody554_8 crepBody554_42

def crepBody554_44 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody554_43

def crepBody554_45 : CrepProg (BitVec 64) :=
.seq crepBody554_7 crepBody554_44

def crepBody554_46 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody554_45

def crepBody554_47 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody554_46

def crepBody554_48 : CrepProg (BitVec 64) :=
.seq crepBody554_6 crepBody554_47

def crepBody554_49 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody554_48

def crepBody554_50 : CrepProg (BitVec 64) :=
.seq crepBody554_5 crepBody554_49

def crepBody554_51 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody554_50

def crepBody554_52 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody554_51

def crepBody554_53 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody554_52

def crepBody554_54 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody554_53

def crepBody554_55 : CrepProg (BitVec 64) :=
.seq crepBody554_4 crepBody554_54

def crepBody554_56 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody554_55

def crepBody554_57 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody554_56

def crepBody554_58 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody554_57

def crepBody554_59 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody554_58

def crepBody554_60 : CrepProg (BitVec 64) :=
.seq crepBody554_3 crepBody554_59

def crepBody554_61 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody554_60

def crepBody554_62 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody554_61

def crepBody554_63 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody554_62

def crepBody554_64 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody554_63

def crepBody554_65 : CrepProg (BitVec 64) :=
.seq crepBody554_2 crepBody554_64

def crepBody554_66 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody554_65

def crepBody554_67 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody554_66

def crepBody554_68 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody554_67

def crepBody554_69 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody554_68

def crepBody554_70 : CrepProg (BitVec 64) :=
.seq crepBody554_1 crepBody554_69

def data554 : CrepProg (BitVec 64) := crepBody554_70
def output554 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 50#8], [], crepProgToHOL data554)
end InitECandidate.Proofs.FrontendStages.Crep
