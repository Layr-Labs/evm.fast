import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data346
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate330
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody346_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "recipient_regular_gas" (Flapjack.Exp.const 12000#64)

def globalBody346_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "init_code_gas"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.const 2#64,
      Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "data_n", Flapjack.Exp.const 31#64])
        (Flapjack.Exp.const 5#64)])

def globalBody346_2 : Prog (BitVec 64) :=
.seq globalBody346_0 globalBody346_1

def globalBody346_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "recipient_regular_gas" (Flapjack.Exp.const 3000#64)

def globalBody346_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "recipient_regular_gas"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "recipient_regular_gas", Flapjack.Exp.const 6000#64])

def globalBody346_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody346_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "value_zero") (Flapjack.Exp.const 0#64)) globalBody346_4 globalBody346_5

def globalBody346_7 : Prog (BitVec 64) :=
.seq globalBody346_3 globalBody346_6

def globalBody346_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "is_self_transfer")
  (Flapjack.Exp.const 0#64)) globalBody346_7 globalBody346_5

def globalBody346_9 : Prog (BitVec 64) :=
.decCall ("is_self_transfer") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "to", Flapjack.Exp.var Flapjack.VarKind.local "sender",
  Flapjack.Exp.const 20#64]) globalBody346_8

def globalBody346_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "to") (Flapjack.Exp.const 0#64)) globalBody346_2 globalBody346_9

def globalBody346_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_list_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "access_list_cost",
      Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 3000#64, Flapjack.Exp.const 100#64],
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "ns",
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 2100#64, Flapjack.Exp.const 100#64]]])

def globalBody346_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tokens_in_access_list"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_access_list", Flapjack.Exp.const 80#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ns", Flapjack.Exp.const 128#64]])

def globalBody346_13 : Prog (BitVec 64) :=
.seq globalBody346_11 globalBody346_12

def globalBody346_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody346_15 : Prog (BitVec 64) :=
.seq globalBody346_13 globalBody346_14

def globalBody346_16 : Prog (BitVec 64) :=
.dec ("ns") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "recs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 24#64],
      Flapjack.Exp.const 16#64])) globalBody346_15

def globalBody346_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody346_16

def globalBody346_18 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody346_17

def globalBody346_19 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])) globalBody346_18

def globalBody346_20 : Prog (BitVec 64) :=
.dec ("recs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64])) globalBody346_19

def globalBody346_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) globalBody346_20 globalBody346_5

def globalBody346_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "access_list_cost"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "access_list_cost",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_access_list", Flapjack.Exp.const 16#64]])

def globalBody346_23 : Prog (BitVec 64) :=
.seq globalBody346_21 globalBody346_22

def globalBody346_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "auth_regular_gas"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.const 7816#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64])])

def globalBody346_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 4#64)) globalBody346_24 globalBody346_5

def globalBody346_26 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "regular", Flapjack.Exp.const 0#64,
      Flapjack.Exp.var Flapjack.VarKind.local "floor"])

def globalBody346_27 : Prog (BitVec 64) :=
.dec ("floor") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "total_floor_tokens", Flapjack.Exp.const 16#64],
    Flapjack.Exp.var Flapjack.VarKind.local "base_regular_gas"]) globalBody346_26

def globalBody346_28 : Prog (BitVec 64) :=
.dec ("regular") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "base_regular_gas", Flapjack.Exp.var Flapjack.VarKind.local "init_code_gas",
    Flapjack.Exp.var Flapjack.VarKind.local "data_cost", Flapjack.Exp.var Flapjack.VarKind.local "access_list_cost",
    Flapjack.Exp.var Flapjack.VarKind.local "auth_regular_gas"]) globalBody346_27

def globalBody346_29 : Prog (BitVec 64) :=
.dec ("base_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.const 12000#64, Flapjack.Exp.var Flapjack.VarKind.local "recipient_regular_gas"]) globalBody346_28

def globalBody346_30 : Prog (BitVec 64) :=
.dec ("total_floor_tokens") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "floor_tokens_in_calldata",
    Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_access_list"]) globalBody346_29

def globalBody346_31 : Prog (BitVec 64) :=
.dec ("floor_tokens_in_calldata") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "data_n", Flapjack.Exp.const 4#64]) globalBody346_30

def globalBody346_32 : Prog (BitVec 64) :=
.seq globalBody346_25 globalBody346_31

def globalBody346_33 : Prog (BitVec 64) :=
.dec ("auth_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody346_32

def globalBody346_34 : Prog (BitVec 64) :=
.seq globalBody346_23 globalBody346_33

def globalBody346_35 : Prog (BitVec 64) :=
.dec ("tokens_in_access_list") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody346_34

def globalBody346_36 : Prog (BitVec 64) :=
.dec ("access_list_cost") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody346_35

def globalBody346_37 : Prog (BitVec 64) :=
.seq globalBody346_10 globalBody346_36

def globalBody346_38 : Prog (BitVec 64) :=
.dec ("init_code_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody346_37

def globalBody346_39 : Prog (BitVec 64) :=
.dec ("recipient_regular_gas") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody346_38

def globalBody346_40 : Prog (BitVec 64) :=
.decCall ("value_zero") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]) globalBody346_39

def globalBody346_41 : Prog (BitVec 64) :=
.dec ("to") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64])) globalBody346_40

def globalBody346_42 : Prog (BitVec 64) :=
.dec ("data_cost") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "tokens_in_calldata", Flapjack.Exp.const 4#64]) globalBody346_41

def globalBody346_43 : Prog (BitVec 64) :=
.decCall ("tokens_in_calldata") (Flapjack.Shape.one) ("count_tokens_in_data") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "data_n"]) globalBody346_42

def globalBody346_44 : Prog (BitVec 64) :=
.dec ("data_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64])) globalBody346_43

def globalBody346_45 : Prog (BitVec 64) :=
.dec ("data") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64])) globalBody346_44

def globalData346 : Decl (BitVec 64) :=
.function { name := "calculate_intrinsic_cost", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := globalBody346_45, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput346 := Pancake.PanLang.declToHOL globalData346
end InitECandidate.Proofs.FrontendStages.Declarations
