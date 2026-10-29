import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify330
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body346_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "recipient_regular_gas" (Flapjack.Exp.const 12000#64)

def body346_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "init_code_gas"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.const 2#64,
      Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "data_n", Flapjack.Exp.const 31#64])
        (Flapjack.Exp.const 5#64)])

def body346_2 : Prog (BitVec 64) :=
.seq body346_0 body346_1

def body346_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "recipient_regular_gas" (Flapjack.Exp.const 3000#64)

def body346_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "recipient_regular_gas"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "recipient_regular_gas", Flapjack.Exp.const 6000#64])

def body346_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body346_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "value_zero") (Flapjack.Exp.const 0#64)) body346_4 body346_5

def body346_7 : Prog (BitVec 64) :=
.seq body346_3 body346_6

def body346_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "is_self_transfer")
  (Flapjack.Exp.const 0#64)) body346_7 body346_5

def body346_9 : Prog (BitVec 64) :=
.decCall ("is_self_transfer") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "to", Flapjack.Exp.var Flapjack.VarKind.local "sender",
  Flapjack.Exp.const 20#64]) body346_8

def body346_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "to") (Flapjack.Exp.const 0#64)) body346_2 body346_9

def body346_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_list_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "access_list_cost",
      Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 3000#64, Flapjack.Exp.const 100#64],
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "ns",
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 2100#64, Flapjack.Exp.const 100#64]]])

def body346_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tokens_in_access_list"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_access_list", Flapjack.Exp.const 80#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ns", Flapjack.Exp.const 128#64]])

def body346_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body346_14 : Prog (BitVec 64) :=
.seq body346_12 body346_13

def body346_15 : Prog (BitVec 64) :=
.seq body346_11 body346_14

def body346_16 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "recs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64],
      Flapjack.Exp.const 16#64])) body346_15

def body346_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body346_16

def body346_18 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_17

def body346_19 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])) body346_18

def body346_20 : Prog (BitVec 64) :=
.dec ("recs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64])) body346_19

def body346_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body346_20 body346_5

def body346_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_list_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "access_list_cost",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_access_list", Flapjack.Exp.const 16#64]])

def body346_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "auth_regular_gas"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.const 7816#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64])])

def body346_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 4#64)) body346_23 body346_5

def body346_25 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "regular", Flapjack.Exp.const 0#64,
      Flapjack.Exp.var Flapjack.VarKind.local "floor"])

def body346_26 : Prog (BitVec 64) :=
.dec ("floor") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "total_floor_tokens", Flapjack.Exp.const 16#64],
    Flapjack.Exp.var Flapjack.VarKind.local "base_regular_gas"]) body346_25

def body346_27 : Prog (BitVec 64) :=
.dec ("regular") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "base_regular_gas", Flapjack.Exp.var Flapjack.VarKind.local "init_code_gas",
    Flapjack.Exp.var Flapjack.VarKind.local "data_cost", Flapjack.Exp.var Flapjack.VarKind.local "access_list_cost",
    Flapjack.Exp.var Flapjack.VarKind.local "auth_regular_gas"]) body346_26

def body346_28 : Prog (BitVec 64) :=
.dec ("base_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.const 12000#64, Flapjack.Exp.var Flapjack.VarKind.local "recipient_regular_gas"]) body346_27

def body346_29 : Prog (BitVec 64) :=
.dec ("total_floor_tokens") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "floor_tokens_in_calldata",
    Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_access_list"]) body346_28

def body346_30 : Prog (BitVec 64) :=
.dec ("floor_tokens_in_calldata") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "data_n", Flapjack.Exp.const 4#64]) body346_29

def body346_31 : Prog (BitVec 64) :=
.seq body346_24 body346_30

def body346_32 : Prog (BitVec 64) :=
.dec ("auth_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_31

def body346_33 : Prog (BitVec 64) :=
.seq body346_22 body346_32

def body346_34 : Prog (BitVec 64) :=
.seq body346_21 body346_33

def body346_35 : Prog (BitVec 64) :=
.dec ("tokens_in_access_list") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_34

def body346_36 : Prog (BitVec 64) :=
.dec ("access_list_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_35

def body346_37 : Prog (BitVec 64) :=
.seq body346_10 body346_36

def body346_38 : Prog (BitVec 64) :=
.dec ("init_code_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_37

def body346_39 : Prog (BitVec 64) :=
.dec ("recipient_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_38

def body346_40 : Prog (BitVec 64) :=
.decCall ("value_zero") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]) body346_39

def body346_41 : Prog (BitVec 64) :=
.dec ("to") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64])) body346_40

def body346_42 : Prog (BitVec 64) :=
.dec ("data_cost") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_calldata", Flapjack.Exp.const 4#64]) body346_41

def body346_43 : Prog (BitVec 64) :=
.decCall ("tokens_in_calldata") (Flapjack.Shape.one) ("count_tokens_in_data") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "data_n"]) body346_42

def body346_44 : Prog (BitVec 64) :=
.dec ("data_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64])) body346_43

def body346_45 : Prog (BitVec 64) :=
.dec ("data") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64])) body346_44

def body346_46 : Prog (BitVec 64) :=
.seq body346_11 body346_12

def body346_47 : Prog (BitVec 64) :=
.seq body346_46 body346_13

def body346_48 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "recs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64],
      Flapjack.Exp.const 16#64])) body346_47

def body346_49 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body346_48

def body346_50 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_49

def body346_51 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])) body346_50

def body346_52 : Prog (BitVec 64) :=
.dec ("recs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64])) body346_51

def body346_53 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body346_52 body346_5

def body346_54 : Prog (BitVec 64) :=
.seq body346_53 body346_22

def body346_55 : Prog (BitVec 64) :=
.seq body346_54 body346_32

def body346_56 : Prog (BitVec 64) :=
.dec ("tokens_in_access_list") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_55

def body346_57 : Prog (BitVec 64) :=
.dec ("access_list_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_56

def body346_58 : Prog (BitVec 64) :=
.seq body346_10 body346_57

def body346_59 : Prog (BitVec 64) :=
.dec ("init_code_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_58

def body346_60 : Prog (BitVec 64) :=
.dec ("recipient_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body346_59

def body346_61 : Prog (BitVec 64) :=
.decCall ("value_zero") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]) body346_60

def body346_62 : Prog (BitVec 64) :=
.dec ("to") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64])) body346_61

def body346_63 : Prog (BitVec 64) :=
.dec ("data_cost") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_calldata", Flapjack.Exp.const 4#64]) body346_62

def body346_64 : Prog (BitVec 64) :=
.decCall ("tokens_in_calldata") (Flapjack.Shape.one) ("count_tokens_in_data") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "data_n"]) body346_63

def body346_65 : Prog (BitVec 64) :=
.dec ("data_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64])) body346_64

def body346_66 : Prog (BitVec 64) :=
.dec ("data") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64])) body346_65

def originalData346 : Decl (BitVec 64) :=
.function { name := "calculate_intrinsic_cost", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body346_45, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData346 : Decl (BitVec 64) :=
.function { name := "calculate_intrinsic_cost", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body346_66, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original346 := Pancake.PanLang.declToHOL originalData346
def simplified346 := Pancake.PanLang.declToHOL simplifiedData346
end InitECandidate.Proofs.FrontendStages.Declarations
