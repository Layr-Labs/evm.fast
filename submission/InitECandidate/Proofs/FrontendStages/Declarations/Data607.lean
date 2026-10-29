import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify591
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body607_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_cost" (Flapjack.Exp.const 3000#64)

def body607_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body607_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body607_0 body607_1

def body607_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "need"]

def body607_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "to"]

def body607_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) body607_4 body607_1

def body607_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "dl")]

def body607_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "code_address"]

def body607_8 : Prog (BitVec 64) :=
.seq body607_6 body607_7

def body607_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dl"))
  (Flapjack.Exp.const 0#64)) body607_8 body607_1

def body607_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mcg")]

def body607_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64]),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mcg")])

def body607_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def body607_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def body607_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body607_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 0#64)) body607_14 body607_1

def body607_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body607_17 : Prog (BitVec 64) :=
.seq body607_15 body607_16

def body607_18 : Prog (BitVec 64) :=
.decCall ("started") (Flapjack.Shape.one) ("generic_call") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mcg"),
  Flapjack.Exp.var Flapjack.VarKind.local "reservoir",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64],
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "to", Flapjack.Exp.var Flapjack.VarKind.local "code_address",
  Flapjack.Exp.const 1#64, Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "is",
  Flapjack.Exp.var Flapjack.VarKind.local "isz", Flapjack.Exp.var Flapjack.VarKind.local "os",
  Flapjack.Exp.var Flapjack.VarKind.local "osz", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dl"), Flapjack.Exp.const 0#64]) body607_17

def body607_19 : Prog (BitVec 64) :=
.decCall ("osz") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "out_size"]) body607_18

def body607_20 : Prog (BitVec 64) :=
.decCall ("os") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "out_start"]) body607_19

def body607_21 : Prog (BitVec 64) :=
.decCall ("isz") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "in_size"]) body607_20

def body607_22 : Prog (BitVec 64) :=
.decCall ("is") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "in_start"]) body607_21

def body607_23 : Prog (BitVec 64) :=
.seq body607_13 body607_22

def body607_24 : Prog (BitVec 64) :=
.dec ("reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])) body607_23

def body607_25 : Prog (BitVec 64) :=
.seq body607_12 body607_24

def body607_26 : Prog (BitVec 64) :=
.seq body607_11 body607_25

def body607_27 : Prog (BitVec 64) :=
.seq body607_10 body607_26

def body607_28 : Prog (BitVec 64) :=
.decCall ("mcg") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_message_call_gas") ([Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64],
  Flapjack.Exp.var Flapjack.VarKind.local "gw",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64]),
  Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body607_27

def body607_29 : Prog (BitVec 64) :=
.decCall ("gw") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "gasv"]) body607_28

def body607_30 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "code_address"]) body607_29

def body607_31 : Prog (BitVec 64) :=
.seq body607_9 body607_30

def body607_32 : Prog (BitVec 64) :=
.dec ("code_address") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "dl")) body607_31

def body607_33 : Prog (BitVec 64) :=
.decCall ("dl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_delegation_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "to"]) body607_32

def body607_34 : Prog (BitVec 64) :=
.seq body607_5 body607_33

def body607_35 : Prog (BitVec 64) :=
.seq body607_3 body607_34

def body607_36 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "access_cost",
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body607_35

def body607_37 : Prog (BitVec 64) :=
.seq body607_2 body607_36

def body607_38 : Prog (BitVec 64) :=
.dec ("access_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 100#64) body607_37

def body607_39 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "to"]) body607_38

def body607_40 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost2") ([Flapjack.Exp.var Flapjack.VarKind.local "in_start", Flapjack.Exp.var Flapjack.VarKind.local "in_size",
  Flapjack.Exp.var Flapjack.VarKind.local "out_start", Flapjack.Exp.var Flapjack.VarKind.local "out_size"]) body607_39

def body607_41 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body607_40

def body607_42 : Prog (BitVec 64) :=
.decCall ("out_size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_41

def body607_43 : Prog (BitVec 64) :=
.decCall ("out_start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_42

def body607_44 : Prog (BitVec 64) :=
.decCall ("in_size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_43

def body607_45 : Prog (BitVec 64) :=
.decCall ("in_start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_44

def body607_46 : Prog (BitVec 64) :=
.decCall ("to") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "tov"]) body607_45

def body607_47 : Prog (BitVec 64) :=
.decCall ("tov") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_46

def body607_48 : Prog (BitVec 64) :=
.decCall ("gasv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_47

def body607_49 : Prog (BitVec 64) :=
.seq body607_3 body607_5

def body607_50 : Prog (BitVec 64) :=
.seq body607_10 body607_11

def body607_51 : Prog (BitVec 64) :=
.seq body607_50 body607_12

def body607_52 : Prog (BitVec 64) :=
.seq body607_51 body607_24

def body607_53 : Prog (BitVec 64) :=
.decCall ("mcg") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_message_call_gas") ([Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64],
  Flapjack.Exp.var Flapjack.VarKind.local "gw",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64]),
  Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body607_52

def body607_54 : Prog (BitVec 64) :=
.decCall ("gw") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "gasv"]) body607_53

def body607_55 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "code_address"]) body607_54

def body607_56 : Prog (BitVec 64) :=
.seq body607_9 body607_55

def body607_57 : Prog (BitVec 64) :=
.dec ("code_address") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "dl")) body607_56

def body607_58 : Prog (BitVec 64) :=
.decCall ("dl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_delegation_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "to"]) body607_57

def body607_59 : Prog (BitVec 64) :=
.seq body607_49 body607_58

def body607_60 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "access_cost",
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body607_59

def body607_61 : Prog (BitVec 64) :=
.seq body607_2 body607_60

def body607_62 : Prog (BitVec 64) :=
.dec ("access_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 100#64) body607_61

def body607_63 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "to"]) body607_62

def body607_64 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost2") ([Flapjack.Exp.var Flapjack.VarKind.local "in_start", Flapjack.Exp.var Flapjack.VarKind.local "in_size",
  Flapjack.Exp.var Flapjack.VarKind.local "out_start", Flapjack.Exp.var Flapjack.VarKind.local "out_size"]) body607_63

def body607_65 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body607_64

def body607_66 : Prog (BitVec 64) :=
.decCall ("out_size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_65

def body607_67 : Prog (BitVec 64) :=
.decCall ("out_start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_66

def body607_68 : Prog (BitVec 64) :=
.decCall ("in_size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_67

def body607_69 : Prog (BitVec 64) :=
.decCall ("in_start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_68

def body607_70 : Prog (BitVec 64) :=
.decCall ("to") (Flapjack.Shape.one) ("to_address_masked") ([Flapjack.Exp.var Flapjack.VarKind.local "tov"]) body607_69

def body607_71 : Prog (BitVec 64) :=
.decCall ("tov") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_70

def body607_72 : Prog (BitVec 64) :=
.decCall ("gasv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body607_71

def originalData607 : Decl (BitVec 64) :=
.function { name := "op_staticcall", inline := false, exported := false, params := [], body := body607_48, returnShape := (Flapjack.Shape.one) }
def simplifiedData607 : Decl (BitVec 64) :=
.function { name := "op_staticcall", inline := false, exported := false, params := [], body := body607_72, returnShape := (Flapjack.Shape.one) }
def original607 := Pancake.PanLang.declToHOL originalData607
def simplified607 := Pancake.PanLang.declToHOL simplifiedData607
end InitECandidate.Proofs.FrontendStages.Declarations
